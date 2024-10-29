USE GD2C2024
GO

------------ Eliminación de tablas --------------------

IF OBJECT_ID('LOS_CHIMICHANGAS.envio','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.envio;

IF OBJECT_ID('LOS_CHIMICHANGAS.pago','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.pago;

IF OBJECT_ID('LOS_CHIMICHANGAS.detalle_venta','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.detalle_venta;

IF OBJECT_ID('LOS_CHIMICHANGAS.venta','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.venta;

IF OBJECT_ID('LOS_CHIMICHANGAS.detalle_pago','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.detalle_pago;

IF OBJECT_ID('LOS_CHIMICHANGAS.medio_de_pago','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.medio_de_pago;

IF OBJECT_ID('LOS_CHIMICHANGAS.tipo_medio_de_pago','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.tipo_medio_de_pago;
    
IF OBJECT_ID('LOS_CHIMICHANGAS.venta','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.venta;

IF OBJECT_ID('LOS_CHIMICHANGAS.tipo_envio','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.tipo_envio;

IF OBJECT_ID('LOS_CHIMICHANGAS.concepto','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.concepto;

IF OBJECT_ID('LOS_CHIMICHANGAS.detalle_factura','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.detalle_factura;

IF OBJECT_ID('LOS_CHIMICHANGAS.factura','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.factura;

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

IF OBJECT_ID('LOS_CHIMICHANGAS.domicilio','U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.domicilio;

IF OBJECT_ID('LOS_CHIMICHANGAS.usuario','U') IS NOT NULL
DROP TABLE LOS_CHIMICHANGAS.usuario;

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
    cod_localidad       DECIMAL				    NOT NULL,
    cod_usuario         DECIMAL				    NOT NULL,
    calle               NVARCHAR(50),
    numero              NVARCHAR(50),
    cod_postal          NVARCHAR(50),           
    piso                NVARCHAR(50)            NULL,
    departamento        NVARCHAR(50)            NULL
)

CREATE TABLE LOS_CHIMICHANGAS.usuario(
	cod_usuario			DECIMAL IDENTITY(1,1)	NOT NULL,
--  cod_domicilio       DECIMAL		            NOT NULL,
    nombre              NVARCHAR(50),			
    contrasenia         NVARCHAR(50),
    mail                NVARCHAR(50),
    fecha_creacion      DATE
)

CREATE TABLE LOS_CHIMICHANGAS.cliente(
    cod_cliente        DECIMAL IDENTITY(1,1)	NOT NULL,
    cod_usuario        DECIMAL					NOT NULL,
    nombre             NVARCHAR(50),
    apellido           NVARCHAR(50),
    fecha_nacimiento   DATE,
    dni                NVARCHAR(50)
)

CREATE TABLE LOS_CHIMICHANGAS.vendedor(
    cod_vendedor       DECIMAL IDENTITY(1,1)	NOT NULL,
    cod_usuario        DECIMAL					NOT NULL,
    razon_social       NVARCHAR(50)				NOT NULL,
    cuit               NVARCHAR(50),
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
    cod_modelo       DECIMAL		            NOT NULL, 
    descripcion      NVARCHAR(50)
)

CREATE TABLE LOS_CHIMICHANGAS.producto(
    cod_producto     DECIMAL  IDENTITY(1,1)     NOT NULL,
    cod_subrubro     DECIMAL                    NOT NULL,
    cod_marca        DECIMAL                    NOT NULL,
    cod_modelo       DECIMAL                    NOT NULL,
    descripcion      NVARCHAR(50),
    codigo           NVARCHAR(50),
    precio           DECIMAL(18, 2)
)

CREATE TABLE LOS_CHIMICHANGAS.almacen(
    cod_almacen     DECIMAL             		NOT NULL,
	cod_provincia	DECIMAL						NOT NULL, 
    descripcion     NVARCHAR(50),
    calle           NVARCHAR(50), 
    nro_calle       DECIMAL,
    costo_dia       DECIMAL(18, 2)
)

CREATE TABLE LOS_CHIMICHANGAS.publicacion(
    cod_publicacion    DECIMAL              	NOT NULL,
	cod_vendedor	   DECIMAL                  NOT NULL,
    cod_producto       DECIMAL                  NOT NULL,
    cod_almacen        DECIMAL                  NOT NULL,
    descripcion        NVARCHAR(50),
    stock              INTEGER,
    fecha_inicio       DATE,
    fecha_fin          DATE,
    precio             DECIMAL(18, 2),
    costo_publicacion  DECIMAL(18, 2),
    porcentaje_venta   DECIMAL(18, 2)
)

CREATE TABLE LOS_CHIMICHANGAS.tipo_detalle_factura(
    cod_tipo		  DECIMAL IDENTITY(1,1)    	NOT NULL,
    descripcion       NVARCHAR(50)
)

CREATE TABLE LOS_CHIMICHANGAS.detalle_factura(
    cod_detalle_factura  DECIMAL IDENTITY(1,1)  NOT NULL,
    cod_publicacion	     DECIMAL                NOT NULL,
    cod_tipo             DECIMAL                NOT NULL,
    cod_factura          DECIMAL                NOT NULL,  
    precio               DECIMAL(18, 2),
    cantidad             DECIMAL,
    subtotal             DECIMAL(18, 2)
)

CREATE TABLE LOS_CHIMICHANGAS.concepto(
    cod_concepto         DECIMAL IDENTITY(1,1)  NOT NULL,
    cod_detalle_factura  DECIMAL                NOT NULL,
    descripcion          NVARCHAR(50),
    precio               DECIMAL,
    cantidad             DECIMAL
)

CREATE TABLE LOS_CHIMICHANGAS.factura(
    cod_factura          DECIMAL                NOT NULL,
    cod_usuario          DECIMAL                NOT NULL,
    fecha_factura        DATE,
    total                DECIMAL(18, 2)
)


CREATE TABLE LOS_CHIMICHANGAS.tipo_envio(
    cod_tipo              DECIMAL IDENTITY(1,1) NOT NULL, 
    descripcion           NVARCHAR(50)
)

CREATE TABLE LOS_CHIMICHANGAS.detalle_venta(
    cod_detalle_venta     DECIMAL IDENTITY(1,1) NOT NULL,
    cod_publicacion       DECIMAL               NOT NULL,
    cod_venta             DECIMAL               NOT NULL,
    precio                DECIMAL(18, 2),
    subtotal              DECIMAL(18, 2),
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
    cod_venta              DECIMAL               NOT NULL,
    cod_cliente            DECIMAL               NOT NULL,
    fecha_hora             DATETIME,
    total                  DECIMAL(18, 2)
)

CREATE TABLE LOS_CHIMICHANGAS.pago(
    cod_pago               DECIMAL IDENTITY(1,1)    NOT NULL,
    cod_venta              DECIMAL					NOT NULL,
    cod_detalle_pago       DECIMAL        			NOT NULL,
	cod_medio	           DECIMAL					NOT NULL,
	fecha_pago	           DATE,
    importe                DECIMAL(18, 2)
)

CREATE TABLE LOS_CHIMICHANGAS.envio(
    cod_envio              DECIMAL IDENTITY(1,1)    NOT NULL,
    cod_venta              DECIMAL                  NOT NULL,
    cod_domicilio          DECIMAL                  NOT NULL,
    cod_tipo               DECIMAL                  NOT NULL,
    fecha_programada       DATE,
    horario_inicio         DECIMAL,
    horario_fin            DECIMAL,
    fecha_entrega          DATE,
    costo_envio            DECIMAL(18, 2)
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
ADD CONSTRAINT fk_domicilio_localidad
FOREIGN KEY (cod_localidad) REFERENCES LOS_CHIMICHANGAS.localidad(cod_localidad);

ALTER TABLE LOS_CHIMICHANGAS.domicilio
ADD CONSTRAINT fk_domicilio_usuario
FOREIGN KEY (cod_usuario) REFERENCES LOS_CHIMICHANGAS.usuario(cod_usuario);

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

ALTER TABLE LOS_CHIMICHANGAS.detalle_factura
ADD CONSTRAINT fk_factura
FOREIGN KEY (cod_factura) REFERENCES LOS_CHIMICHANGAS.factura(cod_factura);

ALTER TABLE LOS_CHIMICHANGAS.factura
ADD CONSTRAINT fk_factura_usuario
FOREIGN KEY (cod_usuario) REFERENCES LOS_CHIMICHANGAS.usuario(cod_usuario);

ALTER TABLE LOS_CHIMICHANGAS.concepto
ADD CONSTRAINT fk_concepto_detalle_factura
FOREIGN KEY (cod_detalle_factura) REFERENCES LOS_CHIMICHANGAS.detalle_factura(cod_detalle_factura);

ALTER TABLE LOS_CHIMICHANGAS.detalle_venta
ADD CONSTRAINT fk_detalle_venta_publicacion
FOREIGN KEY (cod_publicacion) REFERENCES LOS_CHIMICHANGAS.publicacion(cod_publicacion);

ALTER TABLE LOS_CHIMICHANGAS.detalle_venta
ADD CONSTRAINT fk_venta
FOREIGN KEY (cod_venta) REFERENCES LOS_CHIMICHANGAS.venta(cod_venta);

ALTER TABLE LOS_CHIMICHANGAS.medio_de_pago
ADD CONSTRAINT fk_medio_de_pago_tipo_medio
FOREIGN KEY (cod_tipo_medio_pago) REFERENCES LOS_CHIMICHANGAS.tipo_medio_de_pago(cod_tipo_medio_pago);

ALTER TABLE LOS_CHIMICHANGAS.venta
ADD CONSTRAINT fk_venta_cliente
FOREIGN KEY (cod_cliente) REFERENCES LOS_CHIMICHANGAS.cliente(cod_cliente);

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

-- Migración de Provincia, Localidad y Domicilio 

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

    
    SELECT DISTINCT p.cod_provincia, m.CLI_USUARIO_DOMICILIO_LOCALIDAD 
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.provincia AS p ON p.nombre = m.CLI_USUARIO_DOMICILIO_PROVINCIA
    WHERE CLI_USUARIO_DOMICILIO_LOCALIDAD IS NOT NULL

    UNION

    SELECT DISTINCT p.cod_provincia, m.ALMACEN_Localidad 
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.provincia AS p ON p.nombre = m.ALMACEN_PROVINCIA
    WHERE ALMACEN_Localidad IS NOT NULL;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_domicilio
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.domicilio (cod_localidad, cod_usuario, calle, numero, cod_postal, piso, departamento)
    SELECT DISTINCT 
		l.cod_localidad,
        u.cod_usuario,
		m.VEN_USUARIO_DOMICILIO_CALLE, 
		m.VEN_USUARIO_DOMICILIO_NRO_CALLE,
		m.VEN_USUARIO_DOMICILIO_CP,
		m.VEN_USUARIO_DOMICILIO_PISO, 
		m.VEN_USUARIO_DOMICILIO_DEPTO
    FROM gd_esquema.Maestra AS m
	JOIN LOS_CHIMICHANGAS.provincia AS p ON p.nombre = m.VEN_USUARIO_DOMICILIO_PROVINCIA
    JOIN LOS_CHIMICHANGAS.localidad AS l ON m.VEN_USUARIO_DOMICILIO_LOCALIDAD = l.nombre AND l.cod_provincia = p.cod_provincia
    JOIN LOS_CHIMICHANGAS.usuario AS u ON (
        u.nombre = m.VEN_USUARIO_NOMBRE AND
        u.contrasenia = m.VEN_USUARIO_PASS AND
        u.fecha_creacion = m.VEN_USUARIO_FECHA_CREACION AND
		u.mail = m.VENDEDOR_MAIL
    ) 
    WHERE m.VEN_USUARIO_DOMICILIO_CALLE IS NOT NULL AND
		  m.VEN_USUARIO_NOMBRE IS NOT NULL

	UNION

    SELECT DISTINCT 
        l.cod_localidad,
        u.cod_usuario,                              
        m.CLI_USUARIO_DOMICILIO_CALLE AS calle,       
        m.CLI_USUARIO_DOMICILIO_NRO_CALLE AS numero,  
        m.CLI_USUARIO_DOMICILIO_CP AS cod_postal,     
        m.CLI_USUARIO_DOMICILIO_PISO AS piso,         
        m.CLI_USUARIO_DOMICILIO_DEPTO AS departamento 
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.provincia AS p ON m.CLI_USUARIO_DOMICILIO_PROVINCIA = p.nombre
    JOIN LOS_CHIMICHANGAS.localidad AS l ON m.CLI_USUARIO_DOMICILIO_LOCALIDAD = l.nombre AND l.cod_provincia = p.cod_provincia
    JOIN LOS_CHIMICHANGAS.usuario AS u ON (
        u.nombre = CLI_USUARIO_NOMBRE AND
        u.contrasenia = CLI_USUARIO_PASS AND
        u.fecha_creacion = CLI_USUARIO_FECHA_CREACION AND
		u.mail = CLIENTE_MAIL
    )
	WHERE m.CLI_USUARIO_DOMICILIO_CALLE IS NOT NULL AND
		  m.CLI_USUARIO_NOMBRE IS NOT NULL
END
GO

-- Migración de Usuario, Cliente y Vendedor 

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_usuario
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.usuario (nombre, contrasenia, mail, fecha_creacion)
    SELECT DISTINCT 
        m.VEN_USUARIO_NOMBRE, 
        m.VEN_USUARIO_PASS, 
        m.VENDEDOR_MAIL,
        m.VEN_USUARIO_FECHA_CREACION
    FROM gd_esquema.Maestra AS m
	WHERE m.VEN_USUARIO_NOMBRE IS NOT NULL
	
	UNION

    SELECT DISTINCT 
        m.CLI_USUARIO_NOMBRE,
        m.CLI_USUARIO_PASS,
        m.CLIENTE_MAIL,
        m.CLI_USUARIO_FECHA_CREACION
    FROM gd_esquema.Maestra AS m
	WHERE m.CLI_USUARIO_NOMBRE IS NOT NULL
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_cliente
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.cliente (cod_usuario, nombre, apellido, fecha_nacimiento, dni)
    SELECT DISTINCT 
        u.cod_usuario, 
        m.CLIENTE_NOMBRE, 
        m.CLIENTE_APELLIDO, 
        m.CLIENTE_FECHA_NAC, 
        m.CLIENTE_DNI
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.usuario AS u ON (
        u.nombre = CLI_USUARIO_NOMBRE AND
        u.contrasenia = m.CLI_USUARIO_PASS AND
        u.fecha_creacion = m.CLI_USUARIO_FECHA_CREACION AND
        u.mail = m.CLIENTE_MAIL 
    )
    WHERE CLIENTE_NOMBRE IS NOT NULL;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_vendedor
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.vendedor (cod_usuario, razon_social, cuit)
    SELECT DISTINCT 
        u.cod_usuario, 
        m.VENDEDOR_RAZON_SOCIAL, 
        m.VENDEDOR_CUIT
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.usuario AS u ON (
        u.nombre = VEN_USUARIO_NOMBRE AND
        u.contrasenia = m.VEN_USUARIO_PASS AND
        u.fecha_creacion = m.VEN_USUARIO_FECHA_CREACION AND
        u.mail = m.VENDEDOR_MAIL 
    )    
    WHERE VENDEDOR_RAZON_SOCIAL IS NOT NULL;
END
GO

-- Migración de Rubro y Subrubro

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_rubro
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.rubro (descripcion)
    SELECT DISTINCT m.PRODUCTO_RUBRO_DESCRIPCION
    FROM gd_esquema.Maestra AS m
    WHERE m.PRODUCTO_RUBRO_DESCRIPCION IS NOT NULL;
END
GO


CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_subrubro
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.subrubro (cod_rubro, descripcion)
    SELECT DISTINCT r.cod_rubro, m.PRODUCTO_SUB_RUBRO
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.rubro AS r ON r.descripcion = m.PRODUCTO_RUBRO_DESCRIPCION
    WHERE m.PRODUCTO_SUB_RUBRO IS NOT NULL;
END
GO

-- Migración de Marca Producto, Modelo Producto y Producto

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_marca_producto
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.marca_producto (descripcion)
    SELECT DISTINCT m.PRODUCTO_MARCA
    FROM gd_esquema.Maestra AS m
    WHERE m.PRODUCTO_MARCA IS NOT NULL;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_modelo_producto
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.modelo_producto (cod_modelo, descripcion)
    SELECT DISTINCT 
        m.PRODUCTO_MOD_CODIGO,
        m.PRODUCTO_MOD_DESCRIPCION
    FROM gd_esquema.Maestra AS m
    WHERE m.PRODUCTO_MOD_DESCRIPCION IS NOT NULL;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_producto
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.producto (cod_subrubro, cod_marca, cod_modelo, descripcion, codigo, precio)
    SELECT DISTINCT 
        sr.cod_subrubro,                       
        mp.cod_marca,
        mo.cod_modelo,
        m.PRODUCTO_DESCRIPCION,
        m.PRODUCTO_CODIGO,
        m.PRODUCTO_PRECIO
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.marca_producto AS mp ON mp.descripcion = m.PRODUCTO_MARCA
    JOIN (
        SELECT descripcion, MIN(cod_subrubro) AS cod_subrubro
        FROM LOS_CHIMICHANGAS.subrubro
        GROUP BY descripcion
    ) AS sr ON sr.descripcion = m.PRODUCTO_SUB_RUBRO
    JOIN LOS_CHIMICHANGAS.modelo_producto AS mo ON mo.cod_modelo = m.PRODUCTO_MOD_CODIGO;
END;
GO

-- Migración de Almacen y Publicacion

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_almacen
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.almacen (cod_almacen, cod_provincia, descripcion, calle, nro_calle, costo_dia)
    SELECT DISTINCT 
        m.ALMACEN_CODIGO,
        p.cod_provincia,                     
        m.ALMACEN_Localidad,   
        m.ALMACEN_CALLE,             
        m.ALMACEN_NRO_CALLE,     
        m.ALMACEN_COSTO_DIA_AL  
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.provincia AS p      
    ON m.ALMACEN_PROVINCIA = p.nombre    
    WHERE m.ALMACEN_CALLE IS NOT NULL;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_publicacion
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.publicacion (cod_publicacion, cod_vendedor, cod_producto, cod_almacen, descripcion, stock, fecha_inicio, fecha_fin, precio, costo_publicacion, porcentaje_venta)
    SELECT DISTINCT 
        m.PUBLICACION_CODIGO,
        v.cod_vendedor,                   
        p.cod_producto,                   
        a.cod_almacen,                    
        m.PUBLICACION_DESCRIPCION,   
        m.PUBLICACION_STOCK,              
        m.PUBLICACION_FECHA,       
        m.PUBLICACION_FECHA_V,        
        m.PUBLICACION_PRECIO,          
        m.PUBLICACION_COSTO, 
        m.PUBLICACION_PORC_VENTA
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.vendedor AS v ON v.razon_social = m.VENDEDOR_RAZON_SOCIAL
    JOIN (SELECT MIN(cod_producto) AS cod_producto, descripcion FROM LOS_CHIMICHANGAS.producto GROUP BY descripcion) AS p
        ON p.descripcion = m.PRODUCTO_DESCRIPCION
    JOIN (SELECT MIN(cod_almacen) AS cod_almacen FROM LOS_CHIMICHANGAS.almacen GROUP BY cod_almacen) AS a
        ON a.cod_almacen = m.ALMACEN_CODIGO
    WHERE m.PUBLICACION_DESCRIPCION IS NOT NULL;
END;
GO

-- Migración de Tipo Detalle Factura, Detalle Factura, Concepto y Factura

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_tipo_detalle_factura
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.tipo_detalle_factura (descripcion)
    SELECT DISTINCT FACTURA_DET_TIPO
    FROM gd_esquema.Maestra
    WHERE FACTURA_DET_TIPO IS NOT NULL;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_factura
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.factura (cod_factura, cod_usuario, fecha_factura, total)
    SELECT DISTINCT
        m.FACTURA_NUMERO,
        u.cod_usuario,
        m.FACTURA_FECHA,
        m.FACTURA_TOTAL
    FROM gd_esquema.Maestra AS m
             JOIN LOS_CHIMICHANGAS.publicacion as pub on pub.descripcion = m.PUBLICACION_DESCRIPCION
             JOIN LOS_CHIMICHANGAS.vendedor as v on pub.cod_vendedor = v.cod_vendedor
             JOIN LOS_CHIMICHANGAS.usuario as u on v.cod_usuario = u.cod_usuario
    WHERE m.FACTURA_TOTAL IS NOT NULL AND m.FACTURA_NUMERO IS NOT NULL
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_detalle_factura
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.detalle_factura (cod_publicacion, cod_tipo, cod_factura, precio, cantidad, subtotal)
    SELECT DISTINCT
        p.cod_publicacion,
        t.cod_tipo,
        f.cod_factura,
        m.FACTURA_DET_PRECIO,
        m.FACTURA_DET_CANTIDAD,
        m.FACTURA_DET_SUBTOTAL
    FROM gd_esquema.Maestra AS m
    join LOS_CHIMICHANGAS.publicacion as p on p.cod_publicacion = m.PUBLICACION_CODIGO
    join LOS_CHIMICHANGAS.tipo_detalle_factura as t on t.descripcion = m.FACTURA_DET_TIPO
    join LOS_CHIMICHANGAS.factura as f on f.cod_factura = m.FACTURA_NUMERO
    WHERE m.FACTURA_DET_PRECIO IS NOT NULL;
END
GO

-- Migración de Tipo Envio y Envio (Liam)

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_tipo_envio
AS
BEGIN
    insert into LOS_CHIMICHANGAS.tipo_envio (descripcion)
    select distinct m.ENVIO_TIPO
    from gd_esquema.Maestra as m
    where m.ENVIO_TIPO IS NOT NULL
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_envio 
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.envio (cod_venta, cod_domicilio, cod_tipo, fecha_programada, horario_inicio, horario_fin, fecha_entrega, costo_envio)
    SELECT DISTINCT
        v.cod_venta,
        d.cod_domicilio,
        te.cod_tipo,
        m.ENVIO_FECHA_PROGAMADA,
        m.ENVIO_HORA_INICIO,
        m.ENVIO_HORA_FIN_INICIO,
        m.ENVIO_FECHA_ENTREGA,
        m.ENVIO_COSTO
    FROM gd_esquema.Maestra AS m
        JOIN LOS_CHIMICHANGAS.venta AS v ON v.cod_venta = m.VENTA_CODIGO
        JOIN LOS_CHIMICHANGAS.cliente AS c ON v.cod_cliente = c.cod_cliente
        JOIN LOS_CHIMICHANGAS.usuario AS u ON c.cod_usuario = u.cod_usuario
        JOIN LOS_CHIMICHANGAS.domicilio d ON d.cod_usuario = u.cod_usuario
        JOIN LOS_CHIMICHANGAS.tipo_envio te ON te.descripcion = m.ENVIO_TIPO
      where m.ENVIO_FECHA_PROGAMADA IS NOT NULL AND 
            m.ENVIO_HORA_INICIO IS NOT NULL AND 
            m.ENVIO_HORA_FIN_INICIO IS NOT NULL AND 
            m.ENVIO_FECHA_ENTREGA IS NOT NULL AND 
            m.ENVIO_COSTO IS NOT NULL 
END
GO

-- Migración de Detalle Venta y Venta

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_venta
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.Venta(cod_venta, cod_cliente, fecha_hora, total)
    SELECT 
        VENTA_CODIGO,
        c.cod_cliente,
        VENTA_FECHA,
        VENTA_TOTAL
        FROM gd_esquema.Maestra m
        JOIN LOS_CHIMICHANGAS.cliente c ON (
            c.nombre = m.CLIENTE_NOMBRE AND 
            c.apellido = m.CLIENTE_APELLIDO AND 
            c.dni = m.CLIENTE_DNI)
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_detalle_venta
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.detalle_venta (cod_publicacion, cod_venta, precio, subtotal, cantidad)
    SELECT 
        p.cod_publicacion,     
        v.cod_venta,             
        m.VENTA_DET_PRECIO,  
        m.VENTA_DET_SUB_TOTAL,  
        m.VENTA_DET_CANT
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.venta AS v ON v.cod_venta = m.VENTA_CODIGO
    JOIN LOS_CHIMICHANGAS.publicacion AS p ON  p.cod_publicacion = m.PUBLICACION_CODIGO 
    WHERE m.VENTA_DET_PRECIO IS NOT NULL AND
		  m.PUBLICACION_CODIGO IS NOT NULL
END
GO

-- Migración de Tipo Medio de Pago, Medio de Pago, Detalle Pago y Pago

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_tipo_medio_de_pago
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.tipo_medio_de_pago (descripcion)
    SELECT DISTINCT m.PAGO_TIPO_MEDIO_PAGO AS tipo_medio_pago
    FROM gd_esquema.Maestra AS m 
    WHERE m.PAGO_TIPO_MEDIO_PAGO IS NOT NULL
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_medio_de_pago
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.medio_de_pago (cod_tipo_medio_pago, descripcion)
    SELECT DISTINCT tmp.cod_tipo_medio_pago, m.PAGO_MEDIO_PAGO AS descripcion
    FROM gd_esquema.Maestra AS m
    JOIN LOS_CHIMICHANGAS.tipo_medio_de_pago AS tmp 
        ON m.PAGO_TIPO_MEDIO_PAGO = tmp.descripcion  
    WHERE m.PAGO_MEDIO_PAGO IS NOT NULL;
END
GO

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
    INSERT INTO LOS_CHIMICHANGAS.pago(cod_venta, cod_detalle_pago, cod_medio, fecha_pago, importe)
    SELECT DISTINCT 
        v.cod_venta,
        dp.cod_detalle,
        mp.cod_medio,
        m.PAGO_FECHA AS fecha_pago,
        m.PAGO_IMPORTE AS importe
    FROM gd_esquema.Maestra as m 
    JOIN LOS_CHIMICHANGAS.venta AS v ON v.cod_venta = m.VENTA_CODIGO 
    JOIN LOS_CHIMICHANGAS.detalle_pago AS dp ON (
        dp.nro_tarjeta = m.PAGO_NRO_TARJETA AND
        dp.fecha_vecimiento = m.PAGO_FECHA_VENC_TARJETA AND 
        dp.cuotas = m.PAGO_CANT_CUOTAS
    )
    JOIN LOS_CHIMICHANGAS.medio_de_pago AS mp ON mp.descripcion = m.PAGO_MEDIO_PAGO 
    WHERE m.VENTA_CODIGO IS NOT NULL
END
GO

--------------------------- Super Procedure ---------------------------

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_db 
AS
BEGIN
    EXEC LOS_CHIMICHANGAS.migrar_provincia              
    EXEC LOS_CHIMICHANGAS.migrar_localidad    
    EXEC LOS_CHIMICHANGAS.migrar_usuario                          
    EXEC LOS_CHIMICHANGAS.migrar_domicilio              
    EXEC LOS_CHIMICHANGAS.migrar_cliente                
    EXEC LOS_CHIMICHANGAS.migrar_vendedor               
    EXEC LOS_CHIMICHANGAS.migrar_rubro                  
    EXEC LOS_CHIMICHANGAS.migrar_subrubro               
    EXEC LOS_CHIMICHANGAS.migrar_marca_producto 
    EXEC LOS_CHIMICHANGAS.migrar_modelo_producto
    EXEC LOS_CHIMICHANGAS.migrar_producto       
    EXEC LOS_CHIMICHANGAS.migrar_almacen        
    EXEC LOS_CHIMICHANGAS.migrar_publicacion    
    EXEC LOS_CHIMICHANGAS.migrar_tipo_detalle_factura 
    EXEC LOS_CHIMICHANGAS.migrar_factura              
    EXEC LOS_CHIMICHANGAS.migrar_detalle_factura     
    EXEC LOS_CHIMICHANGAS.migrar_tipo_envio         
    EXEC LOS_CHIMICHANGAS.migrar_venta                  
    EXEC LOS_CHIMICHANGAS.migrar_detalle_venta        
    EXEC LOS_CHIMICHANGAS.migrar_tipo_medio_de_pago     
    EXEC LOS_CHIMICHANGAS.migrar_medio_de_pago          
    EXEC LOS_CHIMICHANGAS.migrar_detalle_pago           
    EXEC LOS_CHIMICHANGAS.migrar_pago                   
    EXEC LOS_CHIMICHANGAS.migrar_envio                  
END
GO

EXEC LOS_CHIMICHANGAS.migrar_db 