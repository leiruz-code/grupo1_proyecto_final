-- ======================================================
-- 						--- INSERT ---
-- ======================================================

-- =========================================
-- TABLA: lugar
-- AUTOR: Brysett Valenzuela
-- =========================================
INSERT INTO lugar (distrito, provincia, region)
VALUES
	('Miraflores', 'Lima', 'Lima'),
	('Santiago de Surco', 'Lima', 'Lima'),
	('Yanahuara', 'Arequipa', 'Arequipa'),
	('Wanchaq', 'Cusco', 'Cusco'),
	('Trujillo', 'Trujillo', 'La Libertad'),
	('Chiclayo', 'Chiclayo', 'Lambayeque'),
	('Piura', 'Piura', 'Piura'),
	('Huancayo', 'Huancayo', 'Junín')
	('San Isidro', 'Lima', 'Lima'),
	('La Molina', 'Lima', 'Lima'),
	('Cayma', 'Arequipa', 'Arequipa'),
	('José Luis Bustamante y Rivero', 'Arequipa', 'Arequipa'),
	('San Sebastián', 'Cusco', 'Cusco'),
	('San Jerónimo', 'Cusco', 'Cusco'),
	('Victor Larco Herrera', 'Trujillo', 'La Libertad'),
	('Pimentel', 'Chiclayo', 'Lambayeque'),
	('Castilla', 'Piura', 'Piura'),
	('El Tambo', 'Huancayo', 'Junín')
	('Miraflores', 'Arequipa', 'Arequipa'),
	('Cerro Colorado', 'Arequipa', 'Arequipa');

-- =========================================
-- TABLA: turno
-- AUTOR: Brysett Valenzuela
-- =========================================
INSERT INTO turno (nmbre_trno, hora_inicio, hora_fin)
VALUES
	('Mañana', '06:00:00', '14:00:00'),
	('Tarde', '14:00:00', '22:00:00'),
	('Noche', '22:00:00', '06:00:00'),
	('Oficina', '08:00:00', '17:00:00'),
	('Partidario', '09:00:00', '13:00:00')
  RETURNING id_turno;

