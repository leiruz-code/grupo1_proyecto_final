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

-- =========================================
-- TABLA: pedido
-- AUTOR: Betzabe Huaroc
-- =========================================
CREATE TABLE pedido (
    id_pedido SERIAL,
    precio_total NUMERIC(10,2) NOT NULL,
    dscnto_ttal NUMERIC(10,2),
    fecha TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    id_cliente INT NOT NULL,
    id_clbrdor INT NOT NULL,

    CONSTRAINT pk_pedido 
        PRIMARY KEY (id_pedido),

    CONSTRAINT fk_pedido_cliente 
        FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente),

    CONSTRAINT fk_pedido_colaborador 
        FOREIGN KEY (id_clbrdor)
        REFERENCES colaborador(id_clbrdor)
);

-- =========================================
-- TABLA: hstral_prco
-- AUTOR: Betzabe Huaroc
-- =========================================
CREATE TABLE hstral_prco (
    id_hstral_prco SERIAL,
    fcha_cmbo TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    prco_antror NUMERIC(10,2) NOT NULL,
    prco_nvo NUMERIC(10,2) NOT NULL,
    id_producto INT NOT NULL,

    CONSTRAINT pk_hstral_prco
        PRIMARY KEY (id_hstral_prco),

    CONSTRAINT fk_hstral_prco_producto
        FOREIGN KEY (id_producto)
        REFERENCES producto(id_producto)
);

-- =========================================
-- TABLA: prcso_pgo
-- AUTOR: Betzabe Huaroc
-- =========================================
CREATE TABLE prcso_pgo (
    id_prcso_pgo SERIAL,
    comision NUMERIC(10,2),
    ingrso_nto NUMERIC(10,2) NOT NULL,
    id_pedido INT NOT NULL,
    id_mtdo_pgo INT NOT NULL,

    CONSTRAINT pk_prcso_pgo
        PRIMARY KEY (id_prcso_pgo),

    CONSTRAINT fk_prcso_pgo_pedido
        FOREIGN KEY (id_pedido)
        REFERENCES pedido(id_pedido),

    CONSTRAINT fk_prcso_pgo_metodo
        FOREIGN KEY (id_mtdo_pgo)
        REFERENCES mtdo_pgo(id_mtdo_pgo)
);

-- =========================================
-- TABLA: jornada
-- AUTOR: Betzabe Huaroc
-- =========================================
CREATE TABLE jornada (
    id_jornada SERIAL,
    jrnda_cmplta BOOLEAN NOT NULL,
    hora_entrada TIME NOT NULL,
    hora_salida TIME NOT NULL,
    fecha DATE NOT NULL,
    id_clbrdor INT NOT NULL,
    id_turno INT NOT NULL,

    CONSTRAINT pk_jornada
        PRIMARY KEY (id_jornada),

    CONSTRAINT fk_jornada_colaborador
        FOREIGN KEY (id_clbrdor)
        REFERENCES colaborador(id_clbrdor),

    CONSTRAINT fk_jornada_turno
        FOREIGN KEY (id_turno)
        REFERENCES turno(id_turno)
);

-- =========================================
-- TABLA: acto
-- AUTOR: Betzabe Huaroc
-- =========================================
CREATE TABLE acto (
    id_acto SERIAL,
    descripcion TEXT NOT NULL,
    id_clbrdor INT NOT NULL,
    id_infraccion INT NOT NULL,

    CONSTRAINT pk_acto
        PRIMARY KEY (id_acto),

    CONSTRAINT fk_acto_colaborador
        FOREIGN KEY (id_clbrdor)
        REFERENCES colaborador(id_clbrdor),

    CONSTRAINT fk_acto_infraccion
        FOREIGN KEY (id_infraccion)
        REFERENCES infraccion(id_infraccion)
);

-- =========================================
-- TABLA: cliente
-- AUTOR: Zuriel Cangre
-- =========================================
CREATE TABLE cliente (
    id_cliente SERIAL,
    dni VARCHAR(8) NOT NULL UNIQUE,
    nombres VARCHAR(100) NOT NULL,
    aplldo_ptrno VARCHAR(50) NOT NULL,
    aplldo_mtrno VARCHAR(50) NOT NULL,
    crro_elctrnco VARCHAR(150) UNIQUE,
    telefono VARCHAR(15) NOT NULL,
    fcha_rgstro DATE NOT NULL DEFAULT CURRENT_DATE,
    nmro_pddos INTEGER NOT NULL DEFAULT 0,

    CONSTRAINT pk_cliente 
        PRIMARY KEY (id_cliente)
);

