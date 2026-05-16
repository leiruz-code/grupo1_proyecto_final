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
  
  CONSTRAINT fk_clbrdor
    FOREIGN KEY (id_clbrdor)
    REFERENCES colaborador(id_clbrdor),

  CONSTRAINT fk_turno
    FOREIGN KEY (id_turno)
    REFERENCES turno(id_turno)

);

CREATE TABLE pedido (
  id_pedido SERIAL,
  prco_ttal NUMERIC(5, 2) NOT NULL,
  dscnto_ttal NUMERIC(5, 2),
  fecha TIMESTAMP NOT NULL,

  id_clbrdor INT NOT NULL,
  id_cliente INT NOT NULL,
  
  CONSTRAINT pk_pedido 
    PRIMARY KEY (id_pedido),
  
  CONSTRAINT fk_clbrdor
    FOREIGN KEY (id_clbrdor)
    REFERENCES colaborador(id_clbrdor),

  CONSTRAINT fk_cliente
    FOREIGN KEY (id_cliente)
    REFERENCES cliente(id_cliente)

);

CREATE TABLE dtlle_pddo (
  id_pedido INT,

  id_producto INT NOT NULL,

  cantidad INT NOT NULL,
  prco_undad NUMERIC(5, 2) NOT NULL,
  prco_fnal NUMERIC(5, 2) NOT NULL,

  CONSTRAINT pk_pedido 
    PRIMARY KEY (id_pedido),
  
  CONSTRAINT fk_pedido
    FOREIGN KEY (id_pedido)
    REFERENCES pedido(id_pedido),

  CONSTRAINT fk_producto
    FOREIGN KEY (id_producto)
    REFERENCES producto(id_producto)

);

CREATE TABLE acto (
  id_acto SERIAL,
  descripcion TEXT NOT NULL,

  id_clbrdor INT NOT NULL,
  id_infraccion INT NOT NULL,

  CONSTRAINT pk_acto 
    PRIMARY KEY (id_acto),
  
  CONSTRAINT fk_clbrdor
    FOREIGN KEY (id_clbrdor)
    REFERENCES colaborador(id_clbrdor),

  CONSTRAINT fk_infraccion
    FOREIGN KEY (id_infraccion)
    REFERENCES infraccion(id_infraccion)

);

CREATE TABLE dtlle_mrma (
  id_dtlle_mrma SERIAL,
  cantidad INT NOT NULL,
  descripcion TEXT NOT NULL,

  id_merma INT NOT NULL,
  id_producto INT NOT NULL,
  id_lote INT NOT NULL,

  CONSTRAINT pk_dtlle_mrma
    PRIMARY KEY (id_dtlle_mrma),
  
  CONSTRAINT fk_merma
    FOREIGN KEY (id_merma)
    REFERENCES merma(id_merma),
  
  CONSTRAINT fk_producto
    FOREIGN KEY (id_producto)
    REFERENCES producto(id_producto),

  CONSTRAINT fk_lote
    FOREIGN KEY (id_lote)
    REFERENCES lote(id_lote)

);


CREATE TABLE prdcto_prmcon (
  id_prdcto_prmcon SERIAL,

  id_producto INT NOT NULL,
  id_lote INT NOT NULL,
  id_prmcon  INT NOT NULL,

  CONSTRAINT pk_prdcto_prmcon
    PRIMARY KEY (id_prdcto_prmcon),
  
  CONSTRAINT fk_merma
    FOREIGN KEY (id_merma)
    REFERENCES merma(id_merma),

  CONSTRAINT fk_producto
    FOREIGN KEY (id_producto)
    REFERENCES producto(id_producto),

  CONSTRAINT fk_lote
    FOREIGN KEY (id_lote)
    REFERENCES lote(id_lote),

  CONSTRAINT fk_prmcon
    FOREIGN KEY (id_prmcon)
    REFERENCES promocion(id_prmcon)

);

CREATE TABLE prcso_pgo (
  id_prcso_pgo SERIAL,
  comision NUMERIC(5, 2),
  ingrso_nto NUMERIC(5, 2) NOT NULL,

  id_pedido INT NOT NULL,
  id_mtdo_pgo INT NOT NULL,

  CONSTRAINT pk_prcso_pgo
    PRIMARY KEY (id_prcso_pgo),
  
  CONSTRAINT fk_pedido
    FOREIGN KEY (id_pedido)
    REFERENCES pedido(id_pedido),

  CONSTRAINT fk_mtdo_pgo
    FOREIGN KEY (id_mtdo_pgo)
    REFERENCES metodo_pago(id_mtdo_pgo)

);

CREATE TABLE hstral_prco (
  id_hstral_prco SERIAL,
  fcha_cmbo TIMESTAMP NOT NULL,
  prco_antror NUMERIC(5, 2) NOT NULL,
  prco_nvo NUMERIC(5, 2) NOT NULL,

  id_producto INT NOT NULL,

  CONSTRAINT pk_hstral_prco
    PRIMARY KEY (id_hstral_prco),
  
  CONSTRAINT fk_producto
    FOREIGN KEY (id_producto)
    REFERENCES producto(id_producto)

);
