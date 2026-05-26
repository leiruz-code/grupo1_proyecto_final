-- ======================================================
-- 						--- CREATE ---
-- ======================================================

-- =========================================
-- TABLA: lugar
-- AUTOR: Brysett Valenzuela
-- =========================================
CREATE TABLE lugar (
    id_lugar SERIAL,
    distrito VARCHAR(100) NOT NULL,
    provincia VARCHAR(100) NOT NULL,
    region VARCHAR(100) NOT NULL,
    CONSTRAINT pk_lugar PRIMARY KEY (id_lugar)
);

-- =========================================
-- TABLA: turno
-- AUTOR: Brysett Valenzuela
-- =========================================
CREATE TABLE turno (
    id_turno SERIAL,
    nmbre_trno VARCHAR(50) NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    CONSTRAINT pk_turno PRIMARY KEY (id_turno)
);

-- =========================================
-- TABLA: infraccion
-- AUTOR: Brysett Valenzuela
-- =========================================
CREATE TABLE infraccion (
    id_infraccion SERIAL,
    nmbre_infrccon VARCHAR(100) NOT NULL,
    gravedad INT NOT NULL CHECK (gravedad IN (1,2,3,4)),
    descripcion TEXT,
    penalizacion TEXT,
    pnlzcon_ecnmca INT,

    CONSTRAINT pk_infraccion 
        PRIMARY KEY (id_infraccion)
);

-- =========================================
-- TABLA: dtlle_pddo
-- AUTOR: Brysett Valenzuela
-- =========================================
CREATE TABLE dtlle_pddo (
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    unidades INT NOT NULL,
    precio_unidad NUMERIC(10,2) NOT NULL,
    precio_final NUMERIC(10,2) NOT NULL,

    CONSTRAINT pk_dtlle_pddo 
        PRIMARY KEY (id_pedido, id_producto),

    CONSTRAINT fk_dtlle_pddo_pedido 
        FOREIGN KEY (id_pedido) 
        REFERENCES pedido(id_pedido),

    CONSTRAINT fk_dtlle_pddo_producto 
        FOREIGN KEY (id_producto) 
        REFERENCES producto(id_producto)
);

-- =========================================
-- TABLA: dtlle_mrma
-- AUTOR: Brysett Valenzuela
-- =========================================
CREATE TABLE dtlle_mrma (
    id_dtlle_mrma SERIAL,
    cantidad INT NOT NULL,
    descripcion TEXT,
    id_merma INT NOT NULL,
    id_producto INT NOT NULL,
    id_lote INT NOT NULL,

    CONSTRAINT pk_dtlle_mrma 
        PRIMARY KEY (id_dtlle_mrma),

    CONSTRAINT fk_dtlle_mrma_merma 
        FOREIGN KEY (id_merma)
        REFERENCES merma(id_merma),

    CONSTRAINT fk_dtlle_mrma_producto 
        FOREIGN KEY (id_producto)
        REFERENCES producto(id_producto),

    CONSTRAINT fk_dtlle_mrma_lote 
        FOREIGN KEY (id_lote)
        REFERENCES lote(id_lote)
);
