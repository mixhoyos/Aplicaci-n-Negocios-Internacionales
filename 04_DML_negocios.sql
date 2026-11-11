-- =====================================================
-- DML NEGOCIOS INTERNACIONALES
-- Programa id = 1  ·  Plan id = 21
-- Orden de ejecución: este archivo primero y después 07_kardex_negocios.sql
-- (el kardex necesita que ya existan asignaturas, profesores y estudiantes).
-- Todo este archivo YA FUE EJECUTADO; no volver a correrlo o se duplican los datos.
-- =====================================================

-- ------------------ PROGRAMA ------------------
INSERT INTO programa (pr_nombre, pr_escuela, pr_creditos)
VALUES ('Negocios Internacionales', 'administración', 164);

-- -------------------- PLAN --------------------
-- Resolución 018306 del Ministerio de Educación (28/09/2021), 164 créditos.
INSERT INTO plan (
    p_resolucion_ministerio, p_fecha_radicacion, p_fecha_entrada_vigencia,
    p_creditos_disciplinares, p_creditos_interdisciplinares, p_creditos_tronco_comun,
    p_creditos_flexibles, p_creditos_practica, p_creditos_nucleo_institucional,
    p_creditos_total, p_estado
)
VALUES (
    'Res 018306', DATE '2021-09-28', DATE '2022-01-16',
    72, 34, 0,
    21, 18, 19,
    164, 'VIGENTE'
);

COMMIT;

-- ----------------- ASIGNATURAS -----------------
-- 54 obligatorias del plan 21. Tipología según el código del catálogo:
--   NI -> DISCIPLINAR; BU, LE, TA -> NUCLEO INSTITUCIONAL; PT -> PRACTICA; demás -> INTERDISCIPLINAR

-- ---- Obligatorios - Primer Semestre (9 asignaturas) ----
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Inducción', 0, 'NUCLEO INSTITUCIONAL', 'VIGENTE');   -- BU0008
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Bienestar Universitario', 1, 'NUCLEO INSTITUCIONAL', 'VIGENTE');   -- BU0011
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Taller de Salud', 0, 'NUCLEO INSTITUCIONAL', 'VIGENTE');   -- BU0600
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Matemáticas 1', 3, 'INTERDISCIPLINAR', 'VIGENTE');   -- CM0211
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Economía', 3, 'INTERDISCIPLINAR', 'VIGENTE');   -- EC0418
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Negocios Internacionales', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0104
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Proyecto 0: Aprendizaje activo', 1, 'DISCIPLINAR', 'VIGENTE');   -- NI0310
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Búsqueda de información', 1, 'DISCIPLINAR', 'VIGENTE');   -- NI0311
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Administración y Estrategia', 3, 'INTERDISCIPLINAR', 'VIGENTE');   -- OG0360

-- ---- Obligatorios - Segundo Semestre (8 asignaturas) ----
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Matemáticas 2', 3, 'INTERDISCIPLINAR', 'VIGENTE');   -- CM0212
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Información financiera y de costos para la toma de decisiones', 3, 'INTERDISCIPLINAR', 'VIGENTE');   -- CO0342
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Prueba de Lectura 1', 0, 'NUCLEO INSTITUCIONAL', 'VIGENTE');   -- LE0001
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Prueba de Escritura 1', 0, 'NUCLEO INSTITUCIONAL', 'VIGENTE');   -- LE0002
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Mercadeo Internacional', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0100
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Comunicación intercultural', 2, 'DISCIPLINAR', 'VIGENTE');   -- NI0312
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Proyecto 1: Laboratorio de culturas', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0313
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Gestión de la información', 1, 'DISCIPLINAR', 'VIGENTE');   -- NI0314

-- ---- Obligatorios - Tercer Semestre (7 asignaturas) ----
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Economía del Comercio Internacional', 3, 'INTERDISCIPLINAR', 'VIGENTE');   -- EC0421
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Fundamentos de Finanzas', 3, 'INTERDISCIPLINAR', 'VIGENTE');   -- FI0138
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Pensamiento Histórico de los Negocios Internacionales', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0316
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Derecho del Comercio Internacional', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0317
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Presentaciones Efectivas', 1, 'DISCIPLINAR', 'VIGENTE');   -- NI0318
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Proyecto 2: Selección de Mercados Internacionales', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0319
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Talento I - Escuela de Administración', 0, 'NUCLEO INSTITUCIONAL', 'VIGENTE');   -- TA2001

-- ---- Obligatorios - Cuarto Semestre (8 asignaturas) ----
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Prueba de Lectura 2', 0, 'NUCLEO INSTITUCIONAL', 'VIGENTE');   -- LE0003
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Prueba de Escritura 2', 0, 'NUCLEO INSTITUCIONAL', 'VIGENTE');   -- LE0004
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Gestión de la Distribución Física Internacional 1', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0320
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Análisis Geopolítico', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0321
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Comunicación Escrita', 1, 'DISCIPLINAR', 'VIGENTE');   -- NI0322
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Proyecto 3: Integración Económica y Acceso a Mercados', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0323
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Estadística Aplicada a los Negocios', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0324
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Formulación y Evaluación de Proyectos', 3, 'INTERDISCIPLINAR', 'VIGENTE');   -- OG0368

-- ---- Obligatorios - Quinto Semestre (6 asignaturas) ----
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Finanzas Internacionales', 3, 'INTERDISCIPLINAR', 'VIGENTE');   -- FI0224
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Gerencia Comercial Internacional', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0251
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Introducción a estudios internacionales', 2, 'DISCIPLINAR', 'VIGENTE');   -- NI0325
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Legislación de comercio exterior 1', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0326
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Programación para los negocios', 1, 'DISCIPLINAR', 'VIGENTE');   -- NI0327
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Proyecto 4: Organizaciones Intergubernamentales', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0328