-- =========================================
-- TABLA: jornada
-- AUTOR: 
-- =========================================
INSERT INTO jornada (id_jornada, jrnda_cmplta, hora_entrada, hora_salida, fecha, id_clbrdor, id_turno)
VALUES
	(TRUE, '08:00:00', '17:00:00', '2026-05-17', 19, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-17', 20, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-17', 21, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-17', 22, 4),
	(TRUE, '08:00:00', '17:00:00','2026-05-17', 29, 4),
	(TRUE, '08:00:00', '17:00:00','2026-05-17', 15, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-17', 5, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-17', 10, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-17', 25, 4),
	(TRUE, '14:00:00', '22:00:00', '2026-05-17', 27, 2),
	(TRUE, '06:00:00', '14:00:00', '2026-05-17', 30, 1),
	(TRUE, '06:00:00', '14:00:00', '2026-05-17', 1, 1),
	(TRUE, '08:00:00', '17:00:00', '2026-05-17', 2, 4),
	(TRUE, '14:00:00', '22:00:00', '2026-05-17', 3, 2),
	(TRUE, '06:00:00', '14:00:00', '2026-05-17', 6, 1),
	(TRUE, '06:00:00', '14:00:00', '2026-05-17', 7, 1),
	(FALSE, '14:18:00', '22:00:00','2026-05-17', 8, 2),
	(TRUE, '08:00:00', '17:00:00', '2026-05-17', 9, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-17', 12, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-17', 13, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-17', 14, 4),
	(FALSE, '08:45:00', '17:00:00', '2026-05-17', 16, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-17',18,4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-17', 23, 4),
	(FALSE, '09:20:00', '17:00:00', '2026-05-17', 24, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-17', 26, 4),
	(FALSE, '14:35:00', '22:00:00', '2026-05-17', 28, 2),
	(TRUE, '06:00:00', '14:00:00', '2026-05-17', 31, 1),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 19, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 20, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 21, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 22, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 29, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 15, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 5, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 10, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 25, 4),
	(TRUE, '14:00:00', '22:00:00', '2026-05-19', 27, 2),
	(TRUE, '06:00:00', '14:00:00', '2026-05-19', 30, 1),
	(TRUE, '06:00:00', '14:00:00', '2026-05-19', 1, 1),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 2, 4),
	(TRUE, '14:00:00', '22:00:00', '2026-05-19', 3, 2),
	(FALSE, '06:22:00', '14:00:00', '2026-05-19', 6, 1),
	(TRUE, '06:00:00', '14:00:00', '2026-05-19', 7, 1),
	(TRUE, '14:00:00', '22:00:00', '2026-05-19', 8, 2),
	(FALSE, '08:34:00', '17:00:00', '2026-05-19', 9, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 12, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 13, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 14, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 16, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 18, 4),
	(FALSE, '08:55:00', '17:00:00', '2026-05-19', 23, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 24, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-19', 26, 4),
	(TRUE, '14:00:00', '22:00:00', '2026-05-19', 28, 2),
	(FALSE, '06:17:00', '14:00:00', '2026-05-19', 31, 1),
	(TRUE, '08:00:00', '17:00:00', '2026-05-20', 19, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-20', 20, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-20', 21, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-20', 22, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-20', 29, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-20', 15, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-20', 5, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-20', 10, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-20', 25, 4),
	(TRUE, '14:00:00', '22:00:00', '2026-05-20', 27, 2),
	(TRUE, '06:00:00', '14:00:00', '2026-05-20', 30, 1),
	(TRUE, '06:00:00', '14:00:00', '2026-05-20', 1, 1),
	(FALSE, '08:28:00', '17:00:00', '2026-05-20', 2, 4),
	(TRUE, '14:00:00', '22:00:00', '2026-05-20', 3, 2),
	(TRUE, '06:00:00', '14:00:00', '2026-05-20', 6, 1),
	(TRUE, '06:00:00', '14:00:00', '2026-05-20', 7, 1),
	(FALSE, '14:42:00', '22:00:00', '2026-05-20', 8, 2),
	(TRUE, '08:00:00', '17:00:00', '2026-05-20', 9, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-20', 12, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-20', 13, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-20', 14, 4),
	(FALSE, '08:51:00', '17:00:00', '2026-05-20', 16, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-20', 18, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-20', 23, 4),
	(TRUE, '08:00:00', '17:00:00', '2026-05-20', 24, 4),
	(FALSE, '08:37:00', '17:00:00', '2026-05-20', 26, 4),
	(TRUE, '14:00:00', '22:00:00', '2026-05-20', 28, 2),
	(TRUE, '06:00:00', '14:00:00', '2026-05-20', 31, 1);

-- =========================================
-- TABLA: infraccion
-- AUTOR: Betzabe Huaroc
-- =========================================
INSERT INTO infraccion (tpo_infrccon, gravedad, descripcion, penalizacion, pnlzcon_ecnmca)
VALUES
	('Retraso', 1, 'Entrega de informes fuera del plazo establecido (hasta 48 horas de retraso).', 'Amonestación por escrito', 150.00),
	('Documentación', 1, 'No presentar las pólizas de seguro actualizadas en los primeros 5 días del mes.', 'Multa administrativa', 200.00),
	('Uniformidad', 1, 'Personal del proveedor se presenta sin el equipo de identificación institucional.', 'Amonestación verbal con registro en bitácora', 75.00),('Incumplimiento Parcial', 'Moderada', 'Interrupción del servicio de soporte técnico por un lapso de 2 a 4 horas laborables.', 'Descuento del 5% del pago mensual', 850.00),
	('Incumplimiento Parcial', 2, 'Interrupción del servicio de soporte técnico por un lapso de 2 a 4 horas laborables.', 'Descuento del 5% del pago mensual', 850),
	('Calidad', 2, 'Uso de materiales o insumos de menor calidad a la especificada en el anexo técnico.', 'Sustitución inmediata de materiales y multa', 1200.00),
	('Confidencialidad', 2, 'Uso inadecuado de logos o marcas de la empresa sin la autorización expresa del contrato.', 'Suspensión temporal del acceso a las instalaciones', 1500.00),('Ausencia de Servicio', 'Grave', 'Abandono injustificado del servicio o cese de operaciones por más de 24 horas continuas.', 'Rescisión de contrato y ejecución de fianza', 5000.00),
	('Ausencia de Servicio', 3, 'Abandono injustificado del servicio o cese de operaciones por más de 24 horas continuas.', 'Rescisión de contrato y ejecución de fianza', 5000),
	('Seguridad', 3, 'Vulneración de datos sensibles por negligencia en el manejo de credenciales compartidas.', 'Auditoría obligatoria externa y penalización máxima', 7500.00),
	('Subcontratación', 3, 'Subcontratar los servicios del objeto del contrato con terceros sin el consentimiento previo.', 'Clasificación de proveedor no elegible y multa', 3500.00),
	('Capacitación', 1, 'No asistir a una capacitación obligatoria programada por la entidad contratante.', 'Amonestación escrita y capacitación complementaria', 100),
	('Mantenimiento', 2, 'No realizar el mantenimiento preventivo programado de los equipos dentro del plazo establecido.', 'Multa y reprogramación obligatoria del mantenimiento', 1800),
	('Incumplimiento de SLA', 2, 'No alcanzar los niveles mínimos de servicio acordados durante un período de evaluación.', 'Descuento del 10% de la facturación mensual', 2200),
	('Fraude Documentario', 3, 'Presentar documentación alterada o información falsa durante la ejecución contractual.', 'Suspensión inmediata del contrato y multa', 9000),
	('Accidente por Negligencia', 4, 'Provocar daños materiales o lesiones debido al incumplimiento de protocolos de seguridad.', 'Resolución contractual y acciones legales correspondientes', 15000),
	('Corrupción o Soborno', 4, 'Ofrecer o entregar beneficios indebidos a personal de la entidad para obtener ventajas contractuales.', 'Inhabilitación permanente como proveedor y denuncia ante las autoridades', 25000);

INSERT INTO acto (id_acto, descripcion, id_clbrdor, id_infraccion)
VALUES
	('Presentó reporte mensual con un día de retraso.', 23, 1),
	('No asistió a una capacitación obligatoria de RRHH.', 24, 10),
	('Se presentó sin credencial institucional durante una auditoría.', 28, 3),
	('No entregó documentación administrativa dentro del plazo.', 26, 2),
	('Registro de asistencia tardío en varias oportunidades.', 31, 1),
	('Incumplimiento parcial de actividades asignadas en el área.', 8, 4),
	('Uso inadecuado de material corporativo sin autorización.', 16, 6),
	('No realizó mantenimiento preventivo de equipos asignados.', 23, 11),
	('No alcanzó los niveles mínimos de servicio establecidos.', 24, 12),
	('Observaciones recurrentes sobre calidad del trabajo entregado.', 28, 5),
	('Vulneración de procedimientos de seguridad informática detectada durante auditoría.', 11, 8),
	('Presentación de documentación con inconsistencias graves durante proceso interno.', 33, 13);

-- =========================================
-- TABLA: colaborador
-- AUTOR: 
-- =========================================
INSERT INTO colaborador (id_clbrdor, dni, nombres, aplldo_ptrno, aplldo_mtrno, crro_elctrnco, telefono, fcha_ncmnto, fcha_cntrtcon, fecha_clmncon, bono, sueldo, observacion, direccion, fcha_ingrso, prdo_cntrto, estado, id_lugar, id_jefe)
VALUES
	('74859621', 'Carlos Alberto', 'Quispe', 'Mamani', 'carlos.quispe@empresa.com', '987654321', '1995-04-15', '2023-01-10', NULL, 350.00, 2800.00, 'Buen desempeño en ventas', 'Av. Los Incas 123', '2023-01-10', '12 meses', TRUE, 1, 2),
	('71234567', 'María Fernanda', 'Lopez', 'Gomez', 'maria.lopez@empresa.com', '965874123', '1998-09-20', '2022-08-01', NULL, 500.00, 3200.00, NULL, 'Jr. Primavera 456', '2022-08-01', 'Indefinido', TRUE, 2, NULL),
	('73456789', 'José Luis', 'Condori', 'Huaman', 'jose.condori@empresa.com', '954123789', '1992-12-11', '2021-05-15', NULL, NULL, 2500.00, 'Área logística', 'Calle Arequipa 789', '2021-05-15', '24 meses', TRUE, 3, 2),
	('75678912', 'Ana Cecilia', 'Torres', 'Vargas', 'ana.torres@empresa.com', '978456123', '1997-06-08', '2020-11-03','2024-03-01', 200.00, 3000.00, 'Contrato culminado', 'Av. Sol 321', '2020-11-03', '36 meses', FALSE, 4, NULL),
	('76981234', 'Luis Enrique', 'Ramirez', 'Castillo', 'luis.ramirez@empresa.com', '912345678', '1990-01-25', '2019-07-20', NULL, 450.00, 4000.00, 'Supervisor de operaciones', 'Mz B Lt 5 Urb. Centro', '2019-07-20', 'Indefinido', TRUE, 5, NULL),
	('78123456', 'Patricia Elena', 'Flores', 'Diaz', 'patricia.flores@empresa.com', '934567812', '1996-03-18', '2023-02-14', NULL, NULL, 2700.00, NULL, 'Av. Grau 741', '2023-02-14', '18 meses', TRUE, 6, 5),
	('79345678', 'Miguel Ángel', 'Rojas', 'Paredes', 'miguel.rojas@empresa.com', '945678123', '1993-10-30', '2022-06-12', NULL, 300.00, 3100.00, 'Encargado de almacén', 'Jr. Libertad 852', '2022-06-12', '12 meses', TRUE, 7, 5),
	('70456789', 'Daniela Sofía', 'Mendoza', 'Salas', 'daniela.mendoza@empresa.com', '956789234', '1999-07-14', '2024-01-05', NULL, 150.00, 2400.00, 'Nueva incorporación', 'Psje. San Martín 963', '2024-01-05', '6 meses', TRUE, 8, 5),
	('71549823', 'Ricardo Manuel', 'Pinto', 'Alvarez', 'ricardo.pinto@empresa.com', '961258347', '1991-02-17', '2021-09-10', NULL, 420.00, 3500.00, 'Analista financiero', 'Av. Central 145', '2021-09-10', '24 meses', TRUE, 2, 5),
	('72837465', 'Lucía Andrea', 'Navarro', 'Cruz', 'lucia.navarro@empresa.com', '973654821', '1994-11-05','2020-04-22', NULL, NULL, 2900.00, 'Área administrativa', 'Jr. Unión 258','2020-04-22', 'Indefinido', TRUE, 4, NULL),
	('73928164', 'Fernando Javier', 'Salazar', 'Reyes', 'fernando.salazar@empresa.com', '984512367', '1989-08-29', '2018-12-03', '2023-11-15', 250.00, 4100.00, 'Renuncia voluntaria', 'Calle Los Pinos 963', '2018-12-03', '48 meses', FALSE, 1, NULL),
	('74159628', 'Katherine Milagros', 'Vega', 'Ortega', 'katherine.vega@empresa.com', '952147836', '1997-05-12', '2023-07-01', NULL, 180.00, 2600.00, 'Asistente de recursos humanos', 'Av. Ejército 741', '2023-07-01', '12 meses',TRUE, 3, 10),
	('75286319', 'Bruno Sebastián', 'Carrasco', 'Delgado', 'bruno.carrasco@empresa.com', '968741253', '1993-01-09', '2022-03-18', NULL, 520.00, 3800.00, 'Coordinador de proyectos', 'Urb. Santa Rosa Mz C Lt 8', '2022-03-18', '36 meses', TRUE, 6, 10),
	('76451238', 'Andrea Milena', 'Cordero', 'Pacheco', 'andrea.cordero@empresa.com',' 951236874', '1995-10-03', '2021-06-14', NULL, 275.00, 3150.00, 'Especialista en marketing', 'Av. La Marina 225', '2021-06-14','24 meses', TRUE, 5, 15),
	('77634125', 'Jorge Antonio', 'Valdivia', 'Nuñez', 'jorge.valdivia@empresa.com', '962514738', '1988-07-19', '2017-09-01', NULL, 650.00, 4800.00, 'Jefe de sistemas', 'Calle Comercio 874', '2017-09-01', 'Indefinido', TRUE, 1, NULL),
	('78745216', 'Camila Fernanda', 'Espinoza', 'Mejia', 'camila.espinoza@empresa.com', '974185263', '2000-04-27', '2024-02-10', NULL, NULL, 2200.00, 'Practicante profesional','Psje. Las Flores 632', '2024-02-10', '6 meses', TRUE, 7, 15),
	('79856341', 'Pedro Luis', 'Aguilar', 'Soto', 'pedro.aguilar@empresa.com', '985623147', '1992-12-08', '2020-01-20', '2025-01-31', 300.00, 3400.00, 'Fin de contrato', 'Av. América 159', '2020-01-20', '60 meses', FALSE, 8, NULL),
	('70987412', 'Valeria Noemí', 'Huerta', 'Campos', 'valeria.huerta@empresa.com', '996325874', '1996-09-14', '2022-10-05', NULL, 210.00, 2950.00, 'Responsable de atención al cliente', 'Jr. Ayacucho 753', '2022-10-05', '18 meses', TRUE, 2, 15),
	('70124589', 'Roberto Miguel', 'Castañeda', 'Loayza', 'roberto.castaneda@empresa.com', '912458963', '1985-02-14', '2015-03-01', NULL, 850.00, 6500.00, 'Gerente general corporativo', 'Av. Principal 100', '2015-03-01', 'Indefinido', TRUE, 1, NULL),
	('71478523', 'Silvia Maribel', 'Paredes', 'Rojas', 'silvia.paredes@empresa.com', '934785612', '1989-06-21', '2018-08-15', NULL, 600.00, 5200.00, 'Jefa de recursos humanos', 'Jr. Las Palmeras 450', '2018-08-15', 'Indefinido', TRUE, 2, 19),
	('72589634', 'Héctor Raúl', 'Medina', 'Salazar', 'hector.medina@empresa.com', '956321478', '1987-09-11', '2017-05-10', NULL, 720.00, 5600.00, 'Jefe financiero', 'Av. Los Laureles 321','2017-05-10', 'Indefinido', TRUE, 3, 19),
	('73691258', 'Paola Cristina', 'Benites', 'Flores', 'paola.benites@empresa.com', '978452136', '1991-12-03', '2019-01-20', NULL, 550.00, 5000.00, 'Jefa comercial', 'Calle Mercaderes 210', '2019-01-20', 'Indefinido', TRUE, 4, 19),
	('74785691', 'Diego Alonso', 'Vilca', 'Quispe', 'diego.vilca@empresa.com', '987456123', '1996-07-08', '2022-04-04', NULL, 180.00, 2800.00, 'Asistente de selección', 'Av. Dolores 741', '2022-04-04', '12 meses', TRUE, 2, 20),
	('75896314', 'Natalia Fernanda', 'Arias', 'Cruz', 'natalia.arias@empresa.com', '965874321', '1998-11-17', '2023-03-15', NULL, 120.00, 2500.00, 'Analista junior RRHH', 'Psje. Lima 963', '2023-03-15', '18 meses', TRUE, 2, 20),
	('76932145', 'Eduardo Javier', 'Zevallos', 'Mamani', 'eduardo.zevallos@empresa.com', '954789321', '1993-05-24', '2021-07-12', NULL, 300.00, 3400.00, 'Contador corporativo', 'Jr. Tacna 852', '2021-07-12', '24 meses', TRUE, 3, 21),
	('77124563', 'Lucero Milagros', 'Valencia', 'Torres', 'lucero.valencia@empresa.com', '943216578', '1997-08-19', '2022-09-01', NULL, 220.00, 2950.00, 'Asistente contable', 'Av. Independencia 741', '2022-09-01', '12 meses', TRUE, 3, 25),
	('78236514', 'Renato César', 'Portugal', 'Linares', 'renato.portugal@empresa.com', '932145678',' 1994-03-28', '2020-02-14', NULL, 450.00, 3600.00, 'Supervisor de ventas', 'Av. Ejército 357', '2020-02-14', '24 meses', TRUE, 4, 22),
	('79321456', 'Fiorella Andrea', 'Mendoza', 'Puma', 'fiorella.mendoza@empresa.com', '921456783', '1999-01-10', '2024-01-22', NULL, 100.00, 2300.00, 'Ejecutiva comercial junior', 'Jr. Ayacucho 456', '2024-01-22', '6 meses', TRUE, 4, 27),
	('70478512', 'Alonso Martín', 'Gallegos', 'Nuñez', 'alonso.gallegos@empresa.com', '944785236', '1986-10-30', '2016-06-06', NULL, 780.00, 5900.00, 'Director de operaciones', 'Av. Metropolitana 951', '2016-06-06', 'Indefinido', TRUE, 5, 19),
	('71563248', 'Carmen Rosa', 'Sotelo', 'Velarde', 'carmen.sotelo@empresa.com', '955632147', '1990-04-18', '2019-09-09', NULL, 500.00, 4200.00, 'Coordinadora logística', 'Urbanización El Sol 753', '2019-09-09', '36 meses', TRUE, 5, 29),
	('72654198', 'Iván Felipe', 'Cáceres', 'Mora', 'ivan.caceres@empresa.com', '966541287', '1995-12-22', '2021-11-11', NULL, 250.00, 3100.00, 'Analista de distribución', 'Av. Perú 654', '2021-11-11', '24 meses', TRUE, 5, 30),
	('73789415', 'Melissa Karina', 'Rivera', 'Del Carpio', 'melissa.rivera@empresa.com', '977894152', '1992-06-15', '2020-01-10','2024-12-31',200.00,3000.00, 'Fin de contrato', 'Calle San José 741','2020-01-10', '48 meses', FALSE, 6, NULL),
	('74821596', 'Oscar Daniel', 'Maldonado', 'Herrera', 'oscar.maldonado@empresa.com', '988215963', '1988-09-05', '2018-04-01','2025-02-15',350.00,4100.00, 'Renuncia voluntaria', 'Av. Kennedy 159','2018-04-01', '60 meses', FALSE, 1, NULL),
	('70112233', 'Carlos Eduardo', 'Mendoza', 'Benavente', 'carlos.mendoza@empresa.com', '999888777', '1982-05-20', '2015-01-15', NULL, 1200.00, 7500.00, 'Gerente de Operaciones y Canales - Jefe directo de tiendas y supervisores de caja', 'Av. Cayma 405', '2015-01-15', 'Indefinido', TRUE, 1, NULL);
	('71001122', 'Christian Omar', 'Palomino', 'Guillen', 'christian.palomino@minimarket.com', '910203040', '1996-02-12', '2025-03-01', NULL, 150.00, 1850.00, 'Cajero Minimarket - Experiencia en cuadre rápido y manejo de POS Visa/Mastercard', 'Urb. La Alameda Mz F Lt 12', '2025-03-01', '12 meses', TRUE, 1, '34'),
	('72002233', 'Diana Carolina', 'Zegarra', 'Bustamante', 'diana.zegarra@minimarket.com', '920304050', '1999-08-24', '2025-04-15', NULL, 200.00, 1900.00, 'Cajera Minimarket - Control de inventario en zona de cajas y góndolas frontales', 'Calle Melgar 304', '2025-04-15', '6 meses', TRUE, 1, '34'),
	('73003344', 'Renzo Fabrizio', 'Gutiérrez', 'Alarcón', 'renzo.gutierrez@minimarket.com', '930405060', '1994-11-03', '2024-10-01', NULL, 180.00, 2000.00, 'Cajero Turno Variable - Experiencia en recepción de mercadería y custodia de efectivo', 'Av. Lambramani 510', '2024-10-01', 'Indefinido', TRUE, 2, '34'),
	('74004455', 'Stephanie Janeth', 'Paredes', 'Villanueva', 'stephanie.paredes@minimarket.com', '940506070', '1997-05-18', '2025-01-10', NULL, NULL, 1800.00, 'Cajera Minimarket - Orientada a atención al cliente y venta sugestiva en caja', 'Jr. Bolognesi 789', '2025-01-10', '12 meses', TRUE, 2, '34'),
	('75005566', 'Álvaro Augusto', 'Cáceres', 'Tejada', 'alvaro.caceres@minimarket.com', '950607080', '1992-07-29', '2023-11-15', NULL, 250.00, 2100.00, 'Cajero Volante - Apoyo en cuadres complejos y detección de billetes falsos', 'Calle Mercaderes 115', '2023-11-15', 'Indefinido', TRUE, 3, '34'),
	('76006677', 'Melany Roxana', 'Velasquez', 'Chavez', 'melany.velasquez@minimarket.com', '960708090', '2001-01-05', '2025-05-02', NULL, NULL, 1750.00, 'Cajera Part-Time - Manejo de caja chica y atención en horas punta de tienda', 'Urb. San Isidro B-3', '2025-05-02', '6 meses', TRUE, 3, '34'),
	('77007788', 'Julio César', 'Espinoza', 'Beltrán', 'julio.espinoza@minimarket.com', '970809010', '1995-10-14', '2024-06-20', NULL, 150.00, 1950.00, 'Cajero Liquidador - Control diario de mermas y arqueo final de terminales', 'Av. Venezuela 1420', '2024-06-20', '12 meses', TRUE, 4, '34'),
	('78008899', 'Fiorella Beatriz', 'Montoya', 'Sánchez', 'fiorella.montoya@minimarket.com', '980901020', '1998-03-22', '2025-02-18', NULL, 190.00, 1850.00, 'Cajera Minimarket - Rapidez en digitación, manejo de balanza y códigos de productos', 'Psje. Santa Rosa 402', '2025-02-18', '6 meses', TRUE, 4, '34'),
	('79009911', 'Mauricio Alonso', 'Salas', 'Quintanilla', 'mauricio.salas@minimarket.com', '990102030', '1993-12-30', '2024-01-15', NULL, 300.00, 2200.00, 'Cajero Corretaje - Encargado de recargas virtuales, pagos de servicios y boveda', 'Av. Alfonso Ugarte 885', '2024-01-15', '24 meses', TRUE, 5, '34'),
	('70001133', 'Gabriela Sofia', 'Lazarte', 'Barrios', 'gabriela.lazarte@minimarket.com', '911223344', '2000-06-08', '2025-04-01', NULL, NULL, 1800.00, 'Cajera Minimarket - Responsable del orden, limpieza y stock de la zona de pago', 'Calle Garcilaso de la Vega 214', '2025-04-01', '12 meses', TRUE, 5, '34');

-- =========================================
-- TABLA: cliente
-- AUTOR: Zuriel Cangre
-- =========================================
INSERT INTO cliente (dni, nombres, aplldo_ptrno, aplldo_mtrno, crro_elctrnco, telefono, fcha_rgstro, nmro_pddos)
VALUES
	(45712398, 'Pepe', 'Quispe', 'Hurtado', 'pepe_quispe@hotmail.com', 951753654, '2026-05-21', 3),
	(70241568, 'Felipe', 'Huaroc', 'Lopez', 'felipe_huaroc@gmail.com', 987456321, '2026-02-20', 7),
	(15842639, 'Fernando', 'Olivera', 'Gomez', 'fernando_olivera@hotmail.com', 963842751, '2026-04-24', 4),
	(42369871, 'Cielo', 'Guerra', 'Garcia', 'cielo_guerra@gmail.com', 953285645, '2025-02-19', 1),
	(29517463, 'Manuel', 'Medrano', 'Padilla', 'manuel_medrano@gmail.com', 954685312, '2026-01-14', 9),
	(46123958, 'Carlos', 'Mendoza', 'Torres', 'carlos.mendoza@gmail.com', 981234567, '2026-03-15', 5),
	(71248593, 'Ana', 'Flores', 'Benitez', 'ana_flores99@hotmail.com', 945678123, '2025-11-12', 12),
	(10243958, 'Luis', 'Ramirez', 'Chavez', 'lucho_ramirez@gmail.com', 912345678, '2026-01-22', 2),
	(43958124, 'Maria', 'Gutierrez', 'Quispe', 'maria.gutierrez@outlook.com', 934567890, '2026-04-05', 8),
	(75412963, 'Jorge', 'Castillo', 'Diaz', 'jorge_castillo@gmail.com', 956789012, '2025-08-19', 15),
	(40129384, 'Lucia', 'Espinoza', 'Ramos', 'lucia.es@hotmail.com', 978901234, '2026-02-28', 4),
	(19482736, 'Pedro', 'Sanchez', 'Vargas', 'pedrosanchez@gmail.com', 990123456, '2026-05-10', 1),
	(72039481, 'Elena', 'Rojas', 'Medina', 'elena.rojas@gmail.com', 923456789, '2025-06-14', 20),
	(45120394, 'Raul', 'Velasquez', 'Cruz', 'raul_velasquez@outlook.com', 945123789, '2026-03-01', 6),
	(73948102, 'Sofia', 'Campos', 'Villanueva', 'sofia.campos@gmail.com', 967890123, '2026-05-25', 3),
	(41029384, 'Diego', 'Aguilar', 'Paredes', 'daguilar@gmail.com', 989012345, '2025-10-05', 11),
	(12938475, 'Camila', 'Morales', 'Herrera', 'camila_morales@hotmail.com', 911223344, '2026-04-18', 7),
	(48273619, 'Gabriel', 'Fuentes', 'Salazar', 'gabu.fuentes@gmail.com', 922334455, '2026-02-11', 1),
	(74918230, 'Valeria', 'Paredes', 'Guerrero', 'valeparedes@gmail.com', 933445566, '2025-12-25', 9),
	(40591827, 'Andres', 'Soto', 'Miranda', 'andres_soto@outlook.com', 944556677, '2026-01-30', 14),
	(71928304, 'Claudia', 'Tapia', 'Vega', 'clau.tapia@gmail.com', 955667788, '2026-05-02', 5),
	(42839105, 'Ricardo', 'Vargas', 'Alvarez', 'ricardovargas@hotmail.com', 966778899, '2025-09-17', 22),
	(10928374, 'Diana', 'Caceres', 'Rios', 'diana.caceres@gmail.com', 977889900, '2026-03-21', 3),
	(73849201, 'Javier', 'Muñoz', 'Reyes', 'javiermunoz@gmail.com', 988990011, '2026-04-12', 6),
	(49203948, 'Beatriz', 'Pinto', 'Lazo', 'beatriz_pinto@outlook.com', 999001122, '2025-07-09', 10),
	(12345678, 'Mateo', 'Delgado', 'Cabrera', 'mateo.delgado@gmail.com', 912398475, '2026-02-05', 4),
	(87654321, 'Rosa', 'Salas', 'Montoya', 'rosasalas@hotmail.com', 934857123, '2026-05-15', 2),
	(23456789, 'Alejandro', 'Zeballos', 'Pari', 'azeballos@gmail.com', 956284713, '2025-11-20', 13),
	(98765432, 'Gabriela', 'Ticona', 'Mamani', 'gabriela_ticona@gmail.com', 978135246, '2026-01-08', 8),
	(56473829, 'Kevin', 'Arce', 'Valdez', 'kevin.arce@gmail.com', 987321654, '2026-03-18', 5),
	(84736251, 'Patricia', 'Luna', 'Flores', 'patricia.luna@hotmail.com', 954321678, '2025-10-27', 9),
	(31579248, 'Martin', 'Cruz', 'Apaza', 'martin.cruz@gmail.com', 978654321, '2026-04-30', 2),
	(68245197, 'Natalia', 'Peralta', 'Rojas', 'natalia.peralta@outlook.com', 943216587, '2026-01-11', 7),
	(47382915, 'Erick', 'Condori', 'Mendoza', 'erick.condori@gmail.com', 965874213, '2025-08-03', 16),
	(91827364, 'Tatiana', 'Vilca', 'Torres', 'tatiana.vilca@hotmail.com', 932165478, '2026-05-06', 1),
	(35628194, 'Christian', 'Loayza', 'Puma', 'christian.loayza@gmail.com', 956741238, '2026-02-16', 4),
	(74581923, 'Marisol', 'Nina', 'Calle', 'marisol.nina@outlook.com', 989741256, '2025-12-08', 11),
	(28194736, 'Hugo', 'Mamani', 'Quispe', 'hugo.mamani@gmail.com', 944785632, '2026-03-09', 6),
	(63728195, 'Karen', 'Yucra', 'Soto', 'karen.yucra@hotmail.com', 977412365, '2026-05-19', 0);

-- =========================================
-- TABLA: prdcto_prmcon
-- AUTOR: Zuriel Cangre
-- =========================================
INSERT INTO prdcto_prmcon (id_prdcto, id_lote, id_prmcon)
VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 5, 1),
	(4, 6, 3),
	(5, 7, 3),
	(6, 10, 3),
	(7, 3, 4),
	(8, 8, 4),
	(9, 13, 4),
	(10, 18, 4),
	(11, 4, 5),
	(12, 9, 5),
	(13, 14, 5),
	(14, 19, 5),
	(15, 24, 5),
	(16, 11, 2),
	(17, 12, 2),
	(18, 15, 2),
	(19, 20, 2),
	(20, 25, 2);

-- =========================================
-- TABLA: promocion
-- AUTOR: Zuriel Cangre
-- =========================================
INSERT INTO promocion (nmbre_promocon, fecha_inicio, fecha_fin, descuento, cntdad_mnma, descripcion)
VALUES
	('Dia de la Madre', '2026-05-01', '2026-05-15', 1, '20% de descuento en la seccion de chocolates y regalos.', 20.00),
	('Aniversario', '2026-09-01', '2026-09-30', 1, '10% de descuento en toda la tienda por nuestro mes de aniversario.', 10.00),
	('Dia del Padre', '2026-06-10', '2026-06-21', 1, '20% de descuento en la seccion de regalos.', 20.00),
	('Remate', '2026-05-29', '2026-05-31', 2, '50% de descuento en productos seleccionados.', 50.00),
	('Descuento 3x2', '2026-05-28', '2026-06-30', 2, '100% de descuento en el 3er producto y en ciertos productos seleccionados.', 100.00),
	('Fiestas Patrias', '2026-07-20 00:00:00', '2026-07-31 23:59:59', 1, '25% de descuento en productos seleccionados por Fiestas Patrias.', 25.00),
	('Navidad', '2026-12-01 00:00:00', '2026-12-25 23:59:59', 1, '30% de descuento en chocolates, panetones y regalos navideños.', 30.00),
	('Black Friday', '2026-11-27 00:00:00', '2026-11-29 23:59:59', 2, '40% de descuento en productos seleccionados durante Black Friday.', 40.00),
	('Cyber Days', '2026-04-15 00:00:00', '2026-04-20 23:59:59', 1, '35% de descuento en compras realizadas por la web.', 35.00),
	('Vuelta al Colegio', '2026-02-15 00:00:00', '2026-03-15 23:59:59', 3, '15% de descuento en útiles escolares y productos educativos.', 15.00),
	('San Valentín', '2026-02-01 00:00:00', '2026-02-14 23:59:59', 1, '20% de descuento en chocolates, flores y regalos para parejas.', 20.00),
	('Semana Santa', '2026-03-25 00:00:00', '2026-04-05 23:59:59', 2, '18% de descuento en productos seleccionados durante Semana Santa.', 18.00),
	('Cliente Frecuente', '2026-01-01 00:00:00', '2026-12-31 23:59:59', 5, '12% de descuento para clientes que compren 5 o más productos.', 12.00),
	('Fin de Temporada', '2026-08-15 00:00:00', '2026-08-31 23:59:59', 2, '45% de descuento en productos de temporada.', 45.00),
	('Combo Familiar', '2026-06-01 00:00:00', '2026-06-30 23:59:59', 4, '30% de descuento en compras de 4 o más productos participantes.', 30.00);

-- =========================================
-- TABLA: mtdo_pgo
-- AUTOR: Zuriel Cangre
-- =========================================
INSERT INTO mtdo_pgo (nmbre_mtdo_pgo, entidad, prcntje_cmson)
VALUES
	('Efectivo', 'Ninguna', 0.00),
	('Yape', 'BCP', 0.00),
	('Plin', 'Interbank', 0.00),
	('Tarjeta de Crédito', 'Visa', 5.00),
	('Tarjeta de Débito', 'Mastercard', 5.00);

-- =========================================
-- TABLA: producto
-- AUTOR: 
-- =========================================
INSERT INTO producto (id_producto, nmbre_prdcto, descripcion, precio_actual, id_ctgra) 
VALUES
	('Coca Cola 500ml', 'Bebida gaseosa personal', 3.50, 1),
	('Papas Inka', 'Snack salado en bolsa de 100g', 2.80, 2),
	('Leche Laive 1L', 'Leche fresca pasteurizada', 4.20, 3),
	('Detergente Líquido Zate', 'Formato Unico Liquido 789ml', 12.90, 4),
	('Shampoo Herbal', 'Shampoo para cuidado personal 400ml', 15.50, 5),
	('Pan Francés', 'Panadería fresca del día', 0.50, 6),
	('Pepsi 500ml', 'Bebida gaseosa personal', 3.30, 1),
	('Agua San Luis 625ml', 'Agua mineral sin gas', 2.00, 1),
	('Galletas Oreo 6u', 'Galletas rellenas de vainilla', 2.50, 2),
	('Chocolate Sublime', 'Chocolate con maní', 1.80, 2),
	('Yogurt Gloria Fresa 1L', 'Yogurt sabor fresa', 6.90, 3),
	('Queso Fresco Bonlé 500g', 'Queso fresco pasteurizado', 9.50, 3),
	('Lavavajilla Sapolio 900ml', 'Limpiador líquido para vajilla', 7.80, 4),
	('Lejía Clorox 2L', 'Desinfectante para el hogar', 6.50, 4),
	('Jabón Dove 90g', 'Jabón para cuidado personal', 4.20, 5),
	('Pasta Dental Colgate 90g', 'Crema dental con flúor', 5.90, 5),
	('Pan Integral', 'Pan integral artesanal', 0.80, 6),
	('Croissant de Mantequilla', 'Producto de panadería horneado', 2.20, 6),
	('Red Bull 250ml', 'Bebida energizante', 7.50, 1),
	('Maní Salado 200g', 'Snack tostado y salado', 3.90, 2),
	('Mantequilla Gloria 200g', 'Mantequilla pasteurizada', 8.40, 3),
	('Sprite 500ml', 'Bebida gaseosa sabor limón', 3.20, 1),
	('Fanta Naranja 500ml', 'Bebida gaseosa sabor naranja', 3.20, 1),
	('Chifles Piuranos 150g', 'Snack de plátano frito crocante', 4.50, 2),
	('Mix de Frutos Secos 200g', 'Mezcla de maní, pasas y pecanas', 8.90, 2),
	('Leche Evaporada Gloria 400g', 'Leche evaporada entera', 4.80, 3),
	('Huevos Blancos x12', 'Docena de huevos frescos', 9.90, 3),
	('Limpiavidrios Sapolio 650ml', 'Limpiador para superficies de vidrio', 8.50, 4),
	('Desinfectante Poett 900ml', 'Desinfectante aromático para pisos', 7.20, 4),
	('Acondicionador Sedal 340ml', 'Acondicionador para cabello', 14.90, 5),
	('Desodorante Nivea Men 150ml', 'Desodorante en aerosol', 13.50, 5),
	('Monster Energy 473ml', 'Bebida energizante sabor original', 9.50, 7),
	('Volt Blue 300ml', 'Bebida energizante gasificada', 4.50, 7),
	('Red Bull Sugar Free 250ml', 'Bebida energizante sin azúcar', 8.50, 7),
	('Jamón Inglés 250g', 'Jamón cocido en lonchas', 12.90, 8),
	('Salchicha Hot Dog x5', 'Salchichas de cerdo precocidas', 8.50, 8),
	('Chorizo Parrillero 500g', 'Chorizo artesanal para parrilla', 16.90, 8),
	('Miel de Abeja 500g', 'Miel pura de abeja', 18.50, 9),
	('Gelatina de Colágeno 100g', 'Gelatina sin sabor de origen animal', 6.90, 9),
	('Grasa de Cerdo 500g', 'Manteca de cerdo refinada', 7.50, 9),
	('Esponja Multiuso x2', 'Esponjas para limpieza doméstica', 3.50, 10),
	('Bolsas de Basura x20', 'Bolsas resistentes de 35 litros', 5.90, 10),
	('Papel Aluminio 10m', 'Rollo de papel aluminio para cocina', 6.50, 10),
	('Dog Chow Adultos 1kg', 'Alimento balanceado para perros', 15.90, 11),
	('Whiskas Atún 85g', 'Alimento húmedo para gatos', 3.80, 11),
	('Arena Sanitaria 5kg', 'Arena absorbente para gatos', 14.50, 11),
	('Cerveza Pilsen 620ml', 'Cerveza rubia lager', 7.50, 12),
	('Vino Tabernero Borgoña 750ml', 'Vino tinto semiseco', 18.90, 12),
	('Ron Cartavio Black 750ml', 'Ron añejado premium', 42.00, 12),
	('Agua San Mateo 625ml', 'Agua mineral sin gas', 2.20, 13),
	('Agua Cielo 2.5L', 'Agua purificada', 4.50, 13),
	('Agua San Luis 7L', 'Bidón de agua para consumo familiar', 8.90, 13)
	('Guaraná 500ml', 'Bebida gaseosa sabor guaraná', 3.20, 1),
	('Té Frío Free Tea Limón 500ml', 'Bebida refrescante sabor limón', 4.50, 1),
	('Doritos Queso 150g', 'Snack de maíz sabor queso', 5.90, 2),
	('Pringles Original 124g', 'Papas fritas en envase tubular', 10.50, 2),
	('Leche Deslactosada Gloria 1L', 'Leche UHT deslactosada', 5.20, 3),
	('Yogurt Griego Gloria 150g', 'Yogurt griego natural', 3.80, 3),
	('Limpiador CIF Crema 750g', 'Limpiador multipropósito en crema', 8.90, 4),
	('Ambientador Glade Lavanda', 'Aromatizador de ambientes', 11.50, 4),
	('Cepillo Dental Oral-B', 'Cepillo dental de cerdas suaves', 6.90, 5),
	('Talco Mennen 200g', 'Talco corporal refrescante', 9.90, 5),
	('Pan de Molde Integral', 'Pan integral rebanado', 7.50, 6),
	('Empanada de Pollo', 'Empanada horneada rellena de pollo', 3.50, 6),
	('Monster Mango Loco 473ml', 'Bebida energizante sabor mango', 10.50, 7),
	('Tocino Ahumado 250g', 'Tocino de cerdo ahumado', 13.90, 8),
	('Propóleo Natural 30ml', 'Extracto natural derivado de abejas', 19.90, 9),
	('Fósforos Extra Largos', 'Caja de fósforos para cocina', 2.50, 10),
	('Galletas para Perro 500g', 'Snack para perros adultos', 8.90, 11),
	('Cerveza Cusqueña Dorada 620ml', 'Cerveza premium lager', 8.50, 12),
	('Agua Vida 625ml', 'Agua purificada sin gas', 2.10, 13);

-- =========================================
-- TABLA: hstral_prco
-- AUTOR: 
-- =========================================
INSERT INTO hstral_prco (id_hstral_prco, fcha_cmbo, prco_antror, prco_nvo, id_producto)
VALUES
	('2026-05-15 10:00:00', 3.00, 3.50, 1),
	('2026-05-15 10:30:00', 2.50, 2.80, 2),
	('2026-05-16 09:00:00', 3.80, 4.20, 3),
	('2026-05-16 11:00:00', 11.50, 12.90, 4),
	('2026-05-17 08:30:00', 14.00, 15.50, 5),
	('2026-05-12 06:30:00', 0.40, 0.50, 6),
	('2026-05-01 10:00:00', 3.00, 3.30, 7),
	('2026-05-14 10:05:00', 3.20, 3.50, 8),
	('2026-05-15 09:45:00', 1.80, 2.00, 9),
	('2026-05-20 13:25:00', 6.80, 7.50, 19),
	('2026-05-08 11:40:00', 2.20, 2.50, 11),
	('2026-05-08 11:45:00', 1.50, 1.80, 12),
	('2026-05-10 15:20:00', 3.50, 3.90, 20),
	('2026-05-27 08:30:00', 6.20, 6.90, 14),
	('2026-05-12 08:35:00', 8.80, 9.50, 15),
	('2026-05-25 09:15:00', 7.90, 8.40, 16),
	('2026-05-18 12:10:00', 8.50, 9.50, 32),
	('2026-05-19 12:20:00', 4.00, 4.50, 33),
	('2026-05-18 12:30:00', 7.90, 8.50, 34),
	('2026-05-08 10:45:00', 11.90, 12.90, 35),
	('2026-05-04 10:50:00', 7.80, 8.50, 36),
	('2026-05-10 10:55:00', 15.20, 16.90, 37),
	('2026-05-12 14:00:00', 17.00, 18.50, 38),
	('2026-05-16 14:05:00', 6.20, 6.90, 39),
	('2026-05-15 14:10:00', 6.80, 7.50, 40),
	('2026-05-14 09:00:00', 3.00, 3.50, 41),
	('2026-05-09 09:05:00', 5.20, 5.90, 42),
	('2026-05-11 09:10:00', 5.80, 6.50, 43),
	('2026-05-10 16:30:00', 14.20, 15.90, 44),
	('2026-05-10 16:35:00', 3.20, 3.80, 45);

-- =========================================
-- TABLA: categoria
-- AUTOR: Jose Bernedo
-- =========================================
INSERT INTO categoria (nmbre_ctgra, mnmo_edd) 
VALUES
	('Bebidas Gaseosa', 3),
	('Snacks', 1),
	('Lácteos', 1),
	('Productos de Limpieza', 10),
	('Cuidado Personal', 10),
	('Panadería', 1),
	('Bebidas Energizantes', 15),
	('Carnes y Embutidos', 1),
	('Productos Congelados', 1),
	('Útiles del Hogar', 10),
	('Mascotas', 10),
	('Bebidas Alcoholicas', 18)
	('Agua', 1);

-- =========================================
-- TABLA: proveedor
-- AUTOR: Jose Bernedo
-- =========================================
INSERT INTO proveedor (nmbre_prvdor, crro_elctrnco, telefono, direccion) 
VALUES
	('Distribuidora Andina', 'contacto@andina.com', '987654321', 'Av. Principal 123'),
	('Comercial Lima', 'ventas@comlima.com', '912345678', 'Jr. Los Olivos 456'),
	('Abarrotes del Sur', 'info@abarrotessur.com', '934567812', 'Calle Comercio 789'),
	('Proveedores Unidos', 'soporte@provunidos.com', '956781234', 'Av. Industrial 321'),
	('Mercantil Express', 'pedidos@mercantilx.com', '978123456', 'Jr. Central 654'),
	('Distribuciones Nova', 'admin@nova.com', '991234567', 'Calle Las Flores 987');
	('Bebidas del Pacífico', 'ventas@bebidaspacifico.com', '985741236', 'Av. Costanera 741'),
	('Lácteos Nacionales', 'contacto@lacteosnacionales.com', '973258741', 'Jr. Los Ganaderos 258'),
	('Panificadora Santa Rosa', 'pedidos@pansantarosa.com', '964125873', 'Av. Panamericana 456'),
	('Cárnicos Premium', 'ventas@carnicospremium.com', '952741863', 'Mercado Mayorista Zona B'),
	('Mascotilandia Distribuciones', 'compras@mascotilandia.com', '941258736', 'Av. Los Veterinarios 852'),
	('Importadora Energy Drink Perú', 'info@energydrinkperu.com', '936985214', 'Parque Industrial Mz. D Lt. 12'),
	('Bodegas y Licores del Sur', 'pedidos@licoresdelsur.com', '948753621', 'Av. República 963'),
	('Agua y Vida Distribuciones', 'ventas@aguayvida.com', '961357824', 'Jr. Los Manantiales 147'),
	('Hogar Express SAC', 'contacto@hogarexpress.com', '954812367',	 'Av. Las Industrias 753'),
	('Productos Naturales Andinos', 'administracion@naturalesandinos.com', '978456321', 'Calle Las Palmeras 258');

-- =========================================
-- TABLA: presentacion
-- AUTOR: Jose Bernedo
-- =========================================
INSERT INTO presentacion (id_presentacion, nmbre_prsntcon, peso_gramos)
VALUES
	(1, 'Botella 500ml', 524),
	(2, 'Bolsa 100g', 114),
	(3, 'Caja 1L', 1015),
	(4, 'Lata 355ml', 384),
	(5, 'Paquete 250g', 250),
	(6, 'Envase 789ml', 802),
	(7, 'Botella 2.5L', 2550),
	(8, 'Botella 750ml', 780),
	(9, 'Lata 250ml', 270),
	(10, 'Bolsa 1kg', 1000),
	(11, 'Paquete 500g', 500),
	(12, 'Frasco 200g', 220),
	(13, 'Envase 400g', 415),
	(14, 'Bandeja 500g', 520),
	(15, 'Docena', 720),
	(16, 'Sachet 85g', 85),
	(17, 'Rollo 10m', 180),
	(18, 'Aerosol 150ml', 175),
	(19, 'Bidón 7L', 7100),
	(20, 'Bolsa 5kg', 5000),
	(21, 'Caja x12 Unidades', 4800);

-- =========================================
-- TABLA: lote
-- AUTOR: Jose Bernedo
-- =========================================
INSERT INTO lote (cantidad, precio_compra, precio_venta, fcha_vncmnto, fcha_ingrso, id_proveedor, id_producto, id_presentacion)
VALUES
	(100, 8.50, 12.00, '2027-01-15', '2026-05-01', 1, 1, 1),
	(80, 15.00, 22.00, '2027-02-28', '2026-05-05', 2, 2, 1),
	(150, 4.20, 6.50, '2026-12-31', '2026-05-10', 1, 3, 2),
	(60, 18.00, 28.00, '2027-03-15', '2026-05-12', 3, 4, 1),
	(120, 7.00, 10.50, '2027-04-30', '2026-05-20', 2, 5, 2),
	(200, 3.50, 5.00, '2027-06-30', '2026-06-01', 1, 6, 3),
	(90, 12.00, 18.00, '2027-07-15', '2026-06-05', 4, 7, 1),
	(70, 20.00, 30.00, '2027-08-31', '2026-06-10', 3, 8, 1),
	(110, 9.50, 14.00, '2027-09-30', '2026-06-15', 5, 9, 2),
	(180, 5.80, 8.50, '2027-10-31', '2026-06-20', 2, 10, 3),
	(140, 6.80, 10.20, '2027-11-30', '2026-07-01', 1, 11, 1),
	(95, 14.50, 21.00, '2027-12-15', '2026-07-05', 2, 12, 2),
	(220, 2.90, 4.50, '2027-09-30', '2026-07-10', 3, 13, 3),
	(75, 17.00, 25.50, '2028-01-31', '2026-07-15', 4, 14, 1),
	(130, 8.20, 12.50, '2027-08-31', '2026-07-20', 5, 15, 2),
	(160, 5.50, 8.00, '2027-10-15', '2026-07-25', 1, 16, 3),
	(85, 19.00, 29.00, '2028-02-28', '2026-08-01', 2, 17, 1),
	(250, 3.20, 4.80, '2027-12-31', '2026-08-05', 3, 18, 2),
	(105, 11.50, 17.50, '2028-03-31', '2026-08-10', 4, 19, 1),
	(170, 6.10, 9.20, '2027-11-15', '2026-08-15', 5, 20, 3),
	(125, 7.40, 11.20, '2028-04-30', '2026-09-01', 1, 21, 2),
	(90, 16.80, 25.00, '2028-05-15', '2026-09-05', 2, 22, 1),
	(210, 3.10, 4.90, '2027-12-31', '2026-09-10', 3, 23, 3),
	(65, 22.50, 34.00, '2028-06-30', '2026-09-15', 4, 24, 1),
	(150, 8.90, 13.50, '2028-01-31', '2026-09-20', 5, 25, 2),
	(180, 4.80, 7.20, '2028-03-31', '2026-09-25', 1, 26, 3),
	(110, 13.20, 19.80, '2028-07-31', '2026-10-01', 2, 27, 1),
	(240, 2.70, 4.20, '2028-02-28', '2026-10-05', 3, 28, 2),
	(95, 18.50, 27.90, '2028-08-31', '2026-10-10', 4, 29, 1),
	(175, 5.90, 8.90, '2028-05-31', '2026-10-15', 5, 30, 3),
	(45, 2.40, 3.50, '2026-06-10', '2026-05-20', 7, 53, 1),
	(30, 3.20, 4.50, '2026-06-12', '2026-05-25', 7, 54, 1),
	(25, 7.20, 9.50, '2026-06-15', '2026-05-30', 12, 32, 4),
	(35, 6.80, 8.50, '2026-06-18', '2026-05-28', 12, 34, 9),
	(60, 4.10, 5.90, '2026-06-20', '2026-05-22', 2, 55, 5),
	(36, 28, 8.20, 10.50, '2026-06-25', '2026-06-01', 2, 56, 12),
	(40, 4.10, 5.20, '2026-07-01', '2026-06-05', 8, 57, 3),
	(32, 2.90, 3.80, '2026-07-05', '2026-06-08', 8, 58, 12),
	(22, 7.00, 8.90, '2026-07-12', '2026-06-10', 15, 59, 13),
	(18, 8.90, 11.50, '2026-08-01', '2026-06-15', 15, 60, 18),
	(35, 3.80, 4.20, '2026-06-08', '2026-05-28', 8, 3, 3),
	(20, 8.50, 9.50, '2026-06-12', '2026-05-30', 8, 12, 11),
	(25, 5.80, 6.90, '2026-06-14', '2026-06-01', 8, 11, 3),
	(18, 11.50, 12.90, '2026-06-18', '2026-06-03', 10, 35, 5),
	(22, 7.20, 8.50, '2026-06-20', '2026-06-05', 10, 36, 5),
	(40, 0.35, 0.50, '2026-06-07', '2026-06-06', 9, 6, 5),
	(30, 0.60, 0.80, '2026-06-10', '2026-06-08', 9, 17, 5),
	(15, 2.80, 3.50, '2026-06-15', '2026-06-10', 9, 64, 5),
	(50, 2.70, 3.20, '2026-07-01', '2026-06-12', 7, 22, 1),
	(45, 2.70, 3.20, '2026-07-10', '2026-06-15', 7, 23, 1);

-- =========================================
-- TABLA: inventario
-- AUTOR: Jose Bernedo
-- =========================================
INSERT INTO inventario (id_invntro, cantidad, observacion, id_lote)
VALUES
	(95, 'Stock disponible luego de ventas por promoción Día de la Madre.', 1),
	(72, 'Inventario actualizado tras ventas regulares.', 2),
	(140, 'Stock disponible para campaña de remate.', 3),
	(55, 'Algunas unidades reservadas para pedidos especiales.', 4),
	(110, 'Inventario afectado por promoción de chocolates y regalos.', 5),
	(185, 'Stock suficiente para la campaña Día del Padre.', 6),
	(80, 'Productos con alta rotación durante el mes.', 7),
	(62, 'Existencias reducidas por promoción 3x2.', 8),
	(98, 'Inventario revisado y validado.', 9),
	(165, 'Stock disponible para ventas de temporada.', 10),
	(120, 'Existencias actualizadas tras conteo físico.', 11),
	(88, 'Parte del lote reservado para ventas online.', 12),
	(200, 'Stock alto para futuras promociones.', 13),
	(58, 'Inventario reducido por alta demanda.', 14),
	(135, 'Productos disponibles para campaña de aniversario.', 15),
	(150, 'Stock disponible para promociones de temporada.', 16),
	(76, 'Inventario actualizado después de ventas semanales.', 17),
	(230, 'Existencias suficientes para atender la demanda proyectada.', 18),
	(92, 'Productos disponibles para venta inmediata.', 19),
	(160, 'Stock revisado durante auditoría interna.', 20),
	(118, 'Inventario afectado por ventas de campaña promocional.', 21),
	(84, 'Existencias reservadas para clientes frecuentes.', 22),
	(195, 'Stock disponible para reposición en tienda.', 23),
	(57, 'Inventario reducido por ventas de productos premium.', 24),
	(142, 'Productos disponibles para promoción especial.', 25),
	(168, 'Stock actualizado tras ingreso de mercancía.', 26),
	(101, 'Existencias disponibles para ventas online y físicas.', 27),
	(225, 'Inventario con alta disponibilidad para próximas campañas.', 28),
	(87, 'Stock reducido por alta rotación del producto.', 29),
	(163, 'Inventario validado y listo para comercialización.', 30);

-- =========================================
-- TABLA: pedido
-- AUTOR: Zuriel Cangre
-- =========================================
INSERT INTO pedido (precio_total, dscnto_ttal, fecha, id_clbrdor, id_cliente)
VALUES
	(14.50, NULL, '2026-05-20 10:30:00', 36, 1),
	(12.60, 1.40, '2026-05-21 11:15:00', 39, 2),
	(11.00, NULL, '2026-05-21 14:20:00', 41, 3),
	(29.40, NULL, '2026-05-22 08:45:00', 44, 4),
	(27.70, 2.30, '2026-05-22 17:00:00', 38, 5),
	(18.70, NULL, '2026-05-23 09:15:00', 41, 6),
	(21.90, 5.00, '2026-05-23 12:30:00', 39, 7),
	(26.40, NULL, '2026-05-24 15:10:00', 36, 8),
	(12.30, 2.80, '2026-05-24 19:40:00', 44, 9),
	(14.50, NULL, '2026-05-25 10:05:00', 37, 10),
	(33.00, NULL, '2026-05-25 11:50:00', 35, 11),
	(26.30, 3.20, '2026-05-25 16:22:00', 39, 12),
	(12.80, NULL, '2026-05-26 07:55:00', 36, 13),
	(15.90, NULL, '2026-05-26 13:40:00', 43, 14),
	(25.20, NULL, '2026-05-26 21:10:00', 44, 15),
	(14.00, 1.50, '2026-05-20 09:00:00', 40, 16),
	(25.90, NULL, '2026-05-20 14:15:00', 36, 17),
	(8.20, NULL, '2026-05-21 16:30:00', 38, 18),
	(14.30, 1.80, '2026-05-22 11:00:00', 41, 19),
	(31.90, NULL, '2026-05-22 15:45:00', 38, 20),
	(25.50, NULL, '2026-05-23 10:20:00', 35, 21),
	(29.00, 2.60, '2026-05-23 18:10:00', 38, 22),
	(7.60, NULL, '2026-05-24 09:30:00', 39, 23),
	(19.10, 1.70, '2026-05-24 13:15:00', 44, 24),
	(33.70, NULL, '2026-05-25 14:50:00', 43, 25),
	(14.10, NULL, '2026-05-25 17:35:00', 37, 26),
	(22.30, 1.20, '2026-05-26 11:10:00', 42, 27),
	(15.60, NULL, '2026-05-26 16:00:00', 42, 28),
	(19.90, 2.00, '2026-05-27 08:30:00', 40, 29),
	(24.50, NULL, '2026-05-22 14:00:00', 38, 1),
	(20.10, NULL, '2026-05-24 18:20:00', 35, 1),
	(22.20, NULL, '2026-05-22 19:10:00', 38, 2),
	(20.30, 0.80, '2026-05-25 12:00:00', 40, 5),
	(32.00, 4.80, '2026-05-26 20:15:00', 42, 13),
	(31.30, NULL, '2026-05-20 11:30:00', 39, 1),
	(8.00, 0.40, '2026-05-27 10:00:00', 41, 22),
	(39.50, NULL, '2026-05-31 05:25:23.188579', 40, 1),
	(30.20, NULL, '2026-05-31 05:25:23.928978', 42, 1);

-- =========================================
-- TABLA: dtlle_pddo
-- AUTOR: 
-- =========================================
INSERT INTO dtlle_pddo
(id_pedido, id_producto, unidades, precio_unidad, precio_final)
VALUES
	(1, 1, 2, 3.50, 7.00),
	(1, 9, 3, 2.50, 7.50),
	(2, 3, 1, 4.20, 4.20),
	(2, 15, 2, 4.20, 8.40),
	(3, 20, 2, 3.90, 7.80),
	(3, 22, 1, 3.20, 3.20),
	(4, 31, 1, 13.50, 13.50),
	(4, 44, 1, 15.90, 15.90),
	(5, 52, 2, 8.90, 17.80),
	(5, 7, 3, 3.30, 9.90),
	(6, 18, 4, 2.20, 8.80),
	(6, 27, 1, 9.90, 9.90),
	(7, 33, 2, 4.50, 9.00),
	(7, 35, 1, 12.90, 12.90),
	(8, 47, 1, 7.50, 7.50),
	(8, 48, 1, 18.90, 18.90),
	(9, 53, 2, 3.20, 6.40),
	(9, 55, 1, 5.90, 5.90),
	(10, 58, 2, 3.80, 7.60),
	(10, 61, 1, 6.90, 6.90),
	(11, 63, 3, 7.50, 22.50),
	(11, 65, 1, 10.50, 10.50),
	(12, 69, 2, 8.90, 17.80),
	(12, 70, 1, 8.50, 8.50),
	(13, 71, 4, 2.10, 8.40),
	(13, 50, 2, 2.20, 4.40),
	(14, 12, 1, 9.50, 9.50),
	(14, 23, 2, 3.20, 6.40),
	(15, 40, 1, 7.50, 7.50),
	(15, 42, 3, 5.90, 17.70).
	(16, 2, 2, 2.80, 5.60),
	(16, 21, 1, 8.40, 8.40),
	(17, 4, 1, 12.90, 12.90),
	(17, 14, 2, 6.50, 13.00),
	(18, 6, 10, 0.50, 5.00),
	(18, 17, 4, 0.80, 3.20),
	(19, 10, 3, 1.80, 5.40),
	(19, 25, 1, 8.90, 8.90),
	(20, 28, 2, 8.50, 17.00),
	(20, 30, 1, 14.90, 14.90),
	(21, 34, 1, 8.50, 8.50),
	(21, 36, 2, 8.50, 17.00),
	(22, 38, 1, 18.50, 18.50),
	(22, 41, 3, 3.50, 10.50),
	(23, 45, 2, 3.80, 7.60);
	(24, 58, 2, 3.80, 7.60),
	(24, 60, 1, 11.50, 11.50),
	(25, 62, 2, 9.90, 19.80),
	(25, 66, 1, 13.90, 13.90),
	(26, 1, 3, 3.50, 10.50),
	(26, 10, 2, 1.80, 3.60),
	(27, 22, 2, 3.20, 6.40),
	(27, 44, 1, 15.90, 15.90),
	(28, 33, 2, 4.50, 9.00),
	(28, 50, 3, 2.20, 6.60),
	(29, 35, 1, 12.90, 12.90),
	(29, 41, 2, 3.50, 7.00),
	(30, 12, 1, 9.50, 9.50),
	(30, 63, 2, 7.50, 15.00),
	(31, 3, 2, 4.20, 8.40),
	(31, 20, 3, 3.90, 11.70),
	(32, 54, 4, 4.50, 18.00),
	(32, 71, 2, 2.10, 4.20),
	(33, 27, 1, 9.90, 9.90),
	(33, 57, 2, 5.20, 10.40),
	(34, 31, 1, 13.50, 13.50),
	(34, 38, 1, 18.50, 18.50),
	(35, 6, 8, 0.50, 4.00),
	(35, 17, 5, 0.80, 4.00),
	(37, 28, 2, 8.50, 17.00),
	(37, 47, 3, 7.50, 22.50),
	(38, 7, 4, 3.30, 13.20),
	(38, 70, 2, 8.50, 17.00),
	(36, 8, 2, 2.00, 4.00),
	(36, 6, 3, 0.50, 1.50),
  	(36, 4, 2, 12.90, 25.80);

-- =========================================
-- TABLA: prcso_pgo
-- AUTOR: 
-- =========================================
INSERT INTO prcso_pgo
(id_prcso_pgo, comision, ingrso_nto, id_pedido, id_mtdo_pgo)
VALUES
	(1, 0.00, 14.50, 1, 1),
	(2, 0.38, 12.22, 2, 2),
	(3, 0.00, 11.00, 3, 1),
	(4, 0.88, 28.52, 4, 2),
	(5, 0.00, 27.70, 5, 3),
	(6, 0.00, 18.70, 6, 1),
	(7, 0.00, 21.90, 7, 4),
	(8, 0.79, 25.61, 8, 2),
	(9, 0.00, 12.30, 9, 3),
	(10, 0.00, 14.50, 10, 1),
	(11, 1.00, 32.00, 11, 2),
	(12, 0.00, 26.30, 12, 4),
	(13, 0.00, 12.80, 13, 1),
	(14, 0.48, 15.42, 14, 2),
	(15, 0.00, 25.20, 15, 3),
	(16, 0.42, 13.58, 16, 2),
	(17, 0.00, 25.90, 17, 1),
	(18, 0.00, 8.20, 18, 4),
	(19, 0.43, 13.87, 19, 2),
	(20, 0.00, 31.90, 20, 3),
	(21, 0.77, 24.73, 21, 2),
	(22, 0.00, 29.00, 22, 1),
	(23, 0.00, 7.60, 23, 4),
	(24, 0.57, 18.53, 24, 2),
	(25, 0.00, 33.70, 25, 3),
	(26, 0.00, 14.10, 26, 1),
	(27, 0.67, 21.63, 27, 2),
	(28, 0.00, 15.60, 28, 4),
	(29, 0.60, 19.30, 29, 2),
	(30, 0.00, 24.50, 30, 1),
	(31, 0.60, 19.50, 31, 2),
	(32, 0.00, 22.20, 32, 3),
	(33, 0.61, 19.69, 33, 2),
	(34, 0.96, 31.04, 34, 2),
	(35, 0.00, 8.00, 35, 1),
	(36, 0.00, 39.50, 37, 3),
	(37, 0.91, 29.29, 38, 2),
	(38, 0.00, 31.30, 36, 1)

-- =========================================
-- TABLA: merma
-- AUTOR: Zuriel Cangre
-- =========================================
INSERT INTO merma (nmbre_mrma, descripcion)
VALUES
	('Producto Vencido', 'Fecha de caducidad superada en el estante de exhibición.'),
	('Rotura por Manipulación', 'Envase roto debido a una caída durante el reabastecimiento.'),
	('Empaque Dañado', 'Enpaque aplastada/roto a causa desconocida en el almacén que dejó expuesto el producto interior.'),
	('Falla de Cadena de Frío', 'Deterioro de producto por corte de energía temporal en la vitrina refrigerada.'),
	('Deterioro de Fábrica', 'Latas/envases abolladas detectadas al momento de recepcionar el lote.'),
	('Contaminación del Producto', 'Producto afectado por derrame de sustancias externas que comprometen su consumo.'),
	('Daño por Humedad', 'Producto deteriorado debido a exposición prolongada a humedad en almacén.'),
	('Infestación de Plagas', 'Presencia de insectos o roedores que contaminaron el producto almacenado.'),
	('Error de Etiquetado', 'Producto con etiqueta incorrecta o ilegible que impide su comercialización.'),
	('Sellado Defectuoso', 'Envase con cierre defectuoso que compromete la conservación del contenido.'),
	('Oxidación del Producto', 'Alteración física o química del producto debido a exposición al aire.'),
	('Derrame de Contenido', 'Pérdida parcial o total del contenido por fuga en el envase.'),
	('Daño por Transporte Interno', 'Producto afectado durante el traslado entre áreas del establecimiento.'),
	('Exposición Solar', 'Deterioro causado por exposición prolongada a luz solar directa.'),
	('Producto Deformado', 'Alteración de la forma original del producto que afecta su presentación comercial.'),
	('Error de Almacenamiento', 'Producto almacenado en condiciones no adecuadas según especificaciones del fabricante.'),
	('Presencia de Moho', 'Desarrollo de hongos visibles que hacen inviable la venta del producto.'),
	('Lote Retirado del Mercado', 'Producto retirado por disposición del fabricante o autoridad sanitaria.'),
	('Daño por Congelamiento', 'Producto afectado por temperaturas inferiores a las recomendadas.'),
	('Mezcla Accidental de Productos', 'Producto contaminado por contacto con otros productos incompatibles.'),
	('Manipulación Inadecuada del Cliente', 'Daño ocasionado por clientes durante la exhibición o selección del producto.'),
	('Golpe en Estantería', 'Producto dañado por impacto contra mobiliario de almacenamiento o exhibición.'),
	('Pérdida de Calidad Organoléptica', 'Cambio de color, olor o textura que afecta la calidad percibida del producto.'),
	('Fuga de Refrigerante', 'Producto afectado por incidente relacionado con equipos de refrigeración.'),
	('Recepción en Mal Estado', 'Producto recibido con defectos visibles que impiden su comercialización.');

-- =========================================
-- TABLA: dtlle_mrma
-- AUTOR: 
-- =========================================
INSERT INTO dtlle_mrma (id_dtlle_mrma, cantidad, descripcion, id_merma, id_lote) 
VALUES
	(5, 'Se encontraron productos vencidos durante la revisión de inventario mensual.', 1, 1),
	(3, 'Algunas unidades sufrieron roturas durante el reabastecimiento de estanterías.', 2, 4),
	(4, 'Se detectaron empaques dañados antes de su exhibición para la promoción 3x2.', 3, 8),
	(2, 'Productos refrigerados afectados por un corte temporal de energía.', 4, 10),
	(6, 'Se recibieron envases abollados al momento de ingresar el lote.', 5, 13),
	(3, 'Productos contaminados por derrame accidental en almacén.', 6, 16),
	(5, 'Daño por humedad detectado durante inspección de almacén.', 7, 18),
	(2, 'Productos retirados por presencia de plagas en el área de almacenamiento.', 8, 21),
	(4, 'Etiquetas ilegibles detectadas antes de la venta al público.', 9, 24),
	(3, 'Envases con sellado defectuoso identificados en control de calidad.', 10, 27);

-- ======================================================
-- 						--- UPDATE ---
-- ======================================================

-- =========================================
-- TABLA: lugar
-- AUTOR: Brysett Valenzuela
-- =========================================
UPDATE lugar
SET distrito = 'Cayma',
    provincia = 'Arequipa'
WHERE id_lugar = 3
RETURNING *;

-- =========================================
-- TABLA: infraccion
-- AUTOR: Betzabe Huaroc
-- =========================================
UPDATE infraccion 
SET pnlzcon_ecnmca = 180.00
WHERE tpo_infrccon = 'Retraso' AND gravedad = 'Leve'
RETURNING *;


-- =========================================
-- TABLA: 
-- AUTOR: Zuriel Cangre
-- =========================================
UPDATE cliente
SET teléfono = 963842755,
    crro_elctrnco = 'fernando_olivera_nuevo@hotmail.com'    
WHERE nombres = 'Fernando' AND aplldo_ptrno = 'Olivera'
RETURNING *;

-- =========================================
-- TABLA: proveedor
-- AUTOR: Jose Bernedo
-- =========================================
UPDATE proveedor
SET direccion = 'Calle El Comercio 791'
WHERE nmbre_prvdor = 'Abarrotes del Sur'
RETURNING *;