-- =========================================
-- TABLA: promocion
-- AUTOR: Zuriel Cangre
-- =========================================
CREATE TABLE promocion (
    id_promocion SERIAL,
    nmbre_prmcon VARCHAR(100) NOT NULL,
    fcha_inco TIMESTAMP NOT NULL,
    fcha_fin TIMESTAMP NOT NULL,
    descuento NUMERIC(5,2) NOT NULL,
    cntdad_mnma INTEGER NOT NULL,
    descripcion TEXT,

    CONSTRAINT pk_promocion
        PRIMARY KEY (id_promocion)
);

-- =========================================
-- TABLA: mtdo_pgo
-- AUTOR: Zuriel Cangre
-- =========================================
CREATE TABLE mtdo_pgo (
    id_mtdo_pgo SERIAL,
    nmbre_mtdo_pgo VARCHAR(50) NOT NULL,
    entidad VARCHAR(100),
    prcntje_cmson INTEGER NOT NULL,

    CONSTRAINT pk_mtdo_pgo
        PRIMARY KEY (id_mtdo_pgo)
);

-- =========================================
-- TABLA: merma
-- AUTOR: Zuriel Cangre
-- =========================================
CREATE TABLE merma (
    id_merma SERIAL,
    nmbre_mrma VARCHAR(100),
    descripcion TEXT,

    CONSTRAINT pk_merma
        PRIMARY KEY (id_merma)
);

-- =========================================
-- TABLA: colaborador
-- AUTOR: Zuriel Cangre
-- =========================================
CREATE TABLE colaborador (
    id_clbrdor SERIAL,
    dni VARCHAR(8) NOT NULL UNIQUE,
    nombres VARCHAR(100) NOT NULL,
    aplldo_ptrno VARCHAR(50) NOT NULL,
    aplldo_mtrno VARCHAR(50) NOT NULL,
    crro_elctrnco VARCHAR(150) UNIQUE NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    fcha_ncmnto DATE NOT NULL,
    fcha_cntrtcon DATE NOT NULL,
    fcha_clmncon DATE,
    bono NUMERIC(10,2),
    sueldo NUMERIC(10,2) NOT NULL,
    observacion TEXT,
    direccion VARCHAR(200) NOT NULL,
    fcha_ingrso DATE NOT NULL,
    prdo_cntrto VARCHAR(50),
    estado BOOLEAN DEFAULT TRUE,
    id_lugar INTEGER NOT NULL,
    contrato VARCHAR(3)
        CHECK (contrato IN ('Det','Ind','Ter')),
    id_jefe INTEGER,

    CONSTRAINT pk_colaborador
        PRIMARY KEY (id_clbrdor),

    CONSTRAINT fk_colaborador_lugar
        FOREIGN KEY (id_lugar)
        REFERENCES lugar(id_lugar),

    CONSTRAINT fk_colaborador_jefe
        FOREIGN KEY (id_jefe)
        REFERENCES colaborador(id_clbrdor)
);

-- =========================================
-- TABLA: prdcto_prmcon
-- AUTOR: Zuriel Cangre
-- =========================================
CREATE TABLE prdcto_prmcon (
    id_prdcto_prmcon SERIAL,
    id_producto INTEGER NOT NULL,
    id_lote INTEGER NOT NULL,
    id_promocion INTEGER NOT NULL,

    CONSTRAINT pk_prdcto_prmcon
        PRIMARY KEY (id_prdcto_prmcon),

    CONSTRAINT fk_prmcon_producto
        FOREIGN KEY (id_producto)
        REFERENCES producto(id_producto),

    CONSTRAINT fk_prmcon_lote
        FOREIGN KEY (id_lote)
        REFERENCES lote(id_lote),

    CONSTRAINT fk_prmcon_promocion
        FOREIGN KEY (id_promocion)
        REFERENCES promocion(id_promocion)
);
