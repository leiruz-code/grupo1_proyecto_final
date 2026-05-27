-- ======================================================
-- 						--- INSERT ---
-- ======================================================

-- =========================================
-- TABLA: lugar
-- AUTOR: Brysett Valenzuela
-- =========================================
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

-- =========================================
-- TABLA: turno
-- AUTOR: Brysett Valenzuela
-- =========================================
INSERT INTO turno (nmbre_trno, hora_inicio, hora_fin) VALUES
('Mañana', '06:00:00', '14:00:00'),
('Tarde', '14:00:00', '22:00:00'),
('Noche', '22:00:00', '06:00:00'),
('Oficina', '08:00:00', '17:00:00'),
('Partidario', '09:00:00', '13:00:00')
  RETURNING id_turno;

-- =========================================
-- TABLA: contrato
-- AUTOR: Betzabe Huaroc
-- =========================================
INSERT INTO contrato (nmbre_contrto) VALUES
('Contrato de Prestación de Servicios de TI - Fase 1'),
('Contrato de Suministro de Papelería y Útiles de Oficina'),
('Contrato de Arrendamiento de Oficinas Corporativas - Piso 4'),
('Contrato de Mantenimiento Preventivo de Aire Acondicionado'),
('Contrato de Consultoría en Seguridad de la Información'),
('Contrato de Desarrollo de Software y Licenciamiento'),
('Contrato de Servicio de Limpieza e Higienización'),
('Contrato de Transporte y Logística de Distribución') RETURNING id_contrato; 

-- =========================================
-- TABLA: infraccion
-- AUTOR: Betzabe Huaroc
-- =========================================
INSERT INTO infraccion (tpo_infrccon, gravedad, descripcion, penalizacion, pnlzcon_ecnmca) VALUES
-- Infracciones Leves
('Retraso', 'Leve', 'Entrega de informes fuera del plazo establecido (hasta 48 horas de retraso).', 'Amonestación por escrito', 150.00),
('Documentación', 'Leve', 'No presentar las pólizas de seguro actualizadas en los primeros 5 días del mes.', 'Multa administrativa', 200.00),
('Uniformidad', 'Leve', 'Personal del proveedor se presenta sin el equipo de identificación institucional.', 'Amonestación verbal con registro en bitácora', 75.00),('Incumplimiento Parcial', 'Moderada', 'Interrupción del servicio de soporte técnico por un lapso de 2 a 4 horas laborables.', 'Descuento del 5% del pago mensual', 850.00),
('Calidad', 'Moderada', 'Uso de materiales o insumos de menor calidad a la especificada en el anexo técnico.', 'Sustitución inmediata de materiales y multa', 1200.00),
('Confidencialidad', 'Moderada', 'Uso inadecuado de logos o marcas de la empresa sin la autorización expresa del contrato.', 'Suspensión temporal del acceso a las instalaciones', 1500.00),('Ausencia de Servicio', 'Grave', 'Abandono injustificado del servicio o cese de operaciones por más de 24 horas continuas.', 'Rescisión de contrato y ejecución de fianza', 5000.00),
('Seguridad', 'Grave', 'Vulneración de datos sensibles por negligencia en el manejo de credenciales compartidas.', 'Auditoría obligatoria externa y penalización máxima', 7500.00),
('Subcontratación', 'Grave', 'Subcontratar los servicios del objeto del contrato con terceros sin el consentimiento previo.', 'Clasificación de proveedor no elegible y multa', 3500.00) RETURNING id_infrccon;

