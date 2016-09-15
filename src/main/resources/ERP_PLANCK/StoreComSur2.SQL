DROP TABLE IF EXISTS detalle_transaccion
;
DROP TABLE IF EXISTS transaccion
;
DROP TABLE IF EXISTS producto
;
DROP TABLE IF EXISTS tipo_transaccion
;
DROP TABLE IF EXISTS tipo_producto
;
DROP TABLE IF EXISTS producto_precio
;
DROP TABLE IF EXISTS medida
;
DROP TABLE IF EXISTS marca
;



CREATE TABLE producto_precio
(
	id INTEGER NOT NULL AUTO_INCREMENT,
	producto_id INTEGER NOT NULL,
	precio_unitario DOUBLE NOT NULL,
	precio_venta DOUBLE NOT NULL,
	observaciones TEXT,
	activo INTEGER NOT NULL,
	fecha_alta DATETIME NOT NULL,
	PRIMARY KEY (id),
	KEY (producto_id)
) 
;


CREATE TABLE detalle_transaccion
(
	id INTEGER NOT NULL AUTO_INCREMENT,
	transaccion_id INTEGER NOT NULL,
	producto_id INTEGER NOT NULL,
	cantidad INTEGER NOT NULL,
	nombre VARCHAR(100) NOT NULL,
	descripcion VARCHAR(100),
	PRIMARY KEY (id),
	KEY (transaccion_id),
	KEY (producto_id)
) 
;


CREATE TABLE transaccion
(
	id INTEGER NOT NULL AUTO_INCREMENT,
	tipo_transaccion_id INTEGER NOT NULL,
	nombre VARCHAR(100) NOT NULL,
	total DOUBLE NOT NULL,
	observaciones TEXT,
	fecha_alta DATETIME NOT NULL,
	usuario_alta VARCHAR(50) NOT NULL,
	fecha_cambio DATETIME,
	usuario_cambio VARCHAR(50),
	fecha_baja DATETIME,
	usuario_baja VARCHAR(50),
	PRIMARY KEY (id),
	KEY (tipo_transaccion_id)
) 
;


CREATE TABLE producto
(
	id INTEGER NOT NULL AUTO_INCREMENT,
	codigo VARCHAR(100) NOT NULL,
	nombre VARCHAR(100) NOT NULL,
	descripcion TEXT,
	marca_id INTEGER NOT NULL,
	tipo_producto_id INTEGER NOT NULL,
	imagen BLOB,
	medida DOUBLE NOT NULL,
	medida_id INTEGER NOT NULL,
	fecha_alta DATETIME NOT NULL,
	usuario_alta VARCHAR(50) NOT NULL,
	fecha_cambio DATETIME,
	usuario_cambio VARCHAR(50),
	fecha_baja DATETIME,
	usuario_baja VARCHAR(50),
	PRIMARY KEY (id),
	KEY (marca_id),
	KEY (tipo_producto_id),
	KEY (medida_id)
) 
;


CREATE TABLE tipo_transaccion
(
	id INTEGER NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50) NOT NULL,
	fecha_alta DATETIME NOT NULL,
	usuario_alta VARCHAR(50) NOT NULL,
	fecha_cambio DATETIME,
	usuario_cambio VARCHAR(50),
	fecha_baja DATETIME,
	usuario_baja VARCHAR(50),
	PRIMARY KEY (id)
) 
;


CREATE TABLE tipo_producto
(
	id INTEGER NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(100) NOT NULL,
	descripcion VARCHAR(150),
	fecha_alta DATETIME NOT NULL,
	usuario_alta VARCHAR(50) NOT NULL,
	fecha_cambio DATETIME,
	usuario_cambio VARCHAR(50),
	fecha_baja DATETIME,
	usuario_baja VARCHAR(50),
	PRIMARY KEY (id)
) 
;



CREATE TABLE medida
(
	id INTEGER NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(100) NOT NULL,
	fecha_alta DATETIME NOT NULL,
	usuario_alta VARCHAR(50) NOT NULL,
	fecha_cambio DATETIME,
	usuario_cambio VARCHAR(50),
	fecha_baja DATETIME,
	usuario_baja VARCHAR(50),
	PRIMARY KEY (id)
) 
;


CREATE TABLE marca
(
	id INTEGER NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(100),
	fecha_alta DATETIME NOT NULL,
	usuario_alta VARCHAR(50) NOT NULL,
	fecha_cambio DATETIME,
	usuario_cambio VARCHAR(50),
	fecha_baja DATETIME,
	usuario_baja VARCHAR(50),
	PRIMARY KEY (id)
) 
;





ALTER TABLE producto_precio ADD CONSTRAINT FK_Producto_precio_Producto 
	FOREIGN KEY (producto_id) REFERENCES producto (id)
;

ALTER TABLE detalle_transaccion ADD CONSTRAINT FK_det_trans_trans 
	FOREIGN KEY (transaccion_id) REFERENCES transaccion (id)
;

ALTER TABLE detalle_transaccion ADD CONSTRAINT FK_det_trans_producto 
	FOREIGN KEY (producto_id) REFERENCES producto (id)
;

ALTER TABLE transaccion ADD CONSTRAINT FK_trans_tipo_trans 
	FOREIGN KEY (tipo_transaccion_id) REFERENCES tipo_transaccion (id)
;

ALTER TABLE producto ADD CONSTRAINT FK_producto_marca 
	FOREIGN KEY (marca_id) REFERENCES marca (id)
;

ALTER TABLE producto ADD CONSTRAINT FK_producto_tipo_p 
	FOREIGN KEY (tipo_producto_id) REFERENCES tipo_producto (id)
;

ALTER TABLE producto ADD CONSTRAINT FK_producto_medida 
	FOREIGN KEY (medida_id) REFERENCES medida (id)
;
