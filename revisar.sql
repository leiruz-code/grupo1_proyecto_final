-- ======================================================
--                      --- CREATE ---
-- ======================================================

-- =========================================
-- TABLA: lugar
-- =========================================
CREATE TABLE lugar (
    id_lugar    SERIAL,
    distrito    VARCHAR(100) NOT NULL,
    provincia   VARCHAR(100) NOT NULL,
    region      VARCHAR(100) NOT NULL,
    CONSTRAINT pk_lugar PRIMARY KEY (id_lugar)
);

-- =========================================
-- TABLA: turno
-- =========================================
CREATE TABLE turno (
    id_turno    SERIAL,
    nmbre_trno  VARCHAR(50) NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin    TIME NOT NULL,
    CONSTRAINT pk_turno PRIMARY KEY (id_turno)
);

-- =========================================
-- TABLA: infraccion
-- =========================================
CREATE TABLE infraccion (
    id_infraccion   SERIAL,
    nmbre_infrccon  VARCHAR(100) NOT NULL,
    gravedad        INT NOT NULL CHECK (gravedad IN (1,2,3,4)),
    descripcion     TEXT,
    penalizacion    TEXT,
    pnlzcon_ecnmca  INT CHECK (pnlzcon_ecnmca >= 0),
    CONSTRAINT pk_infraccion PRIMARY KEY (id_infraccion)
);

-- =========================================
-- TABLA: categoria
-- =========================================
CREATE TABLE categoria (
    id_ctgra    SERIAL,
    nmbre_ctgra VARCHAR(50) NOT NULL,
    mnmo_edd    INT NOT NULL CHECK (mnmo_edd > 0),
    CONSTRAINT pk_ctgra PRIMARY KEY (id_ctgra)
);

-- =========================================
-- TABLA: presentacion
-- =========================================
CREATE TABLE presentacion (
    id_presentacion SERIAL,
    nmbre_prsntcon  VARCHAR(50) NOT NULL,
    peso_gramos     INTEGER NOT NULL CHECK (peso_gramos > 0),
    CONSTRAINT pk_presentacion PRIMARY KEY (id_presentacion)
);

-- =========================================
-- TABLA: proveedor
-- =========================================
CREATE TABLE proveedor (
    id_proveedor    SERIAL,
    nmbre_prvdor    VARCHAR(50) NOT NULL,
    crro_elctrnco   VARCHAR(50) UNIQUE NOT NULL
        CHECK (crro_elctrnco LIKE '%@%.%'),
    telefono        VARCHAR(9) NOT NULL
        CHECK (telefono ~ '^9[0-9]{8}$'),
    direccion       VARCHAR(100) NOT NULL,
    CONSTRAINT pk_proveedor PRIMARY KEY (id_proveedor)
);

-- =========================================
-- TABLA: merma
-- =========================================
CREATE TABLE merma (
    id_merma    SERIAL,
    nmbre_mrma  VARCHAR(100),
    descripcion TEXT,
    CONSTRAINT pk_merma PRIMARY KEY (id_merma)
);

-- =========================================
-- TABLA: mtdo_pgo
-- =========================================
CREATE TABLE mtdo_pgo (
    id_mtdo_pgo     SERIAL,
    nmbre_mtdo_pgo  VARCHAR(50) NOT NULL,
    entidad         VARCHAR(100),
    prcntje_cmson   INT NOT NULL CHECK (prcntje_cmson BETWEEN 1 AND 100),
    CONSTRAINT pk_mtdo_pgo PRIMARY KEY (id_mtdo_pgo)
);

-- =========================================
-- TABLA: promocion
-- =========================================
CREATE TABLE promocion (
    id_promocion    SERIAL,
    nmbre_prmcon    VARCHAR(100) NOT NULL,
    fcha_inco       TIMESTAMP NOT NULL,
    fcha_fin        TIMESTAMP NOT NULL CHECK (fcha_fin > fcha_inco),
    descuento       NUMERIC(5,2) NOT NULL CHECK (descuento >= 0),
    cntdad_mnma     INT NOT NULL CHECK (cntdad_mnma > 0),
    descripcion     TEXT,
    CONSTRAINT pk_promocion PRIMARY KEY (id_promocion)
);

