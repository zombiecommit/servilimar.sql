INSERT INTO ciudad (nombre_ciudad, codigo_postal)
VALUES
('Cali', 760000 ),
('Yumbo', 123456),
('Palmira', 098765),
('Dagua', 123223),
('Bogotá', 222222),
('Barranquilla', 33333),
('Medellín', 50000),
('Cartagena', 130000),
('Bucaramanga', 680000),
('Pereira', 660000);


SELECT * FROM ciudad;


--modifiqué un poco esta tabla a como la hice en el video, me estaba dando problemas
--cuando en tipo_usuario ponia empleado, asi que los separé

INSERT INTO usuario(nombre, apellido, tipo_usuario, condicion_especial, ciudad_id)
VALUES
('Daniel', 'Escobar', 'Paciente', 'Ninguna', 1),
('Carlos', 'Giron', 'Paciente', 'Muletas', 2 ),
('Carmen', 'Espinoza', 'Externo', 'Ninguna', 3),
('Alberto', 'Gutierrez', 'Cliente', 'Ninguna', 4),
('Abraham', 'Perez', 'Paciente', 'Silla de ruedas', 1),
('Laura', 'Martinez', 'Cliente', 'Embarazo', 5),
('Jorge', 'Ramirez', 'Externo', 'Ninguna', 6),
('Sofia', 'Torres', 'Paciente', 'Adulto mayor', 7),
('Miguel', 'Herrera', 'Cliente', 'Ninguna', 8),
('Valentina', 'Lopez', 'Paciente', 'Ninguna', 9);

SELECT * FROM usuario;

INSERT INTO empleado (usuario_id, cargo, departamento)
VALUES
(3, 'Médico', 'Medicina'),
(4, 'Recepcionista', 'Atención al cliente'),
(6, 'Enfermero', 'Urgencias'),
(7, 'Especialista', 'Especialidades'),
(8, 'Auxiliar', 'Apoyo Diagnóstico'),
(9, 'Cirujano', 'Cirugía'),
(10, 'Coordinador', 'Administración'),
(1, 'Asesor', 'Consultoría'),
(2, 'Técnico', 'Laboratorio'),
(5, 'Supervisor', 'Operaciones');

SELECT * FROM empleado;

INSERT INTO servicio(nombre, descripcion, estado)
VALUES
('Urgencias', 'Urgencias', 'Activo'),
('Maternidad', 'Embarazos', 'Activo'),
('Cirugia', 'Operaciones', 'Activo'),
('Apoyo Diagnostico', 'Laboratorio Clinico', 'Activo'),
('Especialidades', 'Especialidades medicas', 'Activo'),
('Consulta General', 'Consulta general', 'Activo'),
('Odontología', 'Atención dental', 'Activo'),
('Psicología', 'Atención psicológica', 'Activo'),
('Farmacia', 'Dispensacion de medicamentos', 'Activo'),
('Nutrición', 'Asesoria nutricional', 'Activo');


SELECT * FROM servicio;


INSERT INTO turno(usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin, estado)
VALUES
(1, 3, 1, '2026-05-23', '08:00:00', '08:20:00', 'Finalizado' ),
(2, 1, 3, '2026-05-23', '08:30:00', '09:20:00', 'Finalizado' ),
(4, 4, 1, '2026-05-23', '09:20:00', '09:40:00', 'Finalizado' ),
(5, 5, 7, '2026-05-23', '10:00:00', '10:20:00', 'Finalizado' ),
(6, 6, 2, '2026-05-23', '10:30:00', '10:50:00', 'Finalizado'),
(7, 7, 3, '2026-05-23', '11:00:00', '11:20:00', 'Finalizado'),
(8, 8, 4, '2026-05-23', '11:30:00', '11:50:00', 'Pendiente'),
(9, 9, 5, '2026-05-23', '12:00:00', '12:20:00', 'Pendiente'),
(1, 10, 6, '2026-05-24', '08:00:00', '08:20:00', 'Pendiente'),
(2, 6, 7, '2026-05-24', '08:30:00', '08:50:00', 'Pendiente');

SELECT * FROM turno;

INSERT INTO medio_notificacion (nombre_medio)
VALUES
('Llamada'),
('WhatsApp'),
('Mensaje de texto'),
('Correo'),
('Notificación App'),
('Telegram'),
('Fax'),
('Carta física'),
('Chat web'),
('Aviso presencial');

SELECT * FROM medio_notificacion;

INSERT INTO notificacion(usuario_id, medio_id, mensaje, fecha_envio, estado)
VALUES 
(1, 1, 'Recuerde su cita mañana', '2026-05-10', 'enviado'),
(2, 2, 'Turno confirmado exitosamente', '2026-05-12', 'enviado'),
(4, 3, 'Su turno está próximo', '2026-05-09', 'enviado'),
(5, 4, 'Gracias por usar ServiLimar', '2026-05-14', 'enviado'),
(6, 5, 'Su turno ha sido asignado', '2026-05-20', 'enviado'),
(7, 6, 'Recuerde su cita mañana', '2026-05-22', 'enviado'),
(8, 7, 'Su turno está próximo', '2026-05-23', 'enviado'),
(9, 8, 'Turno confirmado exitosamente', '2026-05-23', 'enviado'),
(1, 9, 'Gracias por usar ServiLimar', '2026-05-23', 'enviado'),
(2, 10, 'Su solicitud fue recibida', '2026-05-23', 'enviado');

SELECT * FROM notificacion;
