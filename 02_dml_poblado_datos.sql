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
	(48273619, 'Gabriel', 'Fuentes', 'Salazar', 'gabu.fuentes@gmail.com', 922334455, '2026-02-11', 0),
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
	(98765432, 'Gabriela', 'Ticona', 'Mamani', 'gabriela_ticona@gmail.com', 978135246, '2026-01-08', 8)
ON CONFLICT (crro_elctrnco) DO NOTHING
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
