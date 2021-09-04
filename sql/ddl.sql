DROP TABLE factura;
DROP TABLE factura_detalle;
DROP TABLE producto;
DROP TABLE proveedor;
DROP TABLE cliente;
DROP TABLE ciudad;
DROP TABLE pais;
DROP TABLE empleado;

CREATE TABLE Proveedor (
	id_proveedor SERIAL NOT NULL,
	nombre CHARACTER VARYING(100) NOT NULL,
	domicilio CHARACTER VARYING(100) NOT NULL
);

CREATE TABLE Producto (
	id_producto SERIAL NOT NULL,
	nombre CHARACTER VARYING(20) NOT NULL,
	valor MONEY NOT NULL,
	ref_proveedor INTEGER NOT NULL 
);

CREATE TABLE Pais (
	id_pais SERIAL NOT NULL,
	nombre CHARACTER VARYING(100) NOT NULL
);

CREATE TABLE Ciudad (
	id_ciudad SERIAL NOT NULL,
	nombre CHARACTER VARYING(100) NOT NULL,
	ref_pais INTEGER NOT NULL
);

CREATE TABLE Cliente (
	cedula CHARACTER VARYING(10) NOT NULL,
	nombre CHARACTER VARYING(20) NOT NULL,
	apellido CHARACTER VARYING(20) NOT NULL,
	ref_ciudad INTEGER NOT NULL
);

CREATE TABLE Empleado (
	cedula CHARACTER VARYING(10) NOT NULL,
	nombre CHARACTER VARYING(20) NOT NULL,
	apellido CHARACTER VARYING(20) NOT NULL,
	usuario CHARACTER VARYING(10) NOT NULL,
	clave CHARACTER VARYING(10) NOT NULL
);

CREATE TABLE Factura (
	id_factura SERIAL NOT NULL,
	fecha_emision TIMESTAMP NOT NULL,
	valor_total MONEY NULL,
	ref_empleado CHARACTER VARYING(10) NOT NULL,
	ref_cliente CHARACTER VARYING(10) NOT NULL
);

CREATE TABLE Factura_Detalle (
	id_factura_detalle SERIAL NOT NULL,
	cantidad INTEGER NOT NULL,
	cantidad_x_valor MONEY NOT NULL,
	ref_factura INTEGER NOT NULL,
	ref_producto INTEGER NOT NULL
);

ALTER TABLE Proveedor ADD CONSTRAINT PK_Proveedor PRIMARY KEY (id_proveedor);
ALTER TABLE Producto ADD CONSTRAINT PK_Producto PRIMARY KEY (codigo);
ALTER TABLE Pais ADD CONSTRAINT PK_Pais PRIMARY KEY (id_pais);
ALTER TABLE Ciudad ADD CONSTRAINT PK_Ciudad PRIMARY KEY (id_ciudad);
ALTER TABLE Cliente ADD CONSTRAINT PK_Cliente PRIMARY KEY (cedula);
ALTER TABLE Empleado ADD CONSTRAINT PK_Empleado PRIMARY KEY (cedula);
ALTER TABLE Factura ADD CONSTRAINT PK_Factura PRIMARY KEY (codigo);
ALTER TABLE Factura_Detalle ADD CONSTRAINT PK_Factura_Detalle PRIMARY KEY (id_factura_detalle);

ALTER TABLE Producto ADD CONSTRAINT FK_Producto_Proveedor FOREIGN KEY (ref_proveedor) REFERENCES Proveedor(id_proveedor);
ALTER TABLE Ciudad ADD CONSTRAINT FK_Ciudad_Pais FOREIGN KEY (ref_pais) REFERENCES Pais(id_pais);
ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_Ciudad FOREIGN KEY (ref_ciudad) REFERENCES Ciudad(id_ciudad);
ALTER TABLE Factura ADD CONSTRAINT FK_Factura_Cliente FOREIGN KEY (ref_cliente) REFERENCES Cliente(cedula);
ALTER TABLE Factura ADD CONSTRAINT FK_Factura_Empleado 
	FOREIGN KEY (ref_cliente) REFERENCES Empleado(cedula);
ALTER TABLE Factura_Detalle ADD CONSTRAINT FK_Factura_Detalle_Factura 
	FOREIGN KEY (ref_factura) REFERENCES Factura(codigo);
ALTER TABLE Factura_Detalle ADD CONSTRAINT FK_Factura_Detalle_Producto 
	FOREIGN KEY (ref_producto) REFERENCES Producto(codigo);
