-- =====================================================
-- CONSULTAS NEGOCIOS INTERNACIONALES
-- =====================================================

-- 1. ¿Qué profesores dictan cada materia del pregrado?
SELECT a.a_nombre AS materia,
       LISTAGG(DISTINCT p.pf_nombre, ', ') WITHIN GROUP (ORDER BY p.pf_nombre) AS profesores
FROM kardex k
JOIN asignatura a ON a.a_id_asignaturas = k.k_id_asignaturas
JOIN profesor p   ON p.pf_id_profesores = k.k_id_profesores
WHERE a.a_id_planes = 21
  AND p.pf_id_profesores BETWEEN 101 AND 178
GROUP BY a.a_nombre
ORDER BY a.a_nombre
;


-- 2. ¿Qué materias tienen la mayor tasa de reprobación? (notas simuladas)
SELECT a.a_nombre AS materia,
       COUNT(*) AS calificados,
       SUM(CASE WHEN k.k_estado = 'REPROBADA' THEN 1 ELSE 0 END) AS reprobados,
       ROUND(100 * SUM(CASE WHEN k.k_estado = 'REPROBADA' THEN 1 ELSE 0 END) / COUNT(*), 1) AS tasa_reprobacion
FROM kardex k
JOIN asignatura a ON a.a_id_asignaturas = k.k_id_asignaturas
WHERE a.a_id_planes = 21
  AND k.k_estado IN ('APROBADA', 'REPROBADA')
GROUP BY a.a_nombre
ORDER BY tasa_reprobacion DESC
FETCH FIRST 10 ROWS ONLY;


-- 3. ¿El escalafón del profesor influye en las notas de los estudiantes? (datos simulados)
SELECT p.pf_escalafon AS escalafon,
       COUNT(DISTINCT p.pf_id_profesores) AS profesores,
       COUNT(*) AS notas,
       ROUND(AVG(k.k_notas), 2) AS promedio_notas
FROM kardex k
JOIN profesor p ON p.pf_id_profesores = k.k_id_profesores
WHERE p.pf_id_profesores BETWEEN 101 AND 178
  AND k.k_notas IS NOT NULL
GROUP BY p.pf_escalafon
ORDER BY promedio_notas DESC;

-- 4. ¿Cuántos estudiantes hay en cada categoría de rendimiento? (datos simulados)
SELECT CASE
           WHEN e_promedio_acumulado >= 4   THEN 'Excelente'
           WHEN e_promedio_acumulado >= 3.5 THEN 'Bueno'
           ELSE 'En riesgo'
       END AS categoria,
       COUNT(*) AS estudiantes
FROM estudiante
WHERE e_id_planes = 21
  AND e_estado = 'Matriculado'
GROUP BY CASE
             WHEN e_promedio_acumulado >= 4   THEN 'Excelente'
             WHEN e_promedio_acumulado >= 3.5 THEN 'Bueno'
             ELSE 'En riesgo'
         END
ORDER BY estudiantes DESC;


-- 5. ¿Cuántas materias dicta cada profesor del pregrado?
SELECT p.pf_nombre AS profesor,
       p.pf_tipo_contrato AS contrato,
       COUNT(DISTINCT k.k_id_asignaturas) AS materias,
       LISTAGG(DISTINCT a.a_nombre, ', ') WITHIN GROUP (ORDER BY a.a_nombre) AS cuales
FROM kardex k
JOIN profesor p   ON p.pf_id_profesores = k.k_id_profesores
JOIN asignatura a ON a.a_id_asignaturas = k.k_id_asignaturas
WHERE p.pf_id_profesores BETWEEN 101 AND 178
GROUP BY p.pf_nombre, p.pf_tipo_contrato
ORDER BY materias DESC, profesor;

-- 6. ¿El estrato de origen se relaciona con el promedio de los estudiantes? (datos simulados)
SELECT e_estrato_vivienda_origen AS estrato,
       COUNT(*) AS estudiantes,
       ROUND(AVG(e_promedio_acumulado), 2) AS promedio,
       ROUND(AVG(e_saber_once), 0) AS saber_once_promedio
FROM estudiante
WHERE e_id_planes = 21
GROUP BY e_estrato_vivienda_origen
ORDER BY estrato;