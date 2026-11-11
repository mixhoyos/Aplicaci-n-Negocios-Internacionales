# Aplicación · Pregrado de Negocios Internacionales

Aplicación en **Streamlit** conectada a una base de datos **Oracle** con la información académica del pregrado de Negocios Internacionales de la Universidad EAFIT: plan de estudios, asignaturas, profesores, estudiantes y kardex (notas).

Proyecto final del curso **Introducción a la Inteligencia de Negocios** · Miguel Hoyos.

## Contenido del repositorio

| Archivo | Qué es |
|---|---|
| `01_DDL_negocios.sql` | Estructura de las tablas (documental: las tablas ya existían desde el proyecto de Contaduría). Incluye la columna nueva `pf_nombre` en PROFESOR. |
| `04_DML_negocios.sql` | Datos: programa, plan, 54 asignaturas obligatorias, 78 profesores y 90 estudiantes. |
| `07_kardex_negocios.sql` | Datos del kardex (3.400 registros) y 9 docentes de otros departamentos. Va aparte por su tamaño. |
| `08_queries_negocios.sql` | Seis consultas de análisis del pregrado. |
| `app_ni.py` | La aplicación de Streamlit. |
| `Condiciones_DB_negocios.docx` | Documento de condiciones: diagrama, reglas de negocio y descripción de cada tabla. |

## Modelo de datos

Modelo en estrella: **KARDEX** es la tabla de hechos (un estudiante cursa una asignatura con un profesor en un semestre) y **PROFESOR**, **ESTUDIANTE** y **ASIGNATURA** son sus dimensiones. **PLAN** y **PROGRAMA** describen a los estudiantes y las asignaturas. Las tablas son compartidas con Contaduría Pública; los datos de Negocios Internacionales corresponden al programa 1 y al plan 21.

## Orden de ejecución en Oracle

1. `01_DDL_negocios.sql` solo si se crea la base desde cero (en la base del curso las tablas ya existen).
2. `04_DML_negocios.sql`
3. `07_kardex_negocios.sql`

Los archivos de datos ya fueron ejecutados en la base del curso; volver a correrlos duplica los registros.

## Cómo correr la app

1. Instalar las librerías: `pip install oracledb pandas streamlit`
2. Crear el archivo `.streamlit/secrets.toml` con las credenciales propias (este archivo **no** está en el repositorio):

   ```toml
   [oracle]
   user = "tu_usuario"
   password = "tu_contraseña"
   dsn = "tu_servicio_low"
   lib_dir = "ruta/al/instantclient"                  # solo Windows (modo thick)
   config_dir = "ruta/al/instantclient/network/admin" # carpeta del wallet
   ```

3. En la terminal: `streamlit run app_ni.py`

La app tiene una página por tabla (con conteo, vista previa y gráfico), una página de **Análisis** con las seis preguntas del pregrado y una página para escribir consultas SQL libres.

## Origen de los datos

- **Reales:** el plan de estudios (Resolución 018306 del Ministerio de Educación, 164 créditos), sus 54 asignaturas obligatorias, y los nombres de los profesores con las materias que dicta cada uno.
- **Simulados:** el tipo de contrato, escalafón, categoría Minciencias, títulos y fechas de los profesores; los 90 estudiantes; y las notas del kardex. Los resultados de los análisis que usan estos datos sirven para mostrar el método, no describen el pregrado real.
