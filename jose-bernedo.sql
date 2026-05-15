CREATE TABLE categoria (
  id_ctgra SERIAL,
  nmbre_ctgra VARCHAR(50) NOT NULL,
  mnmo_edd INT NOT NULL,
  
  CONSTRAINT pk_ctgra 
    PRIMARY KEY (id_ctgra)
);

CREATE TABLE proveedor (
  id_proveedor SERIAL,
  nmbre_prvdor VARCHAR(50) NOT NULL,
  crro_elctrnco VARCHAR(50) UNIQUE NOT NULL,
  telefono VARCHAR(9) UNiQUE NOT NULL,
  direccion VARCHAR(100) NOT NULL,
  
  CONSTRAINT pk_proveedor 
    PRIMARY KEY (id_proveedor)
);

CREATE TABLE producto (
  id_producto SERIAL,
  nmbre_prdcto VARCHAR(50) NOT NULL,
  descripcion TEXT,
  precio_actual NUMERIC(10, 2) NOT NULL,
  
  id_ctgra INT NOT NULL,
  
  CONSTRAINT pk_producto 
    PRIMARY KEY (id_producto),
  
  CONSTRAINT fk_ctgra
    FOREIGN KEY (id_ctgra)
    REFERENCES categoria(id_ctgra)
);

CREATE TABLE lote (
  id_lote SERIAL,
  cantidad INT NOT NULL,
  precio_compra NUMERIC(10, 2) NOT NULL,
  precio_venta NUMERIC(10, 2) NOT NULL,
  fcha_vncmnto DATE NOT NULL,
  fcha_ingrso DATE NOT NULL,
  
  id_proveedor INT NOT NULL,
  
  CONSTRAINT pk_lote 
    PRIMARY KEY (id_lote),
  
  CONSTRAINT fk_proveedor
    FOREIGN KEY (id_proveedor)
    REFERENCES proveedor(proveedor)
);

CREATE TABLE presentacion (
  id_prsntcon SERIAL,
  nmbre_prsntcon VARCHAR(50) NOT NULL,
  peso_gramos INT NOT NULL,
  
  CONSTRAINT pk_prsntcon 
    PRIMARY KEY (id_prsntcon)
);

CREATE TABLE inventario (
    id_producto INT,
    cantidad INT NOT NULL,
    observacion TEXT,

    id_lote INT UNIQUE NOT NULL,
    id_prsntcon INT NOT NULL,

    CONSTRAINT pk_producto
      PRIMARY KEY (id_producto),
  
    CONSTRAINT fk_producto
      FOREIGN KEY (id_producto)
      REFERENCES producto(id_producto),

    CONSTRAINT fk_lote
      FOREIGN KEY (id_lote)
      REFERENCES lote(id_lote),

    CONSTRAINT fk_prsntcon
      FOREIGN KEY (id_prsntcon)
      REFERENCES presentacion(id_prsntcon)
);