-- =========================================
-- TABLA: cliente
-- AUTOR: Zuriel Cangre
-- =========================================
-- =========================================
-- TABLA: cliente
-- AUTOR: Zuriel Cangre
-- =========================================
INSERT INTO cliente (nombres, aplldo_ptrno, aplldo_mtrno, fcha_rgstro, nmro_pddos, teléfono, crro_elctrnco)
VALUES
	('Pepe', 'Quispe', 'Hurtado', '2026-05-21', 3, 951753654, 'pepe_quispe@hotmail.com'),
	('Felipe', 'Huaroc', 'Lopez', '2026-02-20', 7, 987456321, 'felipe_huaroc@gmail.com'),
	('Fernando', 'Olivera', 'Gomez', '2026-04-24', 4, 963842751, 'fernando_olivera@hotmail.com'),
	('Cielo', 'Guerra', 'Garcia', '2025-02-19', 1, 953285645, 'cielo_guerra@gmail.com'),
	('Manuel', 'Medrano', 'Padilla', '2026-01-14', 9, 954685312, 'manuel_medrano@gmail.com'),
	('Carlos', 'Mendoza', 'Torres', '2026-03-15', 5, 981234567, 'carlos.mendoza@gmail.com'),
	('Ana', 'Flores', 'Benitez', '2025-11-12', 12, 945678123, 'ana_flores99@hotmail.com'),
	('Luis', 'Ramirez', 'Chavez', '2026-01-22', 2, 912345678, 'lucho_ramirez@gmail.com'),
	('Maria', 'Gutierrez', 'Quispe', '2026-04-05', 8, 934567890, 'maria.gutierrez@outlook.com'),
	('Jorge', 'Castillo', 'Diaz', '2025-08-19', 15, 956789012, 'jorge_castillo@gmail.com'),
	('Lucia', 'Espinoza', 'Ramos', '2026-02-28', 4, 978901234, 'lucia.es@hotmail.com'),
	('Pedro', 'Sanchez', 'Vargas', '2026-05-10', 1, 990123456, 'pedrosanchez@gmail.com'),
	('Elena', 'Rojas', 'Medina', '2025-06-14', 20, 923456789, 'elena.rojas@gmail.com'),
	('Raul', 'Velasquez', 'Cruz', '2026-03-01', 6, 945123789, 'raul_velasquez@outlook.com'),
	('Sofia', 'Campos', 'Villanueva', '2026-05-25', 3, 967890123, 'sofia.campos@gmail.com'),
	('Diego', 'Aguilar', 'Paredes', '2025-10-05', 11, 989012345, 'daguilar@gmail.com'),
	('Camila', 'Morales', 'Herrera', '2026-04-18', 7, 911223344, 'camila_morales@hotmail.com'),
	('Gabriel', 'Fuentes', 'Salazar', '2026-02-11', 0, 922334455, 'gabu.fuentes@gmail.com'),
	('Valeria', 'Paredes', 'Guerrero', '2025-12-25', 9, 933445566, 'valeparedes@gmail.com'),
	('Andres', 'Soto', 'Miranda', '2026-01-30', 14, 944556677, 'andres_soto@outlook.com'),
	('Claudia', 'Tapia', 'Vega', '2026-05-02', 5, 955667788, 'clau.tapia@gmail.com'),
	('Ricardo', 'Vargas', 'Alvarez', '2025-09-17', 22, 966778899, 'ricardovargas@hotmail.com'),
	('Diana', 'Caceres', 'Rios', '2026-03-21', 3, 977889900, 'diana.caceres@gmail.com'),
	('Javier', 'Muñoz', 'Reyes', '2026-04-12', 6, 988990011, 'javiermunoz@gmail.com'),
	('Beatriz', 'Pinto', 'Lazo', '2025-07-09', 10, 999001122, 'beatriz_pinto@outlook.com'),
	('Mateo', 'Delgado', 'Cabrera', '2026-02-05', 4, 912398475, 'mateo.delgado@gmail.com'),
	('Rosa', 'Salas', 'Montoya', '2026-05-15', 2, 934857123, 'rosasalas@hotmail.com'),
	('Alejandro', 'Zeballos', 'Pari', '2025-11-20', 13, 956284713, 'azeballos@gmail.com'),
	('Gabriela', 'Ticona', 'Mamani', '2026-01-08', 8, 978135246, 'gabriela_ticona@gmail.com')
RETURNING id_cliente;

-- =========================================
-- TABLA: prdcto_prmcon
-- AUTOR: Zuriel Cangre
-- =========================================
INSERT INTO prdcto_prmcon (id_prdcto, id_lote, id_prmcon)
VALUES
	(1, 1, 1), -- Producto 1 (Chocolates) del Lote 1 en Promoción 1 (Día de la Madre)
	(2, 1, 1), -- Producto 2 (Regalos) del Lote 1 en Promoción 1 (Día de la Madre)
	(3, 2, 2), -- Producto 3 (Snacks) del Lote 2 en Promoción 2 (Aniversario)
	(4, 3, 2), -- Producto 4 (Lácteos) del Lote 3 en Promoción 2 (Aniversario)
	(5, 4, 3), -- Producto 5 (Cuidado Personal) del Lote 4 en Promoción 3 (Día del Padre)
	(1, 2, 4), -- Producto 1 (Chocolates) del Lote 2 en Promoción 4 (Remate)
	(3, 2, 4), -- Producto 3 (Snacks) del Lote 2 en Promoción 4 (Remate)
	(6, 5, 5), -- Producto 6 (Panadería) del Lote 5 en Promoción 5 (Descuento 3x2)
	(4, 3, 5), -- Producto 4 (Lácteos) del Lote 3 en Promoción 5 (Descuento 3x2)
	(2, 6, 2)  -- Producto 2 (Regalos) del Lote 6 en Promoción 2 (Aniversario)
RETURNING id_prdcto_prmcon;

-- =========================================
-- TABLA: promocion
-- AUTOR: Zuriel Cangre
-- =========================================
INSERT INTO promocion (nmbre_promocon, fecha_inicio, fecha_fin, descuento, cntdad_mnma, descripcion)
VALUES
	('Dia de la Madre', '2026-05-01', '2026-05-15', 20.00, 1, '20% de descuento en la seccion de chocolates y regalos.'),
	('Aniversario', '2026-09-01', '2026-09-30', 10.00, 1, '10% de descuento en toda la tienda por nuestro mes de aniversario.'),
	('Dia del Padre', '2026-06-10', '2026-06-21', 20.00, 1, '20% de descuento en la seccion de regalos.'),
	('Remate', '2026-05-29', '2026-05-31', 50.00, 2, '50% de descuento en productos seleccionados.'),
	('Descuento 3x2', '2026-05-28', '2026-06-30', 100.00, 2, '100% de descuento en el 3er producto y en ciertos productos seleccionados.')
RETURNING id_prmcon;

-- =========================================
-- TABLA: categoria
-- AUTOR: Jose Bernedo
-- =========================================
INSERT INTO categoria (nmbre_ctgra, mnmo_edd) 
VALUES
	('Bebidas', 32),
	('Snacks', 54),
	('Lácteos', 25),
	('Productos de Limpieza', 18),
	('Cuidado Personal', 12),
	('Panadería', 15)
RETURNING id_ctgra;

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
RETURNING id_proveedor;



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
