USE eventos;

CREATE VIEW vista_patrocinadores_pagos AS
SELECT p.Nombre_Patrocinador AS nombre_patrocinador, pa.Monto AS monto_pago_empresa
FROM patrocinador p
JOIN patrocinio pa ON p.ID_Patrocinador = pa.ID_Patrocinador
UNION ALL
SELECT 'Total' AS nombre_patrocinador, SUM(pa.Monto) AS monto_pago_empresa
FROM patrocinio pa;


CREATE VIEW vista_invitados_encuesta_pregunta1 AS
SELECT n.Nombre AS nombre_invitado, e.Nombre_Evento AS evento, p.Puntuacion1 AS valoracion
FROM invitado n
JOIN respuesta_encuesta p ON n.ID_Invitado = p.ID_Invitado
JOIN evento e ON e.ID_Evento = p.ID_Evento;


CREATE VIEW vista_invitados_encuesta_pregunta2 AS
SELECT n.Nombre AS nombre_invitado, e.Nombre_Evento AS evento, p.Puntuacion2 AS valoracion
FROM invitado n
JOIN respuesta_encuesta p ON n.ID_Invitado = p.ID_Invitado
JOIN evento e ON e.ID_Evento = p.ID_Evento;


CREATE VIEW vista_invitados_encuesta_pregunta3 AS
SELECT n.Nombre AS nombre_invitado, e.Nombre_Evento AS evento, p.Puntuacion3 AS valoracion
FROM invitado n
JOIN respuesta_encuesta p ON n.ID_Invitado = p.ID_Invitado
JOIN evento e ON e.ID_Evento = p.ID_Evento;


CREATE VIEW vista_invitados_encuesta_pregunta4 AS
SELECT n.Nombre AS nombre_invitado, e.Nombre_Evento AS evento, p.Puntuacion4 AS valoracion
FROM invitado n
JOIN respuesta_encuesta p ON n.ID_Invitado = p.ID_Invitado
JOIN evento e ON e.ID_Evento = p.ID_Evento;


CREATE VIEW empleados_roles AS
SELECT n.Nombre AS Nombre_Empleado, n.Apellido AS apellido_empleado, r.Rol AS rol, e.Nombre_Evento AS evento
FROM empleados n
JOIN asignacion r ON n.ID_Empleados = r.ID_Empleados
JOIN evento e ON e.ID_Evento = r.ID_Evento;




