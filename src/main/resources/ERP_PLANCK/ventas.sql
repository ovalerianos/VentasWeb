-- Table: almacen
-- DROP almacen;
CREATE TABLE almacen
(
  almacen_id SERIAL PRIMARY KEY,
  client_id  integer NOT NULL,
  corp_id    integer NOT NULL,
  isactive character(1) NOT NULL DEFAULT 'Y'::bpchar,
  created timestamp without time zone NOT NULL DEFAULT now(),
  createdby character varying(32) NOT NULL,
  updated timestamp without time zone NOT NULL DEFAULT now(),
  updatedby character varying(32) NOT NULL,
  producto_id integer NOT NULL,
  cantidad integer NOT NULL,
  consumo  integer NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE almacen
  OWNER TO tad;


-- Table: producto
-- DROP producto;
CREATE TABLE producto
(
  producto_id character varying(32) NOT NULL,
  client_id  character varying(32) NOT NULL,
  corp_id    character varying(32) NOT NULL,
  isactive character(1) NOT NULL DEFAULT 'Y'::bpchar,
  created timestamp without time zone NOT NULL DEFAULT now(),
  createdby character varying(32) NOT NULL,
  updated timestamp without time zone NOT NULL DEFAULT now(),
  updatedby character varying(32) NOT NULL,

  codigo
  nombre
  precio	
  precio_venta
  precio_mayoreo
  descripcion
  imagen
  medida
  unidad_medida_id
  marca_id
  tipo_producto_id
)
WITH (
  OIDS=FALSE
);
ALTER TABLE producto
  OWNER TO tad;


-- Table: tipo_Producto
-- DROP tipo_Producto;
CREATE TABLE tipo_producto
(
  tipo_producto_id character varying(32) NOT NULL,
  client_id  character varying(32) NOT NULL,
  corp_id    character varying(32) NOT NULL,
  isactive character(1) NOT NULL DEFAULT 'Y'::bpchar,
  created timestamp without time zone NOT NULL DEFAULT now(),
  createdby character varying(32) NOT NULL,
  updated timestamp without time zone NOT NULL DEFAULT now(),
  updatedby character varying(32) NOT NULL,

  nombre
  descripcion

)
WITH (
  OIDS=FALSE
);
ALTER TABLE tipo_producto
  OWNER TO tad;


-- Table: unidad_medida
-- DROP unidad_medida;
CREATE TABLE unidad_medida
(
  unidad_medida_id character varying(32) NOT NULL,
  client_id  character varying(32) NOT NULL,
  corp_id    character varying(32) NOT NULL,
  isactive character(1) NOT NULL DEFAULT 'Y'::bpchar,
  created timestamp without time zone NOT NULL DEFAULT now(),
  createdby character varying(32) NOT NULL,
  updated timestamp without time zone NOT NULL DEFAULT now(),
  updatedby character varying(32) NOT NULL,

  nombre
  descripcion
)
WITH (
  OIDS=FALSE
);
ALTER TABLE unidad_medida
  OWNER TO tad;


	
-- Table: marca
-- DROP marca;
CREATE TABLE marca
(
  marca_id character varying(32) NOT NULL,
  client_id  character varying(32) NOT NULL,
  corp_id    character varying(32) NOT NULL,
  isactive character(1) NOT NULL DEFAULT 'Y'::bpchar,
  created timestamp without time zone NOT NULL DEFAULT now(),
  createdby character varying(32) NOT NULL,
  updated timestamp without time zone NOT NULL DEFAULT now(),
  updatedby character varying(32) NOT NULL,

  nombre
  descripcion
)
WITH (
  OIDS=FALSE
);
ALTER TABLE marca
  OWNER TO tad;

-- Table: transaccion
-- DROP transaccion;
CREATE TABLE transaccion
(
  transaccion_id character varying(32) NOT NULL,
  client_id  character varying(32) NOT NULL,
  corp_id    character varying(32) NOT NULL,
  isactive character(1) NOT NULL DEFAULT 'Y'::bpchar,
  created timestamp without time zone NOT NULL DEFAULT now(),
  createdby character varying(32) NOT NULL,
  updated timestamp without time zone NOT NULL DEFAULT now(),
  updatedby character varying(32) NOT NULL,

  nombre
  total
  detalle
  tipo_transaccion_id
  
)
WITH (
  OIDS=FALSE
);
ALTER TABLE transaccion
  OWNER TO tad;

-- Table: tipo_transaccion
-- DROP tipo_transaccion;
CREATE TABLE tipo_transaccion
(
  tipo_transaccion_id character varying(32) NOT NULL,
  client_id  character varying(32) NOT NULL,
  corp_id    character varying(32) NOT NULL,
  isactive character(1) NOT NULL DEFAULT 'Y'::bpchar,
  created timestamp without time zone NOT NULL DEFAULT now(),
  createdby character varying(32) NOT NULL,
  updated timestamp without time zone NOT NULL DEFAULT now(),
  updatedby character varying(32) NOT NULL,

  nombre VARCHAR(50) NOT NULL 
  
)
WITH (
  OIDS=FALSE
);
ALTER TABLE tipo_transaccion
  OWNER TO tad;



-- Table: detalle_transaccion
-- DROP detalle_transaccion;
CREATE TABLE detalle_transaccion
(
  detalle_transaccion_id character varying(32) NOT NULL,
  client_id  character varying(32) NOT NULL,
  corp_id    character varying(32) NOT NULL,
  isactive character(1) NOT NULL DEFAULT 'Y'::bpchar,
  created timestamp without time zone NOT NULL DEFAULT now(),
  createdby character varying(32) NOT NULL,
  updated timestamp without time zone NOT NULL DEFAULT now(),
  updatedby character varying(32) NOT NULL,

  transaccion_id
  producto_id
  cantidad
  nombre
  descripcion
  
)
WITH (
  OIDS=FALSE
);
ALTER TABLE detalle_transaccion
  OWNER TO tad;

	










	
