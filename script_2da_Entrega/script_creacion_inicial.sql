USE GD2C2024
GO

------------ Eliminación de tablas --------------------

IF OBJECT_ID('LOS_CHIMICHANGAS.envio','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.envio;

IF OBJECT_ID('LOS_CHIMICHANGAS.pago','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.pago;

IF OBJECT_ID('LOS_CHIMICHANGAS.venta','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.venta;

IF OBJECT_ID('LOS_CHIMICHANGAS.detalle_pago','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.detalle_pago;

IF OBJECT_ID('LOS_CHIMICHANGAS.medio_de_pago','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.medio_de_pago;

IF OBJECT_ID('LOS_CHIMICHANGAS.tipo_medio_de_pago','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.tipo_medio_de_pago;

IF OBJECT_ID('LOS_CHIMICHANGAS.detalle_venta','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.detalle_venta;

IF OBJECT_ID('LOS_CHIMICHANGAS.tipo_envio','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.tipo_envio;

IF OBJECT_ID('LOS_CHIMICHANGAS.concepto','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.concepto;

IF OBJECT_ID('LOS_CHIMICHANGAS.factura','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.factura;

IF OBJECT_ID('LOS_CHIMICHANGAS.detalle_factura','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.detalle_factura;

IF OBJECT_ID('LOS_CHIMICHANGAS.tipo_detalle_factura','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.tipo_detalle_factura;

IF OBJECT_ID('LOS_CHIMICHANGAS.publicacion','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.publicacion;

IF OBJECT_ID('LOS_CHIMICHANGAS.almacen','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.almacen;

IF OBJECT_ID('LOS_CHIMICHANGAS.producto','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.producto;

IF OBJECT_ID('LOS_CHIMICHANGAS.modelo_producto','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.modelo_producto;

IF OBJECT_ID('LOS_CHIMICHANGAS.marca_producto','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.marca_producto;

IF OBJECT_ID('LOS_CHIMICHANGAS.subrubro','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.subrubro;

IF OBJECT_ID('LOS_CHIMICHANGAS.rubro','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.rubro;

IF OBJECT_ID('LOS_CHIMICHANGAS.vendedor','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.vendedor;

IF OBJECT_ID('LOS_CHIMICHANGAS.cliente','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.cliente;

IF OBJECT_ID('LOS_CHIMICHANGAS.usuario','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.usuario;

IF OBJECT_ID('LOS_CHIMICHANGAS.domicilio','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.domicilio;

IF OBJECT_ID('LOS_CHIMICHANGAS.localidad','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.localidad;

IF OBJECT_ID('LOS_CHIMICHANGAS.provincia','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.provincia;

GO

-------------------- Eliminación de Procedures ---------------------------

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_provincia', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_provincia;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_localidad', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_localidad;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_domicilio', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_domicilio;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_usuario', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_usuario;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_cliente', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_cliente;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_vendedor', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_vendedor;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_rubro', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_rubro;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_subrubro', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_subrubro;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_marca_producto', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_marca_producto;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_modelo_producto', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_modelo_producto;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_producto', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_producto;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_almacen', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_almacen;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_publicacion', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_publicacion;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_tipo_detalle_factura', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_tipo_detalle_factura;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_detalle_factura', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_detalle_factura;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_factura', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_factura;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_concepto', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_concepto;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_tipo_envio', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_tipo_envio;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_envio', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_envio;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_detalle_venta', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_detalle_venta;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_venta', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_venta;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_tipo_medio_de_pago', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_tipo_medio_de_pago;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_medio_de_pago', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_medio_de_pago;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_detalle_pago', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_detalle_pago;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_pago', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_pago;

-- Super Procedure para ejecutar todas las migraciones

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_db', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_db;
GO

-------------------- Eliminación del esquema ---------------------------

DROP SCHEMA IF EXISTS LOS_CHIMICHANGAS
GO

-------------------- Creación del esquema ---------------------------

CREATE SCHEMA LOS_CHIMICHANGAS
GO

-------------------- Creación de tablas ---------------------------

CREATE TABLE LOS_CHIMICHANGAS.provincia (
    cod_provincia        DECIMAL IDENTITY(1,1)	NOT NULL,
    nombre               NVARCHAR(50)
);

CREATE TABLE LOS_CHIMICHANGAS.localidad(
    cod_localidad       DECIMAL IDENTITY(1,1)	NOT NULL,
    cod_provincia       DECIMAL				    NOT NULL,
    nombre              NVARCHAR(50)
)

CREATE TABLE LOS_CHIMICHANGAS.domicilio(
    cod_domicilio       DECIMAL IDENTITY(1,1)	NOT NULL,
    cod_provincia       DECIMAL				    NOT NULL,
    calle               NVARCHAR(50),
    numero              NVARCHAR(50),
    cod_postal          NVARCHAR(50),           
    piso                NVARCHAR(50)            NULL,
    departamento        NVARCHAR(50)            NULL
)

CREATE TABLE LOS_CHIMICHANGAS.usuario(
	cod_usuario			DECIMAL IDENTITY(1,1)	NOT NULL,
    cod_domicilio       DECIMAL		            NOT NULL,
    nombre              NVARCHAR(50),			
    contrasenia         NVARCHAR(50),
    fecha_creacion      DATE
)

CREATE TABLE LOS_CHIMICHANGAS.cliente(
    cod_cliente        DECIMAL IDENTITY(1,1)	NOT NULL,
    cod_usuario        DECIMAL					NOT NULL,
    nombre             NVARCHAR(50),
    apellido           NVARCHAR(50),
    fecha_nacimiento   DATE,
    mail               NVARCHAR(50),
    dni                NVARCHAR(50)
)

CREATE TABLE LOS_CHIMICHANGAS.vendedor(
    cod_vendedor       DECIMAL IDENTITY(1,1)	NOT NULL,
    cod_usuario        DECIMAL					NOT NULL,
    razon_social       NVARCHAR(50)				NOT NULL,
    cuit               NVARCHAR(50),
    mail               NVARCHAR(50)
)

CREATE TABLE LOS_CHIMICHANGAS.rubro(
    cod_rubro          DECIMAL IDENTITY(1,1)	NOT NULL,
    descripcion        NVARCHAR(50)
)

CREATE TABLE LOS_CHIMICHANGAS.subrubro(
    cod_subrubro       DECIMAL IDENTITY(1,1)	NOT NULL,
    cod_rubro          DECIMAL					NOT NULL,
    descripcion        NVARCHAR(50)							
)

CREATE TABLE LOS_CHIMICHANGAS.marca_producto(
	cod_marca        DECIMAL IDENTITY(1,1)		NOT NULL,
    descripcion      NVARCHAR(50)
)

CREATE TABLE LOS_CHIMICHANGAS.modelo_producto(
    cod_modelo       DECIMAL IDENTITY(1,1)		NOT NULL,
    descripcion      NVARCHAR(50)
)

CREATE TABLE LOS_CHIMICHANGAS.producto(
    cod_producto     DECIMAL IDENTITY(1,1)		NOT NULL,
    cod_subrubro     DECIMAL                    NOT NULL,
    cod_marca        DECIMAL                    NOT NULL,
    cod_modelo       DECIMAL                    NOT NULL,
    descripcion      NVARCHAR(50),
    precio           DECIMAL
)

CREATE TABLE LOS_CHIMICHANGAS.almacen(
    cod_almacen     DECIMAL IDENTITY(1,1)		NOT NULL,
	cod_provincia	DECIMAL						NOT NULL, 
    descripcion     NVARCHAR(50),
    calle           NVARCHAR(50), 
    nro_calle       DECIMAL,
    costo_dia       DECIMAL
)

CREATE TABLE LOS_CHIMICHANGAS.publicacion(
    cod_publicacion    DECIMAL IDENTITY(1,1)	NOT NULL,
	cod_vendedor	   DECIMAL                  NOT NULL,
    cod_producto       DECIMAL                  NOT NULL,
    cod_almacen        DECIMAL                  NOT NULL,
    descripcion        NVARCHAR(50),
    stock              INTEGER,
    fecha_inicio       DATETIME,
    fecha_fin          DATETIME,
    precio             DATETIME,
    costo_publicacion  DATETIME,
    porcentaje_venta   DATETIME
)

CREATE TABLE LOS_CHIMICHANGAS.tipo_detalle_factura(
    cod_tipo		  DECIMAL IDENTITY(1,1)    	NOT NULL,
    descripcion       NVARCHAR(50)
)

CREATE TABLE LOS_CHIMICHANGAS.detalle_factura(
    cod_detalle_factura  DECIMAL IDENTITY(1,1)  NOT NULL,
    cod_publicacion	     DECIMAL                NOT NULL,
    cod_tipo             DECIMAL                NOT NULL,
    precio               DECIMAL,
    cantidad             DECIMAL,
    subtotal             DECIMAL
)

CREATE TABLE LOS_CHIMICHANGAS.concepto(
    cod_concepto         DECIMAL IDENTITY(1,1)  NOT NULL,
    cod_detalle_factura  DECIMAL                NOT NULL,
    descripcion          NVARCHAR(50),
    precio               DECIMAL,
    cantidad             DECIMAL
)

CREATE TABLE LOS_CHIMICHANGAS.factura(
    cod_factura          DECIMAL IDENTITY(1,1)  NOT NULL,
    cod_detalle_factura  DECIMAL                NOT NULL,
    cod_cliente          DECIMAL                NOT NULL,
    fecha_factura        DATE,
    total                DECIMAL
)


CREATE TABLE LOS_CHIMICHANGAS.tipo_envio(
    cod_tipo              DECIMAL IDENTITY(1,1) NOT NULL, 
    descripcion           NVARCHAR(50)
)

CREATE TABLE LOS_CHIMICHANGAS.detalle_venta(
    cod_detalle_venta     DECIMAL IDENTITY(1,1) NOT NULL,
    cod_publicacion       DECIMAL               NOT NULL,
    precio                DECIMAL,
    subtotal              DECIMAL,
    cantidad              DECIMAL
)

CREATE TABLE LOS_CHIMICHANGAS.tipo_medio_de_pago(
    cod_tipo_medio_pago   DECIMAL IDENTITY(1,1) NOT NULL,
    descripcion           NVARCHAR(50)
)

CREATE TABLE LOS_CHIMICHANGAS.medio_de_pago(
    cod_medio  DECIMAL IDENTITY(1,1) NOT NULL,
    cod_tipo_medio_pago   DECIMAL	 NOT NULL,
    descripcion           NVARCHAR(50)
)

CREATE TABLE LOS_CHIMICHANGAS.detalle_pago(
    cod_detalle          DECIMAL IDENTITY(1,1)  NOT NULL,
    nro_tarjeta          NVARCHAR(50),
    fecha_vecimiento     DATE,
    cuotas               DECIMAL
)

CREATE TABLE LOS_CHIMICHANGAS.venta(
    cod_venta              DECIMAL IDENTITY(1,1) NOT NULL,
    cod_cliente            DECIMAL               NOT NULL,
    cod_detalle_venta      DECIMAL               NOT NULL,
    fecha_hora             DATETIME,
    total                  DECIMAL
)

CREATE TABLE LOS_CHIMICHANGAS.pago(
    cod_pago               DECIMAL IDENTITY(1,1)    NOT NULL,
    cod_venta              DECIMAL					NOT NULL,
    cod_detalle_pago       DECIMAL        			NOT NULL,
	cod_medio	           DECIMAL					NOT NULL,
	fecha_pago	           DATE,
    importe                DECIMAL
)

CREATE TABLE LOS_CHIMICHANGAS.envio(
    cod_envio              DECIMAL IDENTITY(1,1)    NOT NULL,
    cod_venta              DECIMAL                  NOT NULL,
    cod_domicilio          DECIMAL                  NOT NULL,
    cod_tipo               DECIMAL                  NOT NULL,
    fecha_programada       DATE,
    horario_inicio         TIME,
    horario_fin            TIME,
    fecha_entrega          DATE,
    costo_envio            DECIMAL
)

-------------------- Creación de PK ---------------------------

ALTER TABLE LOS_CHIMICHANGAS.provincia
ADD CONSTRAINT pk_provincia PRIMARY KEY (cod_provincia);

ALTER TABLE LOS_CHIMICHANGAS.localidad
ADD CONSTRAINT pk_localidad PRIMARY KEY (cod_localidad);

ALTER TABLE LOS_CHIMICHANGAS.domicilio
ADD CONSTRAINT pk_domicilio PRIMARY KEY (cod_domicilio);

ALTER TABLE LOS_CHIMICHANGAS.usuario
ADD CONSTRAINT pk_usuario PRIMARY KEY (cod_usuario);

ALTER TABLE LOS_CHIMICHANGAS.cliente
ADD CONSTRAINT pk_cliente PRIMARY KEY (cod_cliente);

ALTER TABLE LOS_CHIMICHANGAS.vendedor
ADD CONSTRAINT pk_vendedor PRIMARY KEY (cod_vendedor);

ALTER TABLE LOS_CHIMICHANGAS.rubro
ADD CONSTRAINT pk_rubro PRIMARY KEY (cod_rubro);

ALTER TABLE LOS_CHIMICHANGAS.subrubro
ADD CONSTRAINT pk_subrubro PRIMARY KEY (cod_subrubro);

ALTER TABLE LOS_CHIMICHANGAS.marca_producto
ADD CONSTRAINT pk_marca_producto PRIMARY KEY (cod_marca);

ALTER TABLE LOS_CHIMICHANGAS.modelo_producto
ADD CONSTRAINT pk_modelo_producto PRIMARY KEY (cod_modelo);

ALTER TABLE LOS_CHIMICHANGAS.producto
ADD CONSTRAINT pk_producto PRIMARY KEY (cod_producto);

ALTER TABLE LOS_CHIMICHANGAS.almacen
ADD CONSTRAINT pk_almacen PRIMARY KEY (cod_almacen);

ALTER TABLE LOS_CHIMICHANGAS.publicacion
ADD CONSTRAINT pk_publicacion PRIMARY KEY (cod_publicacion);

ALTER TABLE LOS_CHIMICHANGAS.tipo_detalle_factura
ADD CONSTRAINT pk_tipo_detalle_factura PRIMARY KEY (cod_tipo);

ALTER TABLE LOS_CHIMICHANGAS.detalle_factura
ADD CONSTRAINT pk_detalle_factura PRIMARY KEY (cod_detalle_factura);

ALTER TABLE LOS_CHIMICHANGAS.factura
ADD CONSTRAINT pk_factura PRIMARY KEY (cod_factura);

ALTER TABLE LOS_CHIMICHANGAS.concepto
ADD CONSTRAINT pk_concepto PRIMARY KEY (cod_concepto);

ALTER TABLE LOS_CHIMICHANGAS.tipo_envio
ADD CONSTRAINT pk_tipo_envio PRIMARY KEY (cod_tipo);

ALTER TABLE LOS_CHIMICHANGAS.detalle_venta
ADD CONSTRAINT pk_detalle_venta PRIMARY KEY (cod_detalle_venta);

ALTER TABLE LOS_CHIMICHANGAS.tipo_medio_de_pago
ADD CONSTRAINT pk_tipo_medio_de_pago PRIMARY KEY (cod_tipo_medio_pago);

ALTER TABLE LOS_CHIMICHANGAS.medio_de_pago
ADD CONSTRAINT pk_medio_de_pago PRIMARY KEY (cod_medio);

ALTER TABLE LOS_CHIMICHANGAS.detalle_pago
ADD CONSTRAINT pk_detalle_pago PRIMARY KEY (cod_detalle);

ALTER TABLE LOS_CHIMICHANGAS.venta
ADD CONSTRAINT pk_venta PRIMARY KEY (cod_venta);

ALTER TABLE LOS_CHIMICHANGAS.pago
ADD CONSTRAINT pk_pago PRIMARY KEY (cod_pago);

ALTER TABLE LOS_CHIMICHANGAS.envio
ADD CONSTRAINT pk_envio PRIMARY KEY (cod_envio);

GO

-------------------- Creación de FK ---------------------------


ALTER TABLE LOS_CHIMICHANGAS.localidad
ADD CONSTRAINT fk_localidad_provincia
FOREIGN KEY (cod_provincia) REFERENCES LOS_CHIMICHANGAS.provincia(cod_provincia);

ALTER TABLE LOS_CHIMICHANGAS.domicilio
ADD CONSTRAINT fk_domicilio_provincia
FOREIGN KEY (cod_provincia) REFERENCES LOS_CHIMICHANGAS.provincia(cod_provincia);

ALTER TABLE LOS_CHIMICHANGAS.usuario
ADD CONSTRAINT fk_usuario_domicilio
FOREIGN KEY (cod_domicilio) REFERENCES LOS_CHIMICHANGAS.domicilio(cod_domicilio);

ALTER TABLE LOS_CHIMICHANGAS.cliente
ADD CONSTRAINT fk_cliente_usuario
FOREIGN KEY (cod_usuario) REFERENCES LOS_CHIMICHANGAS.usuario(cod_usuario);

ALTER TABLE LOS_CHIMICHANGAS.vendedor
ADD CONSTRAINT fk_vendedor_usuario
FOREIGN KEY (cod_usuario) REFERENCES LOS_CHIMICHANGAS.usuario(cod_usuario);

ALTER TABLE LOS_CHIMICHANGAS.subrubro
ADD CONSTRAINT fk_subrubro_rubro
FOREIGN KEY (cod_rubro) REFERENCES LOS_CHIMICHANGAS.rubro(cod_rubro);

ALTER TABLE LOS_CHIMICHANGAS.producto
ADD CONSTRAINT fk_producto_subrubro
FOREIGN KEY (cod_subrubro) REFERENCES LOS_CHIMICHANGAS.subrubro(cod_subrubro);

ALTER TABLE LOS_CHIMICHANGAS.producto
ADD CONSTRAINT fk_producto_marca
FOREIGN KEY (cod_marca) REFERENCES LOS_CHIMICHANGAS.marca_producto(cod_marca);

ALTER TABLE LOS_CHIMICHANGAS.producto
ADD CONSTRAINT fk_producto_modelo
FOREIGN KEY (cod_modelo) REFERENCES LOS_CHIMICHANGAS.modelo_producto(cod_modelo);

ALTER TABLE LOS_CHIMICHANGAS.almacen
ADD CONSTRAINT fk_almacen_provincia
FOREIGN KEY (cod_provincia) REFERENCES LOS_CHIMICHANGAS.provincia(cod_provincia);

ALTER TABLE LOS_CHIMICHANGAS.publicacion
ADD CONSTRAINT fk_publicacion_vendedor
FOREIGN KEY (cod_vendedor) REFERENCES LOS_CHIMICHANGAS.vendedor(cod_vendedor);

ALTER TABLE LOS_CHIMICHANGAS.publicacion
ADD CONSTRAINT fk_publicacion_producto
FOREIGN KEY (cod_producto) REFERENCES LOS_CHIMICHANGAS.producto(cod_producto);

ALTER TABLE LOS_CHIMICHANGAS.publicacion
ADD CONSTRAINT fk_publicacion_almacen
FOREIGN KEY (cod_almacen) REFERENCES LOS_CHIMICHANGAS.almacen(cod_almacen);

ALTER TABLE LOS_CHIMICHANGAS.detalle_factura
ADD CONSTRAINT fk_detalle_factura_publicacion
FOREIGN KEY (cod_publicacion) REFERENCES LOS_CHIMICHANGAS.publicacion(cod_publicacion);

ALTER TABLE LOS_CHIMICHANGAS.detalle_factura
ADD CONSTRAINT fk_detalle_factura_tipo
FOREIGN KEY (cod_tipo) REFERENCES LOS_CHIMICHANGAS.tipo_detalle_factura(cod_tipo);

ALTER TABLE LOS_CHIMICHANGAS.factura
ADD CONSTRAINT fk_factura_detalle_factura
FOREIGN KEY (cod_detalle_factura) REFERENCES LOS_CHIMICHANGAS.detalle_factura(cod_detalle_factura);

ALTER TABLE LOS_CHIMICHANGAS.factura
ADD CONSTRAINT fk_factura_cliente
FOREIGN KEY (cod_cliente) REFERENCES LOS_CHIMICHANGAS.cliente(cod_cliente);

ALTER TABLE LOS_CHIMICHANGAS.concepto
ADD CONSTRAINT fk_concepto_detalle_factura
FOREIGN KEY (cod_detalle_factura) REFERENCES LOS_CHIMICHANGAS.detalle_factura(cod_detalle_factura);

ALTER TABLE LOS_CHIMICHANGAS.detalle_venta
ADD CONSTRAINT fk_detalle_venta_publicacion
FOREIGN KEY (cod_publicacion) REFERENCES LOS_CHIMICHANGAS.publicacion(cod_publicacion);

ALTER TABLE LOS_CHIMICHANGAS.medio_de_pago
ADD CONSTRAINT fk_medio_de_pago_tipo_medio
FOREIGN KEY (cod_tipo_medio_pago) REFERENCES LOS_CHIMICHANGAS.tipo_medio_de_pago(cod_tipo_medio_pago);

ALTER TABLE LOS_CHIMICHANGAS.venta
ADD CONSTRAINT fk_venta_cliente
FOREIGN KEY (cod_cliente) REFERENCES LOS_CHIMICHANGAS.cliente(cod_cliente);

ALTER TABLE LOS_CHIMICHANGAS.venta
ADD CONSTRAINT fk_venta_detalle_venta
FOREIGN KEY (cod_detalle_venta) REFERENCES LOS_CHIMICHANGAS.detalle_venta(cod_detalle_venta);

ALTER TABLE LOS_CHIMICHANGAS.pago
ADD CONSTRAINT fk_pago_venta
FOREIGN KEY (cod_venta) REFERENCES LOS_CHIMICHANGAS.venta(cod_venta);

ALTER TABLE LOS_CHIMICHANGAS.pago
ADD CONSTRAINT fk_pago_detalle_pago
FOREIGN KEY (cod_detalle_pago) REFERENCES LOS_CHIMICHANGAS.detalle_pago(cod_detalle);

ALTER TABLE LOS_CHIMICHANGAS.pago
ADD CONSTRAINT fk_pago_medio
FOREIGN KEY (cod_medio) REFERENCES LOS_CHIMICHANGAS.medio_de_pago(cod_medio);

ALTER TABLE LOS_CHIMICHANGAS.envio
ADD CONSTRAINT fk_envio_venta
FOREIGN KEY (cod_venta) REFERENCES LOS_CHIMICHANGAS.venta(cod_venta);

ALTER TABLE LOS_CHIMICHANGAS.envio
ADD CONSTRAINT fk_envio_domicilio
FOREIGN KEY (cod_domicilio) REFERENCES LOS_CHIMICHANGAS.domicilio(cod_domicilio);

ALTER TABLE LOS_CHIMICHANGAS.envio
ADD CONSTRAINT fk_envio_tipo
FOREIGN KEY (cod_tipo) REFERENCES LOS_CHIMICHANGAS.tipo_envio(cod_tipo);

GO

--------------------------- Procedures ---------------------------

-- Migración de Provincia, Localidad y Domicilio ✅

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_provincia
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.provincia (nombre)
    SELECT DISTINCT VEN_USUARIO_DOMICILIO_PROVINCIA AS nombre
    FROM gd_esquema.Maestra
    WHERE VEN_USUARIO_DOMICILIO_PROVINCIA IS NOT NULL

    UNION

    SELECT DISTINCT CLI_USUARIO_DOMICILIO_PROVINCIA AS nombre
    FROM gd_esquema.Maestra
    WHERE CLI_USUARIO_DOMICILIO_PROVINCIA IS NOT NULL

    UNION

    SELECT DISTINCT ALMACEN_PROVINCIA AS nombre
    FROM gd_esquema.Maestra
    WHERE ALMACEN_PROVINCIA IS NOT NULL;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_localidad
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.localidad (cod_provincia, nombre)
    SELECT DISTINCT p.cod_provincia, m.VEN_USUARIO_DOMICILIO_LOCALIDAD
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.provincia AS p ON p.nombre = m.VEN_USUARIO_DOMICILIO_PROVINCIA 
    WHERE VEN_USUARIO_DOMICILIO_LOCALIDAD IS NOT NULL

    UNION

    SELECT DISTINCT p.cod_provincia, m.ALMACEN_Localidad 
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.provincia AS p ON p.nombre = m.ALMACEN_PROVINCIA
    WHERE ALMACEN_Localidad IS NOT NULL

    UNION

    SELECT DISTINCT p.cod_provincia, m.CLI_USUARIO_DOMICILIO_LOCALIDAD 
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.provincia AS p ON p.nombre = m.CLI_USUARIO_DOMICILIO_PROVINCIA
    WHERE CLI_USUARIO_DOMICILIO_LOCALIDAD IS NOT NULL;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_domicilio
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.domicilio (cod_provincia, calle, numero, cod_postal, piso, departamento)
    SELECT DISTINCT 
		p.cod_provincia,
		m.VEN_USUARIO_DOMICILIO_CALLE, 
		m.VEN_USUARIO_DOMICILIO_NRO_CALLE,
		m.VEN_USUARIO_DOMICILIO_CP,
		m.VEN_USUARIO_DOMICILIO_PISO, 
		m.VEN_USUARIO_DOMICILIO_DEPTO
    FROM gd_esquema.Maestra AS m
	JOIN LOS_CHIMICHANGAS.provincia AS p ON p.nombre = m.VEN_USUARIO_DOMICILIO_PROVINCIA
    WHERE m.VEN_USUARIO_DOMICILIO_CALLE IS NOT NULL AND
		  m.VEN_USUARIO_DOMICILIO_NRO_CALLE IS NOT NULL AND
		  m.VEN_USUARIO_DOMICILIO_CP IS NOT NULL AND
		  m.VEN_USUARIO_DOMICILIO_PISO IS NOT NULL AND
	      m.VEN_USUARIO_DOMICILIO_DEPTO IS NOT NULL
		  
	UNION

    SELECT DISTINCT 
        p.cod_provincia,                              
        m.CLI_USUARIO_DOMICILIO_CALLE AS calle,       
        m.CLI_USUARIO_DOMICILIO_NRO_CALLE AS numero,  
        m.CLI_USUARIO_DOMICILIO_CP AS cod_postal,     
        m.CLI_USUARIO_DOMICILIO_PISO AS piso,         
        m.CLI_USUARIO_DOMICILIO_DEPTO AS departamento 
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.provincia AS p ON m.CLI_USUARIO_DOMICILIO_PROVINCIA = p.nombre
	WHERE m.CLI_USUARIO_DOMICILIO_CALLE IS NOT NULL AND
		  m.CLI_USUARIO_DOMICILIO_NRO_CALLE IS NOT NULL AND
		  m.CLI_USUARIO_DOMICILIO_CP IS NOT NULL AND
		  m.CLI_USUARIO_DOMICILIO_PISO IS NOT NULL AND
	      m.CLI_USUARIO_DOMICILIO_DEPTO IS NOT NULL

    UNION

    SELECT DISTINCT 
        p.cod_provincia,                       
        m.ALMACEN_CALLE AS calle,               
        m.ALMACEN_NRO_CALLE AS numero,         
        m.ALMACEN_CODIGO AS cod_postal,         
        NULL AS piso,                           
        NULL AS departamento                    
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.provincia AS p ON m.ALMACEN_PROVINCIA = p.nombre
    WHERE m.ALMACEN_CALLE IS NOT NULL AND
		  m.ALMACEN_NRO_CALLE IS NOT NULL AND
		  m.ALMACEN_CODIGO IS NOT NULL
END
GO

-- Migración de Usuario, Cliente y Vendedor (PAB PAB)

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_usuario
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.usuario (cod_domicilio, nombre, contrasenia, fecha_creacion)
    SELECT DISTINCT d.cod_domicilio, m.VEN_USUARIO_NOMBRE, m.VEN_USUARIO_PASS, m.VEN_USUARIO_FECHA_CREACION
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.domicilio AS d 
        ON m.VEN_USUARIO_DOMICILIO_CALLE = d.calle
        AND m.VEN_USUARIO_DOMICILIO_NRO_CALLE = d.numero
        AND m.VEN_USUARIO_DOMICILIO_CP = d.cod_postal
        AND m.VEN_USUARIO_DOMICILIO_PROVINCIA = (SELECT nombre FROM LOS_CHIMICHANGAS.provincia WHERE cod_provincia = d.cod_provincia)
    WHERE m.VEN_USUARIO_NOMBRE IS NOT NULL
	
	UNION

    SELECT DISTINCT d.cod_domicilio, m.CLI_USUARIO_NOMBRE, m.CLI_USUARIO_PASS, m.CLI_USUARIO_FECHA_CREACION
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.domicilio AS d 
        ON m.CLI_USUARIO_DOMICILIO_CALLE = d.calle
        AND m.CLI_USUARIO_DOMICILIO_NRO_CALLE = d.numero
        AND m.CLI_USUARIO_DOMICILIO_CP = d.cod_postal
        AND m.CLI_USUARIO_DOMICILIO_PROVINCIA = (SELECT nombre FROM LOS_CHIMICHANGAS.provincia WHERE cod_provincia = d.cod_provincia)
    WHERE m.CLI_USUARIO_NOMBRE IS NOT NULL
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_cliente
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.cliente (nombre, apellido, fecha_nacimiento, mail, dni, cod_usuario)
    SELECT DISTINCT CLIENTE_NOMBRE, CLIENTE_APELLIDO, CLIENTE_FECHA_NAC, CLIENTE_MAIL, CLIENTE_DNI, u.cod_usuario
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.usuario AS u ON m.CLI_USUARIO_NOMBRE = u.nombre
    WHERE CLIENTE_NOMBRE IS NOT NULL;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_vendedor
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.vendedor (razon_social, cuit, mail, cod_usuario)
    SELECT DISTINCT VENDEDOR_RAZON_SOCIAL, VENDEDOR_CUIT, VENDEDOR_MAIL, u.cod_usuario
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.usuario AS u ON m.VEN_USUARIO_NOMBRE = u.nombre
    WHERE VENDEDOR_RAZON_SOCIAL IS NOT NULL;
END
GO

-- Migración de Rubro y Subrubro (LIAM)

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_rubro
AS
BEGIN
    insert into LOS_CHIMICHANGAS.rubro (descripcion)
    select distinct m.PRODUCTO_RUBRO_DESCRIPCION
    from gd_esquema.Maestra
    where m.PRODUCTO_RUBRO_DESCRIPCION is not null
END
GO


CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_subrubro
AS
BEGIN
    insert into LOS_CHIMICHANGAS.subrubro (cod_rubro, descripcion)
    select distinct r.cod_rubro, m.PRODUCTO_SUB_RUBRO
    from gd_esquema.Maestra as m
    join LOS_CHIMICHANGAS.rubro as r on m.PRODUCTO_RUBRO_DESCRIPCION = r.descripcion
    where m.PRODUCTO_SUB_RUBRO is not null
END
GO

-- Migración de Marca Producto, Modelo Producto y Producto (joacoBANANA)

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_marca_producto
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.marca_producto (descripcion)
    SELECT DISTINCT m.PRODUCTO_DESCRIPCION AS prod_desc
    FROM gd_esquema.Maestra as m
    WHERE prod_desc IS NOT NULL;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_modelo_producto
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.modelo_producto (descripcion)
    SELECT DISTINCT m.PRODUCTO_MOD_DESCRIPCION AS mod_desc
    FROM gd_esquema.Maestra as m
    WHERE mod_desc IS NOT NULL;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_producto
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.producto (cod_subrubro, cod_marca, cod_modelo, descripcion, precio)
        SELECT DISTINCT 
        m.PRODUCTO_SUB_RUBRO AS cod_subrubro,
        mp.cod_marca as cod_marca,
        m.PRODUCTO_MOD_CODIGO AS cod_modelo,
        m.PRODUCTO_DESCRIPCION AS descripcion,
        m.PRODUCTO_PRECIO AS precio
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.marca_producto AS mp ON m.PRODUCTO_MARCA = mp.descripcion
    JOIN LOS_CHIMICHANGAS.subrubro AS sr ON m.PRODUCTO_SUB_RUBRO = sr.descripcion
    JOIN LOS_CHIMICHANGAS.modelo_producto AS mo ON m.PRODUCTO_MOD_CODIGO = mo.cod_modelo
      WHERE m.PRODUCTO_SUB_RUBRO IS NOT NULL
      AND m.PRODUCTO_MARCA IS NOT NULL
      AND m.PRODUCTO_MOD_CODIGO IS NOT NULL
      AND m.PRODUCTO_DESCRIPCION IS NOT NULL
      AND m.PRODUCTO_PRECIO IS NOT NULL;
END
GO

-- Migración de Almacen y Publicacion (PAB PAB)

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_almacen
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.almacen (cod_provincia, descripcion, calle, nro_calle, costo_dia)
    SELECT DISTINCT 
        p.cod_provincia,                     
        m.ALMACEN_Localidad AS descripcion,   
        m.ALMACEN_CALLE AS calle,             
        m.ALMACEN_NRO_CALLE AS nro_calle,     
        m.ALMACEN_COSTO_DIA_AL AS costo_dia   
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.provincia AS p      
    ON m.ALMACEN_PROVINCIA = p.descripcion    
    WHERE m.ALMACEN_CALLE IS NOT NULL;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_publicacion
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.publicacion (cod_vendedor, cod_producto, cod_almacen, descripcion, stock, fecha_inicio, fecha_fin, precio, costo_publicacion, porcentaje_venta)
    SELECT DISTINCT 
        v.cod_vendedor,                   
        p.cod_producto,                   
        a.cod_almacen,                    
        m.PUBLICACION_DESCRIPCION AS descripcion,   
        m.PUBLICACION_STOCK AS stock,              
        m.PUBLICACION_FECHA AS fecha_inicio,       
        m.PUBLICACION_FECHA_V AS fecha_fin,        
        m.PUBLICACION_PRECIO AS precio,           
        m.PUBLICACION_COSTO AS costo_publicacion,  
        m.PUBLICACION_PORC_VENTA AS porcentaje_venta  
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.vendedor AS v
        ON m.VENDEDOR_RAZON_SOCIAL = v.razon_social
    JOIN LOS_CHIMICHANGAS.producto AS p
        ON m.PRODUCTO_CODIGO = p.cod_producto
    JOIN LOS_CHIMICHANGAS.almacen AS a
        ON m.ALMACEN_CODIGO = a.cod_almacen
    WHERE m.PUBLICACION_DESCRIPCION IS NOT NULL;
END
GO

-- Migración de Tipo Detalle Factura, Detalle Factura, Concepto y Factura (PAB PAB)

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_tipo_detalle_factura
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.tipo_detalle_factura (descripcion)
    SELECT DISTINCT FACTURA_DET_TIPO
    FROM gd_esquema.Maestra
    WHERE FACTURA_DET_TIPO IS NOT NULL;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_detalle_factura
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.detalle_factura (cod_publicacion, cod_tipo, precio, cantidad, subtotal)
    SELECT DISTINCT 
        p.cod_publicacion,                     
        t.cod_tipo,                            
        m.FACTURA_DET_PRECIO AS precio,        
        m.FACTURA_DET_CANTIDAD AS cantidad,    
        m.FACTURA_DET_SUBTOTAL AS subtotal     
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.publicacion AS p
        ON m.PUBLICACION_CODIGO = p.cod_publicacion
    JOIN LOS_CHIMICHANGAS.tipo_detalle_factura AS t
        ON m.FACTURA_DET_TIPO = t.descripcion
    WHERE m.FACTURA_DET_PRECIO IS NOT NULL;
END
GO


--CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_concepto
--AS
--BEGIN
--    INSERT INTO LOS_CHIMICHANGAS.concepto (cod_detalle_factura, descripcion, precio, cantidad)
--    SELECT DISTINCT 
--        df.cod_detalle_factura,                 
--        --NO SE QUE HACER CON LA DESCRIPCION AS descripcion,  
--        df.precio,                              
--        df.cantidad                             
--    FROM LOS_CHIMICHANGAS.detalle_factura AS df
--    WHERE df.cod_detalle_factura IS NOT NULL;
--END
--GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_factura
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.factura (cod_detalle_factura, cod_cliente, fecha_factura, total)
    SELECT DISTINCT 
        df.cod_detalle_factura,               
        c.cod_cliente,                        
        m.FACTURA_FECHA AS fecha_factura,      
        m.FACTURA_TOTAL AS total              
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.detalle_factura AS df
        ON m.FACTURA_NUMERO = df.cod_detalle_factura
    JOIN LOS_CHIMICHANGAS.cliente AS c
        ON m.CLIENTE_DNI = c.dni               
    WHERE m.FACTURA_TOTAL IS NOT NULL;
END
GO

-- Migración de Tipo Envio y Envio (Liam)

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_tipo_envio
AS
BEGIN
    insert into LOS_CHIMICHANGAS.tipo_envio (descripcion)
    select distinct m.ENVIO_TIPO
    from gd_esquema.Maestra as m
    where m.ENVIO_TIPO is not null
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_envio
AS
BEGIN
    insert into LOS_CHIMICHANGAS.envio (cod_venta, cod_domicilio, cod_tipo, fecha_programada, horario_inicio, horario_fin, fecha_entrega, costo_envio)
    select distinct 
        v.cod_venta,
        d.cod_domicilio,
        te.cod_tipo,
        m.ENVIO_FECHA_PROGRAMADA,
        m.ENVIO_HORARIO_INICIO,
        m.ENVIO_HORARIO_FIN,
        m.ENVIO_FECHA_ENTREGA,
        m.ENVIO_COSTO
    from gd_esquema.Maestra as m
    join LOS_CHIMICHANGAS.venta as v on m.VENTA_CODIGO = v.cod_venta
    join LOS_CHIMICHANGAS.domicilio as d on m.ENVIO_DOMICILIO = d.cod_domicilio
    join LOS_CHIMICHANGAS.tipo_envio as te on m.ENVIO_TIPO = te.descripcion
    where m.ENVIO_FECHA_PROGRAMADA is not null
    and m.ENVIO_HORARIO_INICIO is not null
    and m.ENVIO_HORARIO_FIN is not null
    and m.ENVIO_FECHA_ENTREGA is not null
    and m.ENVIO_COSTO is not null
END
GO


-- Migración de Detalle Venta y Venta (PABPAB)

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_detalle_venta
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.detalle_venta (cod_publicacion, precio, subtotal, cantidad)
    SELECT DISTINCT 
        p.cod_publicacion,                  
        m.VENTA_DET_PRECIO AS precio,       
        m.VENTA_DET_SUB_TOTAL AS subtotal,  
        m.VENTA_DET_CANT AS cantidad       
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.publicacion AS p
        ON m.PUBLICACION_CODIGO = p.cod_publicacion
    WHERE m.VENTA_DET_PRECIO IS NOT NULL;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_venta
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.venta (cod_cliente, cod_detalle_venta, fecha_hora, total)
    SELECT DISTINCT 
        c.cod_cliente,                      
        dv.cod_detalle_venta,               
        m.VENTA_FECHA AS fecha_hora,        
        m.VENTA_TOTAL AS total              
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.cliente AS c
        ON m.CLIENTE_DNI = c.dni           
    JOIN LOS_CHIMICHANGAS.detalle_venta AS dv
        ON m.VENTA_CODIGO = dv.cod_detalle_venta  
    WHERE m.VENTA_TOTAL IS NOT NULL;
END
GO

-- Migración de Tipo Medio de Pago, Medio de Pago, Detalle Pago y Pago *(jaoacobanana)

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_tipo_medio_de_pago
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.tipo_medio_de_pago (descripcion)
    SELECT DISTINCT m.PAGO_TIPO_MEDIO_PAGO AS tipo_medio_pago
    FROM gd_esquema.Maestra AS m 
    WHERE tipo_medio_pago IS NOT NULL
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_medio_de_pago
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.medio_de_pago (cod_tipo_medio_pago, descripcion)
    SELECT DISTINCT 
        tmp.cod_tipo_medio_pago,
        m.PAGO_TIPO_MEDIO_PAGO AS descripcion
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.tipo_medio_de_pago AS tmp ON m.PAGO_MEDIO_PAGO = tmp.descripcion
    WHERE m.PAGO_TIPO_MEDIO_PAGO IS NOT NULL
    AND m.PAGO_MEDIO_PAGO IS NOT NULL;
GO
END

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_detalle_pago
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.detalle_pago (nro_tarjeta, fecha_vecimiento, cuotas)
    SELECT DISTINCT 
        m.PAGO_NRO_TARJETA AS nro_tarjeta,
        m.PAGO_FECHA_VENC_TARJETA AS fecha_vecimiento,
        m.PAGO_CANT_CUOTAS AS cuotas
    FROM gd_esquema.Maestra AS m
    WHERE m.PAGO_NRO_TARJETA IS NOT NULL
      AND m.PAGO_FECHA_VENC_TARJETA IS NOT NULL
      AND m.PAGO_CANT_CUOTAS IS NOT NULL;    
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_pago
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.pago(cod_venta, cod_detalle, cod_medio, fecha_pago, importe)
    SELECT DISTINCT 
        v.cod_venta,
        dp.cod_detalle,
        mp.cod_medio,
        m.PAGO_FECHA AS fecha_pago
        m.IMPORTE AS importe
    FROM gd_esquema.Maestra as m 
    JOIN LOS_CHIMICHANGAS.venta AS v ON m.VENTA_CODIGO = v.cod_venta
    JOIN LOS_CHIMICHANGAS.detalle_pago AS dp ON m.PAGO_NRO_TARJETA = dp.nro_tarjeta
                                             AND m.PAGO_TARJETA_FECHA_VENC = dp.fecha_vecimiento
                                             AND m.PAGO_CANT_CUOTAS = dp.cuotas
    JOIN LOS_CHIMICHANGAS.medio_de_pago AS mp ON m.PAGO_MEDIO_PAGO = mp.descripcion
    WHERE m.VENTA_CODIGO IS NOT NULL
    AND m.PAGO_NRO_TARJETA IS NOT NULL
    AND m.PAGO_FECHA_VENC_TARJETA IS NOT NULL
    AND m.PAGO_CANT_CUOTAS IS NOT NULL
    AND m.PAGO_MEDIO_PAGO IS NOT NULL
    AND m.PAGO_FECHA IS NOT NULL
    AND m.PAGO_IMPORTE IS NOT NULL;
END
GO

--------------------------- Super Procedure ---------------------------

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_db 
AS
BEGIN
    EXEC LOS_CHIMICHANGAS.migrar_provincia              --FUNCIONA ✅
    EXEC LOS_CHIMICHANGAS.migrar_localidad              --FUNCIONA ✅
    EXEC LOS_CHIMICHANGAS.migrar_domicilio              --FUNCIONA ✅
    EXEC LOS_CHIMICHANGAS.migrar_usuario                --FUNCIONA ✅
    EXEC LOS_CHIMICHANGAS.migrar_cliente                --FALTA PROBAR (PAB)
    EXEC LOS_CHIMICHANGAS.migrar_vendedor               --FALTA PROBAR (PAB)
    EXEC LOS_CHIMICHANGAS.migrar_rubro                  --FUNCIONA ✅
    EXEC LOS_CHIMICHANGAS.migrar_subrubro               --FUNCIONA ✅
    EXEC LOS_CHIMICHANGAS.migrar_marca_producto         --FALTA PROBAR 
    EXEC LOS_CHIMICHANGAS.migrar_modelo_producto        --FALTA PROBAR
    EXEC LOS_CHIMICHANGAS.migrar_producto               --FALTA PROBAR
    EXEC LOS_CHIMICHANGAS.migrar_almacen                --FALTA PROBAR (PAB)
    EXEC LOS_CHIMICHANGAS.migrar_publicacion            --FALTA PROBAR (PAB)
    EXEC LOS_CHIMICHANGAS.migrar_tipo_detalle_factura   --FALTA PROBAR (PAB)
    EXEC LOS_CHIMICHANGAS.migrar_detalle_factura        --FALTA PROBAR (PAB)
    EXEC LOS_CHIMICHANGAS.migrar_factura                --FALTA PROBAR (PAB)
    EXEC LOS_CHIMICHANGAS.migrar_concepto               --FALTA LA DESCRIPCION (PAB)
    EXEC LOS_CHIMICHANGAS.migrar_tipo_envio             --FALTA PROBAR
    EXEC LOS_CHIMICHANGAS.migrar_detalle_venta          --FALTA PROBAR (PAB)
    EXEC LOS_CHIMICHANGAS.migrar_tipo_medio_de_pago     --FALTA PROBAR
    EXEC LOS_CHIMICHANGAS.migrar_medio_de_pago          --FALTA PROBAR
    EXEC LOS_CHIMICHANGAS.migrar_detalle_pago           --FALTA PROBAR
    EXEC LOS_CHIMICHANGAS.migrar_venta                  --FALTA PROBAR (PAB)
    EXEC LOS_CHIMICHANGAS.migrar_pago                   --FALTA PROBAR (sin miedo!!!!)
    EXEC LOS_CHIMICHANGAS.migrar_envio                  --FALTA PROBAR
END

EXEC LOS_CHIMICHANGAS.migrar_db 