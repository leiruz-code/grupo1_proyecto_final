-- Datos insertados tabla Lugar --
INSERT INTO lugar (distrito, provincia, region) VALUES
('Miraflores', 'Lima', 'Lima'),
('Santiago de Surco', 'Lima', 'Lima'),
('Yanahuara', 'Arequipa', 'Arequipa'),
('Wanchaq', 'Cusco', 'Cusco'),
('Trujillo', 'Trujillo', 'La Libertad'),
('Chiclayo', 'Chiclayo', 'Lambayeque'),
('Piura', 'Piura', 'Piura'),
('Huancayo', 'Huancayo', 'Junín')
  RETURNING id_lugar;

-- Datos insertados tabla Turno --
INSERT INTO turno (nmbre_trno, hora_inicio, hora_fin) VALUES
('Mañana', '06:00:00', '14:00:00'),
('Tarde', '14:00:00', '22:00:00'),
('Noche', '22:00:00', '06:00:00'),
('Oficina', '08:00:00', '17:00:00'),
('Partidario', '09:00:00', '13:00:00')
  RETURNING id_turno;

INSERT INTO contrato (nmbre_contrto) VALUES
('Contrato de Prestación de Servicios de TI - Fase 1'),
('Contrato de Suministro de Papelería y Útiles de Oficina'),
('Contrato de Arrendamiento de Oficinas Corporativas - Piso 4'),
('Contrato de Mantenimiento Preventivo de Aire Acondicionado'),
('Contrato de Consultoría en Seguridad de la Información'),
('Contrato de Desarrollo de Software y Licenciamiento'),
('Contrato de Servicio de Limpieza e Higienización'),
('Contrato de Transporte y Logística de Distribución') RETURNING id_contrato; 

INSERT INTO infraccion (tpo_infrccon, gravedad, descripcion, penalizacion, pnlzcon_ecnmca) VALUES
-- Infracciones Leves
('Retraso', 'Leve', 'Entrega de informes fuera del plazo establecido (hasta 48 horas de retraso).', 'Amonestación por escrito', 150.00),
('Documentación', 'Leve', 'No presentar las pólizas de seguro actualizadas en los primeros 5 días del mes.', 'Multa administrativa', 200.00),
('Uniformidad', 'Leve', 'Personal del proveedor se presenta sin el equipo de identificación institucional.', 'Amonestación verbal con registro en bitácora', 75.00),('Incumplimiento Parcial', 'Moderada', 'Interrupción del servicio de soporte técnico por un lapso de 2 a 4 horas laborables.', 'Descuento del 5% del pago mensual', 850.00),
('Calidad', 'Moderada', 'Uso de materiales o insumos de menor calidad a la especificada en el anexo técnico.', 'Sustitución inmediata de materiales y multa', 1200.00),
('Confidencialidad', 'Moderada', 'Uso inadecuado de logos o marcas de la empresa sin la autorización expresa del contrato.', 'Suspensión temporal del acceso a las instalaciones', 1500.00),('Ausencia de Servicio', 'Grave', 'Abandono injustificado del servicio o cese de operaciones por más de 24 horas continuas.', 'Rescisión de contrato y ejecución de fianza', 5000.00),
('Seguridad', 'Grave', 'Vulneración de datos sensibles por negligencia en el manejo de credenciales compartidas.', 'Auditoría obligatoria externa y penalización máxima', 7500.00),
('Subcontratación', 'Grave', 'Subcontratar los servicios del objeto del contrato con terceros sin el consentimiento previo.', 'Clasificación de proveedor no elegible y multa', 3500.00) RETURNING id_infrccon;

-- Zuriel
INSERT INTO cliente (nombres, aplldo_ptrno, aplldo_mtrno, fcha_rgstro, nmro_pddos, teléfono, crro_elctrnco)
VALUES
	('Pepe', 'Quispe', 'Hurtado', '21-05-2026', 3, 951753654, 'pepe_quispe@hotmail.com'),
	('Felipe', 'Huaroc', 'Lopez', '20-02-2026', 7, 987456321, 'felipe_huaroc@gmail.com'),
	('Fernando', 'Olivera', 'Gomez', '24-04-2026', 4, 963842751, 'fernando_olivera@hotmail.com'),
	('Cielo', 'Guerra', 'Garcia', '19-02-2025', 1, 953285645, 'cielo_guerra@gmail.com'),
	('Manuel', 'Medrano', 'Padilla', '14-01-2026', 9, 954685312, 'manuel_medrano@gmail.com')
RETURNING id_cliente;

INSERT INTO promoción (nmbre_promocon, fecha_inicio, fecha_fin, descuento, cntdad_mnma, descripción)
VALUES
	('Día de la Madre', '2026-05-01', '2026-05-15', 20.00, 1, '20% de descuento en la sección de chocolates y regalos.'),
	('Aniversario', '2026-09-01', '2026-09-30', 10.00, 1, '10% de descuento en toda la tienda por nuestro mes de aniversario.'),
	('Día del Padre', '2026-06-10', '2026-06-21', 20.00, 1, '20% de descuento en la sección de regalos.'),
	('Remate', '2026-05-29', '2026-05-31', 50.00, 2, '50% de descuento en productos seleccionados.'),
	('Descuento 3x2', '2026-05-28', '2026-06-30', 100.00, 2, '100% de descuento en el 3er producto y en ciertos productos seleccionados.')
RETURNING id_prmcon;