-- ---- Obligatorios - Sexto Semestre (6 asignaturas) ----
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Analítica de Negocios', 3, 'INTERDISCIPLINAR', 'VIGENTE');   -- CO0371
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Gestión Intercultural', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0299
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Estrategia Internacional', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0329
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Gestión de la Cadena de Suministro Global 1', 2, 'DISCIPLINAR', 'VIGENTE');   -- NI0330
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Protocolo Empresarial', 1, 'DISCIPLINAR', 'VIGENTE');   -- NI0331
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Proyecto 5: Cadenas de Suministro Globales', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0332

-- ---- Obligatorios - Séptimo Semestre (5 asignaturas) ----
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Negociación de Contratos Internacionales', 2, 'DISCIPLINAR', 'VIGENTE');   -- NI0333
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Laboratorio Multilingüe', 1, 'DISCIPLINAR', 'VIGENTE');   -- NI0334
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Proyecto 6: Plan de Internacionalización', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0335
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Competencias Evaluativas', 1, 'INTERDISCIPLINAR', 'VIGENTE');   -- OG0370
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Talento II - Escuela de Administración', 0, 'NUCLEO INSTITUCIONAL', 'VIGENTE');   -- TA4001

-- ---- Obligatorios - Octavo Semestre (1 asignatura) ----
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Período de Práctica (Negocios Internacionales Reforma)', 18, 'PRACTICA', 'VIGENTE');   -- PT0191

-- ---- Obligatorios - Noveno Semestre (4 asignaturas) ----
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Negociación Internacional', 2, 'DISCIPLINAR', 'VIGENTE');   -- NI0336
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Gerencia Internacional', 3, 'DISCIPLINAR', 'VIGENTE');   -- NI0337
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Proyecto EA', 2, 'INTERDISCIPLINAR', 'VIGENTE');   -- OG0372
INSERT INTO asignatura (a_id_planes, a_nombre, a_numero_creditos, a_tipologia, a_estado)
VALUES (21, 'Seminario Internacional', 1, 'INTERDISCIPLINAR', 'VIGENTE');   -- OG0373

COMMIT;

-- Cambio de estructura (DDL): se agrega la columna del nombre del profesor
ALTER TABLE profesor ADD pf_nombre VARCHAR2(100);

-- ----------------- PROFESORES -----------------
-- Nombres y número de materias: reales (programación del pregrado).
-- Contrato, escalafón, Minciencias, títulos, fechas y estado: DATOS SIMULADOS.
-- Ids asignados a mano del 101 al 178.

INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (101, 'Alejandro Jalil Ramirez', 'Tiempo completo', 'Asociado', 'Junior', 'Comunicación Social', 'Maestría', DATE '2017-01-15', 'Activo');   -- 4 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (102, 'Alejandro Velez Acevedo', 'Cátedra', 'III', NULL, 'Ciencia Política', 'Especialización', DATE '2023-01-13', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (103, 'Alexander Balzan', 'Tiempo completo', 'Asistente', 'Junior', 'Ciencia Política', 'Doctorado', DATE '2020-01-22', 'Activo');   -- 6 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (104, 'Andres Velez Calle', 'Cátedra', 'I', NULL, 'Negocios Internacionales', 'Especialización', DATE '2014-01-11', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (105, 'Angela Maria Vanegas Perez', 'Cátedra', 'I', NULL, 'Economía', 'Maestría', DATE '2023-01-24', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (106, 'Beatriz Eugenia Yepes Ríos', 'Cátedra', 'I', NULL, 'Negocios Internacionales', 'Especialización', DATE '2017-07-25', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (107, 'Camilo Franco Ruiz', 'Cátedra', 'I', NULL, 'Lenguas Modernas', 'Maestría', DATE '2024-07-23', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (108, 'Carlos Esteban Duque Bolivar', 'Cátedra', 'I', NULL, 'Comunicación Social', 'Especialización', DATE '2018-07-17', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (109, 'Carlos Henrique Torres Muskus', 'Medio tiempo', 'Auxiliar', NULL, 'Negocios Internacionales', 'Maestría', DATE '2021-01-22', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (110, 'Carolina Ardila Lopez', 'Cátedra', 'III', NULL, 'Administración de Empresas', 'Maestría', DATE '2014-01-16', 'Activo');   -- 3 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (111, 'Carolina Rios Molina', 'Cátedra', 'I', NULL, 'Negocios Internacionales', 'Maestría', DATE '2020-07-23', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (112, 'Daniel Giraldo Mayo', 'Cátedra', 'I', NULL, 'Administración de Empresas', 'Especialización', DATE '2018-07-12', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (113, 'Daniel Mateo Puyo Velasquez', 'Cátedra', 'II', NULL, 'Administración de Empresas', 'Maestría', DATE '2020-01-14', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (114, 'Daniel Velasquez Restrepo', 'Cátedra', 'I', NULL, 'Negocios Internacionales', 'Maestría', DATE '2014-07-25', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (115, 'Daniel Velez Diez', 'Cátedra', 'I', NULL, 'Derecho', 'Maestría', DATE '2022-01-14', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (116, 'Daniela del Carmen Acosta Arango', 'Tiempo completo', 'Titular', 'Junior', 'Negocios Internacionales', 'Doctorado', DATE '2015-07-16', 'Activo');   -- 8 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (117, 'Diana Marcela Nieto Ramirez', 'Medio tiempo', 'Asistente', NULL, 'Economía', 'Maestría', DATE '2012-01-15', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (118, 'Edward Andres Tamayo Duque', 'Tiempo completo', 'Asociado', NULL, 'Ciencia Política', 'Maestría', DATE '2004-01-16', 'Activo');   -- 4 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (119, 'Edwin Andres Jimenez Echeverri', 'Medio tiempo', 'Asistente', NULL, 'Negocios Internacionales', 'Maestría', DATE '2016-07-12', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (120, 'Elder Mauricio Perlaza Vargas', 'Medio tiempo', 'Auxiliar', NULL, 'Ciencia Política', 'Maestría', DATE '2012-07-21', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (121, 'Elkin Fernando Carmona Parra', 'Tiempo completo', 'Asistente', 'Junior', 'Negocios Internacionales', 'Maestría', DATE '2021-01-22', 'Activo');   -- 5 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (122, 'Eric Marvin Myers', 'Cátedra', 'II', NULL, 'Negocios Internacionales', 'Maestría', DATE '2023-01-16', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (123, 'Esteban Suárez Henao', 'Cátedra', 'I', NULL, 'Derecho', 'Especialización', DATE '2020-07-12', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (124, 'Estefania Zuluaga Quintero', 'Tiempo completo', 'Auxiliar', 'Senior', 'Administración de Empresas', 'Doctorado', DATE '2011-01-22', 'Activo');   -- 3 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (125, 'Fabian Heli Agudelo Castillo', 'Tiempo completo', 'Asociado', 'Junior', 'Negocios Internacionales', 'Maestría', DATE '2012-01-12', 'Activo');   -- 4 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (126, 'Felipe Mosquera Muñoz', 'Tiempo completo', 'Asociado', NULL, 'Negocios Internacionales', 'Maestría', DATE '2011-01-16', 'Activo');   -- 3 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (127, 'Felipe Sierra Madrid', 'Tiempo completo', 'Asociado', 'Junior', 'Administración de Empresas', 'Doctorado', DATE '2004-01-15', 'Activo');   -- 3 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (128, 'Hans Joseph Rausch Restrepo', 'Medio tiempo', 'Auxiliar', NULL, 'Ciencia Política', 'Maestría', DATE '2013-07-14', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (129, 'Heiko Marc Schmidt', 'Cátedra', 'II', NULL, 'Negocios Internacionales', 'Especialización', DATE '2025-01-11', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (130, 'Hernán Darío Villada Medina', 'Tiempo completo', 'Asistente', 'Junior', 'Ingeniería Industrial', 'Maestría', DATE '2004-01-12', 'Activo');   -- 3 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (131, 'Ingrid Joana Restrepo Valencia', 'Cátedra', 'I', NULL, 'Negocios Internacionales', 'Especialización', DATE '2018-07-14', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (132, 'Isabel Cristina Arias Villa', 'Cátedra', 'I', NULL, 'Negocios Internacionales', 'Maestría', DATE '2022-07-11', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (133, 'Jaime Alberto Zuñiga Raigoza', 'Tiempo completo', 'Asistente', 'Junior', 'Negocios Internacionales', 'Doctorado', DATE '2018-01-23', 'Activo');   -- 9 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (134, 'Jaime Andres Espinal Ortiz', 'Tiempo completo', 'Asociado', NULL, 'Negocios Internacionales', 'Maestría', DATE '2022-07-22', 'Activo');   -- 4 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (135, 'Jaime Andrés Ortiz Arango', 'Tiempo completo', 'Asociado', 'Junior', 'Derecho', 'Doctorado', DATE '2005-01-18', 'Activo');   -- 6 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (136, 'Jessica Villareal Escobar', 'Cátedra', 'III', NULL, 'Ciencia Política', 'Especialización', DATE '2025-07-24', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (137, 'Jesus Eduardo Briñez Vera', 'Cátedra', 'I', NULL, 'Negocios Internacionales', 'Especialización', DATE '2022-01-19', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (138, 'Jorge Andres Cardenas Giraldo', 'Tiempo completo', 'Asistente', NULL, 'Negocios Internacionales', 'Maestría', DATE '2018-07-18', 'Activo');   -- 3 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (139, 'Jorge Mario Giraldo Diaz', 'Cátedra', 'II', NULL, 'Economía', 'Maestría', DATE '2016-01-15', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (140, 'Joshua John Henry Large', 'Cátedra', 'III', NULL, 'Administración de Empresas', 'Maestría', DATE '2017-07-22', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (141, 'Juan Camilo Bolivar Sanchez', 'Tiempo completo', 'Asociado', 'Junior', 'Administración de Empresas', 'Doctorado', DATE '2015-01-20', 'Activo');   -- 3 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (142, 'Juan Camilo Osorio Gonzalez', 'Cátedra', 'I', NULL, 'Negocios Internacionales', 'Maestría', DATE '2021-07-11', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (143, 'Juan Camilo Vila Castro', 'Tiempo completo', 'Asistente', 'Junior', 'Administración de Empresas', 'Doctorado', DATE '2017-07-18', 'Activo');   -- 4 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (144, 'Juan Carlos Diaz Vasquez', 'Tiempo completo', 'Asociado', 'Senior', 'Ciencia Política', 'Doctorado', DATE '2019-07-20', 'Activo');   -- 6 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (145, 'Juan Carlos Massey Hurtado', 'Tiempo completo', 'Asistente', 'Junior', 'Economía', 'Doctorado', DATE '2011-01-18', 'Activo');   -- 4 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (146, 'Juan David Escobar Valencia', 'Cátedra', 'II', NULL, 'Economía', 'Especialización', DATE '2023-01-14', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (147, 'Juan Felipe Castaño Aristizabal', 'Cátedra', 'I', NULL, 'Negocios Internacionales', 'Maestría', DATE '2017-01-11', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (148, 'Juan Manuel Jaime Tobon', 'Tiempo completo', 'Asociado', 'Senior', 'Administración de Empresas', 'Doctorado', DATE '2020-07-12', 'Activo');   -- 4 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (149, 'Juan Pablo Valderrama Echavarria', 'Medio tiempo', 'Asistente', NULL, 'Ingeniería Industrial', 'Maestría', DATE '2016-01-10', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (150, 'Juliana Bustamante Uribe', 'Cátedra', 'I', NULL, 'Lenguas Modernas', 'Maestría', DATE '2017-07-21', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (151, 'Juliana Correa Jaramillo', 'Cátedra', 'I', NULL, 'Derecho', 'Maestría', DATE '2025-01-12', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (152, 'Julio Cesar Arias Castaño', 'Cátedra', 'III', NULL, 'Negocios Internacionales', 'Maestría', DATE '2021-07-16', 'Activo');   -- 3 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (153, 'Karen Alexa Barco Lopez', 'Cátedra', 'III', NULL, 'Economía', 'Especialización', DATE '2023-07-24', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (154, 'Laura Cristina Arredondo Velez', 'Cátedra', 'I', NULL, 'Administración de Empresas', 'Maestría', DATE '2025-01-16', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (155, 'Laura Juliana Zabala Velez', 'Cátedra', 'I', NULL, 'Negocios Internacionales', 'Maestría', DATE '2022-07-18', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (156, 'Luis Gerardo Pachon Ospina', 'Medio tiempo', 'Auxiliar', NULL, 'Lenguas Modernas', 'Maestría', DATE '2012-07-20', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (157, 'Luis Miguel Bolivar Caro', 'Tiempo completo', 'Asociado', 'Asociado', 'Derecho', 'Doctorado', DATE '2003-01-12', 'Activo');   -- 6 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (158, 'Luz Adriana Villa Agudelo', 'Tiempo completo', 'Auxiliar', 'Senior', 'Negocios Internacionales', 'Doctorado', DATE '2013-01-25', 'Activo');   -- 5 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (159, 'Luz Angela Sucerquia Vega', 'Tiempo completo', 'Asociado', 'Junior', 'Ciencia Política', 'Maestría', DATE '2018-01-17', 'Activo');   -- 4 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (160, 'Luz Nora Mesa Agudelo', 'Tiempo completo', 'Asistente', NULL, 'Economía', 'Maestría', DATE '2019-07-19', 'Activo');   -- 3 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (161, 'Manuel Ignacio Restrepo Morantes', 'Tiempo completo', 'Asociado', 'Asociado', 'Administración de Empresas', 'Doctorado', DATE '2007-07-25', 'Activo');   -- 4 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (162, 'Maria Adelaida Henao Cañas', 'Tiempo completo', 'Asociado', NULL, 'Negocios Internacionales', 'Maestría', DATE '2019-01-22', 'Activo');   -- 10 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (163, 'Maria Alejandra Calle Saldarriaga', 'Tiempo completo', 'Asociado', 'Senior', 'Negocios Internacionales', 'Doctorado', DATE '2015-01-25', 'Activo');   -- 4 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (164, 'Maria Alejandra Gonzalez Perez', 'Cátedra', 'I', NULL, 'Administración de Empresas', 'Especialización', DATE '2021-07-22', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (165, 'Maria Alejandra Jaramillo Serna', 'Tiempo completo', 'Asociado', 'Asociado', 'Negocios Internacionales', 'Doctorado', DATE '2016-07-20', 'Activo');   -- 3 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (166, 'Maria Alexandra Guerra Aranguren', 'Medio tiempo', 'Auxiliar', NULL, 'Negocios Internacionales', 'Maestría', DATE '2016-01-10', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (167, 'Maria Teresa Vasquez Melo', 'Tiempo completo', 'Asistente', 'Senior', 'Administración de Empresas', 'Doctorado', DATE '2012-07-21', 'Activo');   -- 3 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (168, 'Mauricio Londoño Gonzalez', 'Cátedra', 'I', NULL, 'Administración de Empresas', 'Maestría', DATE '2025-01-18', 'Activo');   -- 3 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (169, 'Nathalia Velez Velasquez', 'Cátedra', 'III', NULL, 'Lenguas Modernas', 'Maestría', DATE '2020-07-15', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (170, 'Paola Andrea Caballero Rosas', 'Cátedra', 'I', NULL, 'Lenguas Modernas', 'Especialización', DATE '2022-01-16', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (171, 'Sandra Milena Santamaria Alvarez', 'Cátedra', 'I', NULL, 'Economía', 'Maestría', DATE '2025-07-15', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (172, 'Santiago Sosa Noreña', 'Cátedra', 'I', NULL, 'Administración de Empresas', 'Maestría', DATE '2017-01-14', 'Activo');   -- 3 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (173, 'Sara Isabel Marin Zapata', 'Tiempo completo', 'Auxiliar', 'Asociado', 'Lenguas Modernas', 'Doctorado', DATE '2006-07-23', 'Activo');   -- 3 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (174, 'Sebastian Hurtado Correa', 'Cátedra', 'I', NULL, 'Administración de Empresas', 'Maestría', DATE '2020-01-13', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (175, 'Sergi Casals Rispau', 'Cátedra', 'II', NULL, 'Negocios Internacionales', 'Maestría', DATE '2015-07-16', 'Activo');   -- 2 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (176, 'Tomas Urbina Escobar', 'Tiempo completo', 'Asociado', 'Junior', 'Administración de Empresas', 'Doctorado', DATE '2004-07-14', 'Activo');   -- 4 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (177, 'Vladimir de Jesus Castaño Molina', 'Cátedra', 'I', NULL, 'Administración de Empresas', 'Maestría', DATE '2017-01-15', 'Activo');   -- 1 materia(s)
INSERT INTO profesor (pf_id_profesores, pf_nombre, pf_tipo_contrato, pf_escalafon, pf_categoria_minciencias, pf_titulo_profesional, pf_maximo_titulo, pf_fecha_ingreso, pf_estado)
VALUES (178, 'Yeison Vargas Montoya', 'Cátedra', 'I', NULL, 'Negocios Internacionales', 'Especialización', DATE '2014-01-24', 'Activo');   -- 1 materia(s)

COMMIT;

-- Para que Oracle siga numerando después del último id cuando se inserte un profesor sin id:
ALTER TABLE profesor MODIFY pf_id_profesores GENERATED BY DEFAULT AS IDENTITY (START WITH LIMIT VALUE);

-- ----------------- ESTUDIANTES (DATOS SIMULADOS) -----------------
-- 90 estudiantes del plan 21 / programa 1, 10 por semestre (1 a 9). Ids 1001 a 1090.
-- El semestre no es una columna: se deduce de la fecha de ingreso (periodo actual 2026-2).

-- ---- Semestre 1 (ingreso 2026-07-21) ----
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1001, 21, 1, DATE '2026-07-21', 'femenino', 'Institución Educativa Javiera Londoño', 5, 'Apartadó', 6, 'Medellín', 340, NULL, NULL, 'Sí', 4.20, 4.15, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1002, 21, 1, DATE '2026-07-21', 'femenino', 'Colegio Montessori', 1, 'Envigado', 1, 'Envigado', 434, NULL, NULL, 'Sí', 3.96, 3.28, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1003, 21, 1, DATE '2026-07-21', 'femenino', 'Colegio Palermo de San José', 6, 'Bogotá', 6, 'Envigado', 293, NULL, NULL, 'Sí', 3.75, 3.34, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1004, 21, 1, DATE '2026-07-21', 'femenino', 'Institución Educativa INEM José Félix de Restrepo', 5, 'Medellín', 5, 'Medellín', 316, NULL, NULL, 'Sí', 4.29, 4.70, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1005, 21, 1, DATE '2026-07-21', 'femenino', 'The Columbus School', 3, 'Medellín', 3, 'Medellín', 405, NULL, NULL, 'Sí', 4.00, 3.80, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1006, 21, 1, DATE '2026-07-21', 'femenino', 'Colegio Cumbres', 4, 'Rionegro', 4, 'Rionegro', 336, NULL, NULL, 'Sí', 3.63, 3.57, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1007, 21, 1, DATE '2026-07-21', 'femenino', 'Colegio San José de La Salle', 4, 'Bucaramanga', 4, 'Medellín', 291, NULL, NULL, 'Sí', 3.71, 2.88, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1008, 21, 1, DATE '2026-07-21', 'femenino', 'Liceo Francés de Medellín', 5, 'Barranquilla', 5, 'Medellín', 427, NULL, NULL, 'Sí', 3.68, 3.31, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1009, 21, 1, DATE '2026-07-21', 'femenino', 'Colegio San Ignacio de Loyola', 5, 'Medellín', 5, 'Medellín', 347, NULL, 'Beca Talento EAFIT', 'No', 4.14, 4.43, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1010, 21, 1, DATE '2026-07-21', 'masculino', 'Institución Educativa INEM José Félix de Restrepo', 5, 'Quibdó', 6, 'Medellín', 326, NULL, NULL, 'Sí', 4.30, 4.06, NULL, 'Matriculado');

-- ---- Semestre 2 (ingreso 2026-01-19) ----
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1011, 21, 1, DATE '2026-01-19', 'masculino', 'Colegio Alemán', 6, 'Medellín', 6, 'Medellín', 326, NULL, NULL, 'Sí', 3.40, 3.67, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1012, 21, 1, DATE '2026-01-19', 'femenino', 'Colegio Benedictino', 4, 'Medellín', 4, 'Medellín', 293, NULL, NULL, 'Sí', 4.28, 4.39, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1013, 21, 1, DATE '2026-01-19', 'masculino', 'Colegio Palermo de San José', 4, 'Medellín', 4, 'Medellín', 320, NULL, NULL, 'Sí', 3.94, 3.87, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1014, 21, 1, DATE '2026-01-19', 'masculino', 'Colegio San José de La Salle', 6, 'Montería', 6, 'Itagüí', 409, NULL, NULL, 'No', 3.77, 4.12, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1015, 21, 1, DATE '2026-01-19', 'femenino', 'Institución Educativa INEM José Félix de Restrepo', 3, 'Medellín', 3, 'Medellín', 352, NULL, NULL, 'Sí', 4.27, 3.95, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1016, 21, 1, DATE '2026-01-19', 'masculino', 'Colegio Theodoro Hertzl', 6, 'Medellín', 6, 'Medellín', 319, NULL, 'Beca Generación E', 'Sí', 4.38, 4.43, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1017, 21, 1, DATE '2026-01-19', 'masculino', 'Colegio La Enseñanza', 3, 'Pereira', 4, 'Medellín', 411, NULL, NULL, 'Sí', 4.28, 4.82, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1018, 21, 1, DATE '2026-01-19', 'masculino', 'Gimnasio Los Pinares', 5, 'Barranquilla', 4, 'Bello', 287, NULL, NULL, 'No', 3.54, 3.77, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1019, 21, 1, DATE '2026-01-19', 'femenino', 'Colegio La Enseñanza', 5, 'Envigado', 5, 'Envigado', 295, NULL, NULL, 'Sí', 3.77, 2.86, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1020, 21, 1, DATE '2026-01-19', 'femenino', 'Colegio La Enseñanza', 5, 'Pereira', 4, 'Envigado', 415, NULL, NULL, 'Sí', 3.62, 3.59, NULL, 'Matriculado');

-- ---- Semestre 3 (ingreso 2025-07-21) ----
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1021, 21, 1, DATE '2025-07-21', 'femenino', 'The Columbus School', 5, 'Envigado', 5, 'Envigado', 336, NULL, NULL, 'Sí', 4.14, 4.13, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1022, 21, 1, DATE '2025-07-21', 'masculino', 'Colegio Santa María del Rosario', 6, 'Cali', 5, 'Envigado', 398, NULL, NULL, 'Sí', 4.06, 3.98, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1023, 21, 1, DATE '2025-07-21', 'femenino', 'The Columbus School', 4, 'Manizales', 5, 'Bello', 394, NULL, NULL, 'Sí', 3.60, 3.83, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1024, 21, 1, DATE '2025-07-21', 'femenino', 'Colegio Calasanz', 3, 'Envigado', 3, 'Envigado', 439, NULL, NULL, 'No', 3.48, 3.12, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1025, 21, 1, DATE '2025-07-21', 'femenino', 'Liceo Francés de Medellín', 6, 'Rionegro', 6, 'Rionegro', 363, NULL, NULL, 'No', 4.90, 4.70, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1026, 21, 1, DATE '2025-07-21', 'femenino', 'Colegio Cumbres', 6, 'Medellín', 6, 'Medellín', 308, NULL, NULL, 'Sí', 3.64, 4.32, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1027, 21, 1, DATE '2025-07-21', 'no binario', 'Colegio San José de La Salle', 6, 'Medellín', 6, 'Medellín', 395, NULL, NULL, 'Sí', 3.57, 3.22, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1028, 21, 1, DATE '2025-07-21', 'femenino', 'Colegio Cumbres', 4, 'Medellín', 4, 'Medellín', 414, NULL, NULL, 'Sí', 3.88, 4.17, NULL, 'No matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1029, 21, 1, DATE '2025-07-21', 'femenino', 'Colegio Palermo de San José', 4, 'Quibdó', 4, 'Medellín', 383, NULL, NULL, 'Sí', 4.23, 4.19, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1030, 21, 1, DATE '2025-07-21', 'femenino', 'Colegio Theodoro Hertzl', 5, 'Medellín', 5, 'Medellín', 386, NULL, NULL, 'Sí', 3.95, 3.99, NULL, 'Matriculado');

-- ---- Semestre 4 (ingreso 2025-01-19) ----
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1031, 21, 1, DATE '2025-01-19', 'no binario', 'Colegio Montessori', 3, 'Envigado', 3, 'Envigado', 285, NULL, NULL, 'Sí', 4.14, 3.60, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1032, 21, 1, DATE '2025-01-19', 'femenino', 'The Columbus School', 4, 'Pereira', 4, 'Medellín', 432, NULL, NULL, 'No', 4.69, 4.41, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1033, 21, 1, DATE '2025-01-19', 'femenino', 'Liceo Francés de Medellín', 6, 'Quibdó', 6, 'Medellín', 300, NULL, NULL, 'Sí', 3.50, 3.42, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1034, 21, 1, DATE '2025-01-19', 'femenino', 'Colegio Theodoro Hertzl', 3, 'Medellín', 3, 'Medellín', 361, NULL, NULL, 'Sí', 4.16, 3.74, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1035, 21, 1, DATE '2025-01-19', 'masculino', 'Colegio Montessori', 3, 'Medellín', 3, 'Medellín', 375, NULL, 'Beca Talento EAFIT', 'Sí', 3.84, 4.36, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1036, 21, 1, DATE '2025-01-19', 'femenino', 'Colegio Marymount', 6, 'Pereira', 6, 'Medellín', 335, NULL, NULL, 'Sí', 3.79, 3.77, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1037, 21, 1, DATE '2025-01-19', 'femenino', 'Colegio Calasanz', 5, 'Montería', 5, 'Envigado', 290, NULL, NULL, 'Sí', 4.36, 4.86, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1038, 21, 1, DATE '2025-01-19', 'masculino', 'Colegio Palermo de San José', 3, 'Apartadó', 2, 'Rionegro', 364, NULL, NULL, 'No', 4.61, 4.40, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1039, 21, 1, DATE '2025-01-19', 'femenino', 'Colegio Marymount', 4, 'Medellín', 4, 'Medellín', 381, NULL, NULL, 'Sí', 4.40, 4.24, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1040, 21, 1, DATE '2025-01-19', 'femenino', 'Colegio San Ignacio de Loyola', 5, 'Medellín', 5, 'Medellín', 400, NULL, NULL, 'No', 3.84, 3.94, NULL, 'Matriculado');

-- ---- Semestre 5 (ingreso 2024-07-21) ----
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1041, 21, 1, DATE '2024-07-21', 'femenino', 'Colegio Marymount', 5, 'Envigado', 5, 'Envigado', 431, NULL, 'Beca Talento EAFIT', 'No', 4.59, 4.45, NULL, 'retirado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1042, 21, 1, DATE '2024-07-21', 'masculino', 'Colegio Vermont', 3, 'Pereira', 3, 'Envigado', 416, NULL, NULL, 'Sí', 3.66, 3.31, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1043, 21, 1, DATE '2024-07-21', 'masculino', 'Colegio Cumbres', 5, 'Medellín', 5, 'Medellín', 332, NULL, NULL, 'Sí', 3.64, 3.65, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1044, 21, 1, DATE '2024-07-21', 'femenino', 'Colegio Benedictino', 6, 'Envigado', 6, 'Envigado', 435, NULL, NULL, 'Sí', 4.13, 4.29, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1045, 21, 1, DATE '2024-07-21', 'femenino', 'Colegio Vermont', 1, 'Quibdó', 2, 'Bello', 432, NULL, NULL, 'Sí', 3.15, 3.20, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1046, 21, 1, DATE '2024-07-21', 'masculino', 'The Columbus School', 2, 'Medellín', 2, 'Medellín', 412, NULL, NULL, 'Sí', 3.55, 3.42, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1047, 21, 1, DATE '2024-07-21', 'masculino', 'Liceo Francés de Medellín', 5, 'Envigado', 5, 'Envigado', 349, NULL, NULL, 'Sí', 4.55, 5.00, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1048, 21, 1, DATE '2024-07-21', 'masculino', 'Colegio Alemán', 2, 'Medellín', 2, 'Medellín', 348, NULL, NULL, 'Sí', 4.10, 3.90, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1049, 21, 1, DATE '2024-07-21', 'masculino', 'Institución Educativa Javiera Londoño', 5, 'Medellín', 5, 'Medellín', 412, NULL, NULL, 'Sí', 4.79, 4.92, NULL, 'No matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1050, 21, 1, DATE '2024-07-21', 'femenino', 'Gimnasio Los Pinares', 3, 'Medellín', 3, 'Medellín', 357, NULL, 'Beca Generación E', 'Sí', 3.97, 3.56, NULL, 'Matriculado');

-- ---- Semestre 6 (ingreso 2024-01-19) ----
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1051, 21, 1, DATE '2024-01-19', 'masculino', 'Colegio Cumbres', 4, 'Barranquilla', 4, 'Envigado', 395, NULL, NULL, 'Sí', 3.70, 3.91, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1052, 21, 1, DATE '2024-01-19', 'masculino', 'The Columbus School', 5, 'Cali', 5, 'Itagüí', 290, NULL, NULL, 'No', 4.33, 3.90, NULL, 'No matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1053, 21, 1, DATE '2024-01-19', 'femenino', 'Colegio Benedictino', 3, 'Medellín', 3, 'Medellín', 354, NULL, NULL, 'Sí', 3.98, 4.07, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1054, 21, 1, DATE '2024-01-19', 'femenino', 'Colegio Theodoro Hertzl', 3, 'Medellín', 3, 'Medellín', 341, NULL, NULL, 'Sí', 3.60, 3.27, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1055, 21, 1, DATE '2024-01-19', 'femenino', 'Institución Educativa Javiera Londoño', 5, 'Pereira', 4, 'Medellín', 347, NULL, NULL, 'Sí', 3.96, 4.28, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1056, 21, 1, DATE '2024-01-19', 'masculino', 'Colegio Vermont', 6, 'Rionegro', 6, 'Rionegro', 362, NULL, NULL, 'No', 3.63, 3.05, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1057, 21, 1, DATE '2024-01-19', 'femenino', 'Institución Educativa Javiera Londoño', 4, 'Manizales', 4, 'Medellín', 294, NULL, NULL, 'Sí', 4.63, 4.51, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1058, 21, 1, DATE '2024-01-19', 'masculino', 'The Columbus School', 4, 'Envigado', 4, 'Envigado', 410, NULL, NULL, 'Sí', 3.99, 3.90, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1059, 21, 1, DATE '2024-01-19', 'femenino', 'Colegio Montessori', 6, 'Medellín', 6, 'Medellín', 323, NULL, NULL, 'Sí', 3.88, 4.32, NULL, 'No matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1060, 21, 1, DATE '2024-01-19', 'femenino', 'Colegio Alemán', 6, 'Bogotá', 5, 'Envigado', 445, NULL, NULL, 'Sí', 4.43, 4.10, NULL, 'Matriculado');

-- ---- Semestre 7 (ingreso 2023-07-21) ----
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1061, 21, 1, DATE '2023-07-21', 'masculino', 'Colegio San José de La Salle', 4, 'Medellín', 4, 'Medellín', 393, NULL, NULL, 'Sí', 4.00, 4.18, NULL, 'retirado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1062, 21, 1, DATE '2023-07-21', 'masculino', 'Colegio Palermo de San José', 4, 'Apartadó', 4, 'Medellín', 375, NULL, NULL, 'Sí', 3.85, 4.24, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1063, 21, 1, DATE '2023-07-21', 'femenino', 'Colegio San Ignacio de Loyola', 4, 'Apartadó', 4, 'Medellín', 305, NULL, NULL, 'Sí', 4.31, 4.30, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1064, 21, 1, DATE '2023-07-21', 'masculino', 'Colegio Marymount', 2, 'Manizales', 2, 'Medellín', 339, NULL, NULL, 'Sí', 3.92, 3.39, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1065, 21, 1, DATE '2023-07-21', 'masculino', 'Institución Educativa INEM José Félix de Restrepo', 6, 'Bucaramanga', 6, 'Envigado', 327, NULL, NULL, 'Sí', 3.78, 3.56, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1066, 21, 1, DATE '2023-07-21', 'femenino', 'Institución Educativa Javiera Londoño', 5, 'Medellín', 5, 'Medellín', 327, NULL, NULL, 'No', 4.49, 4.62, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1067, 21, 1, DATE '2023-07-21', 'masculino', 'Colegio Santa María del Rosario', 5, 'Medellín', 5, 'Medellín', 390, NULL, NULL, 'No', 3.64, 3.56, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1068, 21, 1, DATE '2023-07-21', 'masculino', 'Colegio Palermo de San José', 6, 'Medellín', 6, 'Medellín', 403, NULL, NULL, 'Sí', 3.72, 3.17, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1069, 21, 1, DATE '2023-07-21', 'masculino', 'Colegio San Ignacio de Loyola', 5, 'Medellín', 5, 'Medellín', 326, NULL, NULL, 'Sí', 3.96, 3.93, NULL, 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1070, 21, 1, DATE '2023-07-21', 'masculino', 'Colegio San Ignacio de Loyola', 5, 'Barranquilla', 4, 'Medellín', 292, NULL, 'Beca por deporte', 'Sí', 3.97, 4.13, NULL, 'Matriculado');

-- ---- Semestre 8 (ingreso 2023-01-19) ----
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1071, 21, 1, DATE '2023-01-19', 'masculino', 'Colegio Montessori', 3, 'Medellín', 3, 'Medellín', 363, 202, NULL, 'Sí', 3.39, 3.71, 'Postobón', 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1072, 21, 1, DATE '2023-01-19', 'femenino', 'Colegio San Ignacio de Loyola', 4, 'Medellín', 4, 'Medellín', 395, 174, NULL, 'Sí', 4.82, 4.68, 'Cámara de Comercio de Medellín', 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1073, 21, 1, DATE '2023-01-19', 'femenino', 'Colegio San José de La Salle', 5, 'Medellín', 5, 'Medellín', 382, 212, 'Beca por deporte', 'Sí', 4.15, 4.06, 'Haceb', 'No matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1074, 21, 1, DATE '2023-01-19', 'masculino', 'Colegio Santa María del Rosario', 2, 'Medellín', 2, 'Medellín', 418, 168, NULL, 'Sí', 4.57, 4.17, 'Cámara de Comercio de Medellín', 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1075, 21, 1, DATE '2023-01-19', 'femenino', 'Colegio Benedictino', 5, 'Rionegro', 5, 'Rionegro', 397, 212, NULL, 'Sí', 3.75, 4.23, 'Sura', 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1076, 21, 1, DATE '2023-01-19', 'femenino', 'The Columbus School', 4, 'Envigado', 4, 'Envigado', 427, 183, NULL, 'Sí', 3.94, 3.65, 'Haceb', 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1077, 21, 1, DATE '2023-01-19', 'masculino', 'Liceo Francés de Medellín', 6, 'Cali', 6, 'Medellín', 359, 215, NULL, 'Sí', 3.27, 3.36, 'Grupo Éxito', 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1078, 21, 1, DATE '2023-01-19', 'masculino', 'Colegio San Ignacio de Loyola', 5, 'Pereira', 5, 'Medellín', 352, 176, NULL, 'No', 3.10, 2.98, 'Bancolombia', 'No matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1079, 21, 1, DATE '2023-01-19', 'femenino', 'The Columbus School', 5, 'Bogotá', 5, 'Envigado', 348, 214, NULL, 'No', 3.60, 3.27, 'Bancolombia', 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1080, 21, 1, DATE '2023-01-19', 'femenino', 'Institución Educativa INEM José Félix de Restrepo', 5, 'Medellín', 5, 'Medellín', 415, 220, NULL, 'No', 3.58, 3.25, 'Tecnoquímicas', 'Matriculado');

-- ---- Semestre 9 (ingreso 2022-07-21) ----
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1081, 21, 1, DATE '2022-07-21', 'femenino', 'Institución Educativa INEM José Félix de Restrepo', 5, 'Bogotá', 4, 'Medellín', 359, 198, NULL, 'No', 3.78, 3.58, 'Tecnoquímicas', 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1082, 21, 1, DATE '2022-07-21', 'femenino', 'Gimnasio Los Pinares', 5, 'Medellín', 5, 'Medellín', 300, 196, NULL, 'No', 3.48, 3.41, 'Postobón', 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1083, 21, 1, DATE '2022-07-21', 'masculino', 'Colegio Vermont', 3, 'Apartadó', 3, 'Itagüí', 328, 224, 'Beca por deporte', 'Sí', 4.43, 4.23, 'Grupo Nutresa', 'No matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1084, 21, 1, DATE '2022-07-21', 'masculino', 'Institución Educativa INEM José Félix de Restrepo', 5, 'Medellín', 5, 'Medellín', 328, 200, NULL, 'Sí', 4.20, 3.37, 'Grupo Argos', 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1085, 21, 1, DATE '2022-07-21', 'masculino', 'Institución Educativa INEM José Félix de Restrepo', 4, 'Rionegro', 4, 'Rionegro', 383, 193, 'Beca Mejores Bachilleres', 'Sí', 4.04, 3.92, 'ProColombia', 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1086, 21, 1, DATE '2022-07-21', 'masculino', 'Colegio Palermo de San José', 4, 'Rionegro', 4, 'Rionegro', 407, 184, 'Beca Generación E', 'Sí', 4.04, 3.38, 'Crystal S.A.S.', 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1087, 21, 1, DATE '2022-07-21', 'femenino', 'Colegio Santa María del Rosario', 3, 'Medellín', 3, 'Medellín', 401, 200, NULL, 'Sí', 3.63, 3.66, 'Crystal S.A.S.', 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1088, 21, 1, DATE '2022-07-21', 'femenino', 'Institución Educativa INEM José Félix de Restrepo', 6, 'Manizales', 6, 'Medellín', 405, 183, NULL, 'No', 3.33, 3.56, 'Tecnoquímicas', 'Matriculado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1089, 21, 1, DATE '2022-07-21', 'masculino', 'The Columbus School', 6, 'Medellín', 6, 'Medellín', 365, 196, NULL, 'Sí', 4.22, 3.82, 'Grupo Nutresa', 'retirado');
INSERT INTO estudiante (e_id_estudiantes, e_id_planes, e_id_programa, e_fecha_ingreso, e_genero_estudiantes, e_colegio, e_estrato_vivienda_origen, e_ciudad_origen, e_estrato_vivienda_residencia, e_ciudad_residencia, e_saber_once, e_saber_pro, e_beca, e_padres_profesionales, e_promedio_acumulado, e_promedio_semestre, e_empresa_practica, e_estado)
VALUES (1090, 21, 1, DATE '2022-07-21', 'no binario', 'Colegio Benedictino', 2, 'Medellín', 2, 'Medellín', 412, 210, NULL, 'No', 3.60, 3.74, 'Haceb', 'Matriculado');

COMMIT;

-- Para que Oracle siga numerando después del 1090 cuando se inserte un estudiante sin id:
ALTER TABLE estudiante MODIFY e_id_estudiantes GENERATED BY DEFAULT AS IDENTITY (START WITH LIMIT VALUE);

-- ----------------- KARDEX -----------------
-- Por su tamaño (3.400 registros), el kardex está en un archivo aparte:
-- 07_kardex_negocios.sql. Se ejecuta DESPUÉS de este archivo.
