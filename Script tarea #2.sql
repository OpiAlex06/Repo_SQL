/* LEFT JOIN
   Mostrar todos los médicos y sus citas */

SELECT 
    m.nombre_completo,
    c.fecha_hora,
    c.estado
FROM medico m
LEFT JOIN cita c
ON m.id = c.medico_id;


/* RIGHT JOIN
   Mostrar todas las citas y el médico asignado */

SELECT 
    m.nombre_completo,
    c.fecha_hora,
    c.estado
FROM medico m
RIGHT JOIN cita c
ON m.id = c.medico_id;


/* GROUP BY - Ejemplo 1
   Contar cuántas citas tiene cada médico */

SELECT 
    m.nombre_completo,
    COUNT(c.id) AS total_citas
FROM medico m
LEFT JOIN cita c
ON m.id = c.medico_id
GROUP BY m.nombre_completo;


/* GROUP BY - Ejemplo 2
   Contar cuántas citas hay por estado */

SELECT 
    c.estado,
    COUNT(*) AS cantidad
FROM cita c
GROUP BY c.estado;


/* LIMIT - Ejemplo 1
   Mostrar las primeras 3 citas */

SELECT *
FROM cita c
LIMIT 3;


/* LIMIT - Ejemplo 2
   Mostrar los primeros 2 pacientes */

SELECT *
FROM paciente p
LIMIT 2;


/* OFFSET - Ejemplo 1
   Saltar las primeras 2 citas y mostrar las siguientes 2 */

SELECT *
FROM cita c
LIMIT 2 OFFSET 2;


/* OFFSET - Ejemplo 2
   Saltar los primeros 2 pacientes y mostrar los siguientes 2 */

SELECT *
FROM paciente p
LIMIT 2 OFFSET 2;


