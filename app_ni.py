# Importamos librerías
import oracledb
import pandas as pd
import streamlit as st

# Configuramos la página
st.set_page_config(page_title = "Negocios Internacionales", layout = "wide")

#ESQUEMA es el nombre de usuario de la base de datos
ESQUEMA = "miguehoyos"

#TABLAS contiene una lista con los nombres de las tablas de la bd
TABLAS = ["asignatura", "estudiante", "kardex", "plan", "profesor", "programa"]

#FILTROS: para cada tabla, el WHERE que deja solo los datos de Negocios Internacionales
FILTROS = {
    "programa":   "WHERE pr_id_programas = 1",
    "plan":       "WHERE p_id_planes = 21",
    "asignatura": "WHERE a_id_planes = 21",
    "estudiante": "WHERE e_id_planes = 21",
    "profesor":   "WHERE pf_id_profesores BETWEEN 101 AND 187",
    "kardex":     "WHERE k_id_estudiantes BETWEEN 1001 AND 1090",
}

#CONSULTAS: las preguntas de análisis. Cada una tiene una explicación, su SQL y, si aplica, el gráfico (eje x, eje y)
CONSULTAS = {
    "1. ¿Qué profesores dictan cada materia?": {
        "explicacion": "Para cada materia obligatoria del pregrado, los profesores que la dictan (datos reales de la programación).",
        "sql": """SELECT a.a_nombre AS materia,
                         LISTAGG(DISTINCT p.pf_nombre, ', ') WITHIN GROUP (ORDER BY p.pf_nombre) AS profesores
                  FROM kardex k
                  JOIN asignatura a ON a.a_id_asignaturas = k.k_id_asignaturas
                  JOIN profesor p   ON p.pf_id_profesores = k.k_id_profesores
                  WHERE a.a_id_planes = 21 AND p.pf_id_profesores BETWEEN 101 AND 178
                  GROUP BY a.a_nombre
                  ORDER BY a.a_nombre""",
        "grafico": None,
    },
    "2. ¿Qué materias tienen más reprobación?": {
        "explicacion": "Las 10 materias con mayor porcentaje de estudiantes reprobados (notas simuladas).",
        "sql": """SELECT a.a_nombre AS materia,
                         COUNT(*) AS calificados,
                         SUM(CASE WHEN k.k_estado = 'REPROBADA' THEN 1 ELSE 0 END) AS reprobados,
                         ROUND(100 * SUM(CASE WHEN k.k_estado = 'REPROBADA' THEN 1 ELSE 0 END) / COUNT(*), 1) AS tasa_reprobacion
                  FROM kardex k
                  JOIN asignatura a ON a.a_id_asignaturas = k.k_id_asignaturas
                  WHERE a.a_id_planes = 21 AND k.k_estado IN ('APROBADA', 'REPROBADA')
                  GROUP BY a.a_nombre
                  ORDER BY tasa_reprobacion DESC
                  FETCH FIRST 10 ROWS ONLY""",
        "grafico": ("MATERIA", "TASA_REPROBACION"),
    },
    "3. ¿El escalafón del profesor influye en las notas?": {
        "explicacion": "Promedio de las notas puestas por los profesores de cada escalafón (escalafón y notas simulados).",
        "sql": """SELECT p.pf_escalafon AS escalafon,
                         COUNT(DISTINCT p.pf_id_profesores) AS profesores,
                         COUNT(*) AS notas,
                         ROUND(AVG(k.k_notas), 2) AS promedio_notas
                  FROM kardex k
                  JOIN profesor p ON p.pf_id_profesores = k.k_id_profesores
                  WHERE p.pf_id_profesores BETWEEN 101 AND 178 AND k.k_notas IS NOT NULL
                  GROUP BY p.pf_escalafon
                  ORDER BY promedio_notas DESC""",
        "grafico": ("ESCALAFON", "PROMEDIO_NOTAS"),
    },
    "4. ¿Cuántos estudiantes están en riesgo académico?": {
        "explicacion": "Estudiantes matriculados según su promedio: Excelente (4 o más), Bueno (3,5 a 4) y En riesgo (menos de 3,5). Datos simulados.",
        "sql": """SELECT CASE WHEN e_promedio_acumulado >= 4   THEN 'Excelente'
                              WHEN e_promedio_acumulado >= 3.5 THEN 'Bueno'
                              ELSE 'En riesgo' END AS categoria,
                         COUNT(*) AS estudiantes
                  FROM estudiante
                  WHERE e_id_planes = 21 AND e_estado = 'Matriculado'
                  GROUP BY CASE WHEN e_promedio_acumulado >= 4   THEN 'Excelente'
                                WHEN e_promedio_acumulado >= 3.5 THEN 'Bueno'
                                ELSE 'En riesgo' END
                  ORDER BY estudiantes DESC""",
        "grafico": ("CATEGORIA", "ESTUDIANTES"),
    },
    "5. ¿Cuántas materias dicta cada profesor?": {
        "explicacion": "Carga de cada profesor en las materias obligatorias (parejas profesor-materia reales; el tipo de contrato es simulado).",
        "sql": """SELECT p.pf_nombre AS profesor,
                         p.pf_tipo_contrato AS contrato,
                         COUNT(DISTINCT k.k_id_asignaturas) AS materias,
                         LISTAGG(DISTINCT a.a_nombre, ', ') WITHIN GROUP (ORDER BY a.a_nombre) AS cuales
                  FROM kardex k
                  JOIN profesor p   ON p.pf_id_profesores = k.k_id_profesores
                  JOIN asignatura a ON a.a_id_asignaturas = k.k_id_asignaturas
                  WHERE p.pf_id_profesores BETWEEN 101 AND 178
                  GROUP BY p.pf_nombre, p.pf_tipo_contrato
                  ORDER BY materias DESC, profesor""",
        "grafico": None,
    },
    "6. ¿El estrato de origen se relaciona con el rendimiento?": {
        "explicacion": "Promedio acumulado y Saber 11 de los estudiantes según el estrato de la vivienda de origen (datos simulados).",
        "sql": """SELECT e_estrato_vivienda_origen AS estrato,
                         COUNT(*) AS estudiantes,
                         ROUND(AVG(e_promedio_acumulado), 2) AS promedio,
                         ROUND(AVG(e_saber_once), 0) AS saber_once_promedio
                  FROM estudiante
                  WHERE e_id_planes = 21
                  GROUP BY e_estrato_vivienda_origen
                  ORDER BY estrato""",
        "grafico": ("ESTRATO", "PROMEDIO"),
    },
}