-- =========================================
-- TABLA: colaborador
-- (auto-referencia para id_jefe -> SET NULL)
-- =========================================
CREATE TABLE colaborador (
    id_clbrdor      SERIAL,
    dni             VARCHAR(8) NOT NULL UNIQUE
        CHECK (dni ~ '^[0-9]{8}$'),
    nombres         VARCHAR(100) NOT NULL,
    aplldo_ptrno    VARCHAR(50) NOT NULL,
    aplldo_mtrno    VARCHAR(50) NOT NULL,
    crro_elctrnco   VARCHAR(150) UNIQUE NOT NULL
        CHECK (crro_elctrnco LIKE '%@%.%'),
    telefono        VARCHAR(9) NOT NULL
        CHECK (telefono ~ '^9[0-9]{8}$'),
    fcha_ncmnto     DATE NOT NULL,
    fcha_cntrtcon   DATE NOT NULL,
    fcha_clmncon    DATE
        CHECK (fcha_clmncon IS NULL OR fcha_clmncon >= fcha_cntrtcon),
    bono            NUMERIC(10,2) CHECK (bono >= 0),
    sueldo          NUMERIC(10,2) NOT NULL CHECK (sueldo > 0),
    observacion     TEXT,
    direccion       VARCHAR(200) NOT NULL,
    fcha_ingrso     DATE NOT NULL,
    prdo_cntrto     VARCHAR(50),
    estado          BOOLEAN DEFAULT TRUE,
    id_lugar        INT NOT NULL,
    contrato        VARCHAR(3) CHECK (contrato IN ('Det','Ind','Ter')),
    id_jefe         INTEGER,

    CONSTRAINT pk_colaborador PRIMARY KEY (id_clbrdor),

    -- Si el lugar es eliminado, bloquear (RESTRICT por defecto es seguro aquí)
    CONSTRAINT fk_colaborador_lugar
        FOREIGN KEY (id_lugar)
        REFERENCES lugar(id_lugar)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    -- Si el jefe es eliminado, dejar el campo en NULL
    CONSTRAINT fk_colaborador_jefe
        FOREIGN KEY (id_jefe)
        REFERENCES colaborador(id_clbrdor)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

-- =========================================
-- TABLA: cliente
-- =========================================
CREATE TABLE cliente (
    id_cliente      SERIAL,
    dni             VARCHAR(8) NOT NULL UNIQUE
        CHECK (dni ~ '^[0-9]{8}$'),
    nombres         VARCHAR(100) NOT NULL,
    aplldo_ptrno    VARCHAR(50) NOT NULL,
    aplldo_mtrno    VARCHAR(50) NOT NULL,
    crro_elctrnco   VARCHAR(150) UNIQUE
        CHECK (crro_elctrnco IS NULL OR crro_elctrnco LIKE '%@%.%'),
    telefono        VARCHAR(9) NOT NULL
        CHECK (telefono ~ '^9[0-9]{8}$'),
    fcha_rgstro     DATE NOT NULL DEFAULT CURRENT_DATE,
    nmro_pddos      INT NOT NULL DEFAULT 0 CHECK (nmro_pddos >= 0),
    CONSTRAINT pk_cliente PRIMARY KEY (id_cliente)
);

-- =========================================
-- TABLA: producto
-- =========================================
CREATE TABLE producto (
    id_producto     SERIAL,
    nmbre_prdcto    VARCHAR(50) NOT NULL,
    descripcion     TEXT,
    precio_actual   NUMERIC(10,2) NOT NULL CHECK (precio_actual >= 0),
    id_ctgra        INTEGER NOT NULL,

    CONSTRAINT pk_producto PRIMARY KEY (id_producto),

    -- Si se elimina la categoría, se bloquea (los productos dependen de ella)
    CONSTRAINT fk_producto_categoria
        FOREIGN KEY (id_ctgra)
        REFERENCES categoria(id_ctgra)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- =========================================
-- TABLA: lote
-- CORRECCIÓN: precio_venta >= precio_compra (era <= por error)
-- =========================================
CREATE TABLE lote (
    id_lote         SERIAL,
    cantidad        INT NOT NULL CHECK (cantidad > 0),
    precio_compra   NUMERIC(10,2) NOT NULL CHECK (precio_compra >= 0),
    precio_venta    NUMERIC(10,2) NOT NULL
        CHECK (precio_venta >= 0 AND precio_venta >= precio_compra),
    fcha_vncmnto    DATE NOT NULL,
    fcha_ingrso     DATE NOT NULL,
    CHECK (fcha_vncmnto > fcha_ingrso),
    id_proveedor    INTEGER NOT NULL,

    CONSTRAINT pk_lote PRIMARY KEY (id_lote),

    -- Si se elimina el proveedor, bloquear (trazabilidad del lote)
    CONSTRAINT fk_lote_proveedor
        FOREIGN KEY (id_proveedor)
        REFERENCES proveedor(id_proveedor)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- =========================================
-- TABLA: inventario
-- =========================================
CREATE TABLE inventario (
    id_invntro      SERIAL,
    cantidad        INT NOT NULL CHECK (cantidad >= 0),
    observacion     TEXT,
    id_lote         INT UNIQUE NOT NULL,
    id_producto     INT NOT NULL,
    id_presentacion INT NOT NULL,

    CONSTRAINT pk_invntro PRIMARY KEY (id_invntro),

    -- Si el producto o lote se elimina, eliminar también el registro de inventario
    CONSTRAINT fk_invntro_producto
        FOREIGN KEY (id_producto)
        REFERENCES producto(id_producto)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_invntro_lote
        FOREIGN KEY (id_lote)
        REFERENCES lote(id_lote)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    -- Si se elimina la presentación, bloquear
    CONSTRAINT fk_invntro_presentacion
        FOREIGN KEY (id_presentacion)
        REFERENCES presentacion(id_presentacion)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- =========================================
-- TABLA: pedido
-- =========================================
CREATE TABLE pedido (
    id_pedido       SERIAL,
    precio_total    NUMERIC(10,2) NOT NULL CHECK (precio_total >= 0),
    dscnto_ttal     NUMERIC(10,2) CHECK (dscnto_ttal >= 0),
    fecha           TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    id_cliente      INT NOT NULL,
    id_clbrdor      INT NOT NULL,

    CONSTRAINT pk_pedido PRIMARY KEY (id_pedido),

    -- Si se elimina el cliente, bloquear (historial de compras)
    CONSTRAINT fk_pedido_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES cliente(id_cliente)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    -- Si se elimina el colaborador, dejar el campo en NULL
    CONSTRAINT fk_pedido_colaborador
        FOREIGN KEY (id_clbrdor)
        REFERENCES colaborador(id_clbrdor)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- =========================================
-- TABLA: dtlle_pddo
-- =========================================
CREATE TABLE dtlle_pddo (
    id_pedido       INT NOT NULL,
    id_producto     INT NOT NULL,
    unidades        INT NOT NULL CHECK (unidades > 0),
    precio_unidad   NUMERIC(10,2) NOT NULL CHECK (precio_unidad >= 0),
    precio_final    NUMERIC(10,2) NOT NULL CHECK (precio_final >= 0),

    CONSTRAINT pk_dtlle_pddo PRIMARY KEY (id_pedido, id_producto),

    -- Si se elimina el pedido, eliminar sus detalles en cascada
    CONSTRAINT fk_dtlle_pddo_pedido
        FOREIGN KEY (id_pedido)
        REFERENCES pedido(id_pedido)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    -- Si se elimina el producto, bloquear (conservar historial de ventas)
    CONSTRAINT fk_dtlle_pddo_producto
        FOREIGN KEY (id_producto)
        REFERENCES producto(id_producto)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- =========================================
-- TABLA: hstral_prco
-- =========================================
CREATE TABLE hstral_prco (
    id_hstral_prco  SERIAL,
    fcha_cmbo       TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    prco_antror     NUMERIC(10,2) NOT NULL CHECK (prco_antror >= 0),
    prco_nvo        NUMERIC(10,2) NOT NULL CHECK (prco_nvo >= 0),
    id_producto     INT NOT NULL,

    CONSTRAINT pk_hstral_prco PRIMARY KEY (id_hstral_prco),

    -- Si se elimina el producto, eliminar su historial de precios
    CONSTRAINT fk_hstral_prco_producto
        FOREIGN KEY (id_producto)
        REFERENCES producto(id_producto)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- =========================================
-- TABLA: prcso_pgo
-- =========================================
CREATE TABLE prcso_pgo (
    id_prcso_pgo    SERIAL,
    comision        NUMERIC(10,2) CHECK (comision >= 0),
    ingrso_nto      NUMERIC(10,2) NOT NULL CHECK (ingrso_nto >= 0),
    id_pedido       INT NOT NULL,
    id_mtdo_pgo     INT NOT NULL,

    CONSTRAINT pk_prcso_pgo PRIMARY KEY (id_prcso_pgo),

    -- Si se elimina el pedido, eliminar el proceso de pago asociado
    CONSTRAINT fk_prcso_pgo_pedido
        FOREIGN KEY (id_pedido)
        REFERENCES pedido(id_pedido)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    -- Si se elimina el método de pago, bloquear
    CONSTRAINT fk_prcso_pgo_metodo
        FOREIGN KEY (id_mtdo_pgo)
        REFERENCES mtdo_pgo(id_mtdo_pgo)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- =========================================
-- TABLA: jornada
-- =========================================
CREATE TABLE jornada (
    id_jornada      SERIAL,
    jrnda_cmplta    BOOLEAN NOT NULL,
    hora_entrada    TIME NOT NULL,
    hora_salida     TIME NOT NULL CHECK (hora_salida > hora_entrada),
    fecha           DATE NOT NULL,
    id_clbrdor      INT NOT NULL,
    id_turno        INT NOT NULL,

    CONSTRAINT pk_jornada PRIMARY KEY (id_jornada),

    -- Si se elimina el colaborador, eliminar sus jornadas
    CONSTRAINT fk_jornada_colaborador
        FOREIGN KEY (id_clbrdor)
        REFERENCES colaborador(id_clbrdor)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    -- Si se elimina el turno, bloquear
    CONSTRAINT fk_jornada_turno
        FOREIGN KEY (id_turno)
        REFERENCES turno(id_turno)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- =========================================
-- TABLA: acto
-- =========================================
CREATE TABLE acto (
    id_acto         SERIAL,
    descripcion     TEXT NOT NULL,
    id_clbrdor      INT NOT NULL,
    id_infraccion   INT NOT NULL,

    CONSTRAINT pk_acto PRIMARY KEY (id_acto),

    -- Si se elimina el colaborador, eliminar sus actos registrados
    CONSTRAINT fk_acto_colaborador
        FOREIGN KEY (id_clbrdor)
        REFERENCES colaborador(id_clbrdor)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    -- Si se elimina la infracción, bloquear
    CONSTRAINT fk_acto_infraccion
        FOREIGN KEY (id_infraccion)
        REFERENCES infraccion(id_infraccion)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- =========================================
-- TABLA: dtlle_mrma
-- =========================================
CREATE TABLE dtlle_mrma (
    id_dtlle_mrma   SERIAL,
    cantidad        INT NOT NULL CHECK (cantidad > 0),
    descripcion     TEXT,
    id_merma        INT NOT NULL,
    id_producto     INT NOT NULL,
    id_lote         INT NOT NULL,

    CONSTRAINT pk_dtlle_mrma PRIMARY KEY (id_dtlle_mrma),

    -- Si se elimina la merma, eliminar sus detalles
    CONSTRAINT fk_dtlle_mrma_merma
        FOREIGN KEY (id_merma)
        REFERENCES merma(id_merma)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    -- Si se elimina el producto, bloquear (trazabilidad)
    CONSTRAINT fk_dtlle_mrma_producto
        FOREIGN KEY (id_producto)
        REFERENCES producto(id_producto)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,

    -- Si se elimina el lote, bloquear (trazabilidad)
    CONSTRAINT fk_dtlle_mrma_lote
        FOREIGN KEY (id_lote)
        REFERENCES lote(id_lote)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);

-- =========================================
-- TABLA: prdcto_prmcon
-- =========================================
CREATE TABLE prdcto_prmcon (
    id_prdcto_prmcon    SERIAL,
    id_producto         INTEGER NOT NULL,
    id_lote             INTEGER NOT NULL,
    id_promocion        INTEGER NOT NULL,

    CONSTRAINT pk_prdcto_prmcon PRIMARY KEY (id_prdcto_prmcon),

    -- Si se elimina el producto o lote, eliminar la relación con la promoción
    CONSTRAINT fk_prmcon_producto
        FOREIGN KEY (id_producto)
        REFERENCES producto(id_producto)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    CONSTRAINT fk_prmcon_lote
        FOREIGN KEY (id_lote)
        REFERENCES lote(id_lote)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    -- Si se elimina la promoción, eliminar sus asociaciones
    CONSTRAINT fk_prmcon_promocion
        FOREIGN KEY (id_promocion)
        REFERENCES promocion(id_promocion)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