#---------------------1. Conexión ------------------------------------

@st.cache_resource
#Creamos una función que se llama conectar

def conectar():
    s = st.secrets["oracle"]
    if "lib_dir" in s:
        oracledb.init_oracle_client(lib_dir = s["lib_dir"], config_dir = s["config_dir"])
        return oracledb.connect(user = s["user"], password = s["password"], dsn = s["dsn"])
    return oracledb.connect(
        user = s["user"], password = s["password"], dsn = s["dsn"],
        config = s["config"], wallet_location = s["config_dir"],
        wallet_password = s["wallet_password"])

#Hacemos la conexión. Si Oracle cerró la conexión guardada, se crea una nueva.
conn = conectar()
try:
    conn.ping()
except Exception:
    st.cache_resource.clear()
    conn = conectar()

#Si Oracle tarda más de 15 segundos en responder, se muestra un error en vez de quedarse esperando
conn.call_timeout = 15000

#------------------ 2. Funciones para interactuar con la bd -------------------------------
def consultar(sql, params = None):
    return pd.read_sql(sql, conn, params = params)

# Función para insertar datos o modificar los que hay
def modificar(sql):
    cur = conn.cursor()
    try:
        cur.execute(sql)
        conn.commit()
        return cur.rowcount
    except Exception:
        conn.rollback()
        raise

# ------------------------------ 3. Menú ---------------------------------------
pagina = st.sidebar.radio("Menú", TABLAS + ["Análisis", "Consultas SQL"])


# -------------------- 4. Una página por cada tabla -------------------------------
if pagina in TABLAS:
    st.title(pagina.capitalize())

    # Filtro de la tabla elegida (solo datos de Negocios Internacionales)
    filtro = FILTROS[pagina]

    # KPI: el conteo que hace oracle de la consulta
    total = consultar(f"SELECT COUNT (*) AS TOTAL FROM {ESQUEMA}.{pagina} {filtro}")["TOTAL"][0]
    st.metric("Total de registros: ", total)

    #Vista previa: mostramos las primeras filas de cada tabla
    filas=st.slider("Filas a mostrar ", 5, 100, 10)
    datos= consultar (f"SELECT * FROM {ESQUEMA}.{pagina} {filtro} FETCH FIRST {filas} ROWS ONLY")
    st.dataframe (datos)

    #Grafico: elegir columna para graficar
    if len (datos.columns)>0:
        columna=st.selectbox ("Contar registros por ", datos.columns)

        grafico = consultar(f"SELECT {columna} AS GRUPO, COUNT(*) AS CANTIDAD "
                            f"FROM {ESQUEMA}.{pagina} {filtro} GROUP BY {columna}")

        st.bar_chart(grafico, x = "GRUPO", y = "CANTIDAD")

#--------------------5. Análisis: las preguntas del pregrado ------------------------

elif pagina == "Análisis":
    st.title("Análisis del pregrado")
    st.caption("Las notas, los promedios, el escalafón y el tipo de contrato son datos simulados. "
               "Las parejas profesor-materia son reales.")

    #El usuario elige la pregunta
    pregunta = st.selectbox("Elige una pregunta", list(CONSULTAS.keys()))
    c = CONSULTAS[pregunta]

    st.write(c["explicacion"])
    resultado = consultar(c["sql"])
    st.dataframe(resultado, hide_index = True)

    #Si la pregunta tiene gráfico, se dibuja con las dos columnas indicadas
    if c["grafico"]:
        eje_x, eje_y = c["grafico"]
        st.bar_chart(resultado, x = eje_x, y = eje_y)

    #Para quien quiera aprender: el SQL que se ejecutó
    with st.expander("Ver el SQL de esta consulta"):
        st.code(c["sql"], language = "sql")

#--------------------6. Consultas libres------------------------

else:
    st.title("Consultas SQL")
    st.write (f"Recuerda escribir el esquema: {ESQUEMA}.estudiante")

    sql = st.text_area ("Escriba la consulta SQL (sin punto y coma)", height = 150)
    tipo = st.radio ("Tipo", ["SELECT (leer)", "INSERT / UPDATE / DELETE (modificar)"])

    if st.button("Ejecutar") and sql.strip():
        try:
            if tipo.startswith ("SELECT"):
                st.dataframe(consultar(sql))
            else:
                n = modificar(sql)
                st.success (f"Listo, filas afectadas: {n}")
        except Exception as e:
            st.error(e)