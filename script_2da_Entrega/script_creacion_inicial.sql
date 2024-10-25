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

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarProvincia', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarProvincia;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarLocalidad', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarLocalidad;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarDomicilio', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarDomicilio;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarUsuario', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarUsuario;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarCliente', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarCliente;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarVendedor', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarVendedor;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarRubro', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarRubro;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarSubrubro', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarSubrubro;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarMarcaProducto', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarMarcaProducto;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarModeloProducto', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarModeloProducto;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarProducto', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarProducto;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarAlmacen', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarAlmacen;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarPublicacion', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarPublicacion;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarTipoDetalleFactura', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarTipoDetalleFactura;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarDetalleFactura', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarDetalleFactura;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarFactura', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarFactura;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarConcepto', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarConcepto;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarTipoEnvio', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarTipoEnvio;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarEnvio', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarEnvio;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarDetalleVenta', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarDetalleVenta;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarVenta', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarVenta;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarTipoMedioDePago', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarTipoMedioDePago;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarMedioDePago', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarMedioDePago;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarDetallePago', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarDetallePago;

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarPago', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarPago;

-- Super Procedure para ejecutar todas las migraciones

IF OBJECT_ID('LOS_CHIMICHANGAS.migrarDb', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrarDb;
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
    CREATE TABLE #LocalidadesTemporal (nombre NVARCHAR(255)); -- Tabla temporal

    INSERT INTO #LocalidadesTemporal (nombre)
    SELECT DISTINCT VEN_USUARIO_DOMICILIO_LOCALIDAD
    FROM gd_esquema.Maestra
    WHERE VEN_USUARIO_DOMICILIO_LOCALIDAD IS NOT NULL

    UNION

    SELECT DISTINCT ALMACEN_Localidad
    FROM gd_esquema.Maestra
    WHERE ALMACEN_Localidad IS NOT NULL

    UNION

    SELECT DISTINCT CLI_USUARIO_DOMICILIO_LOCALIDAD
    FROM gd_esquema.Maestra
    WHERE CLI_USUARIO_DOMICILIO_LOCALIDAD IS NOT NULL;

    MERGE INTO LOS_CHIMICHANGAS.localidad AS destino
    USING #LocalidadesTemporal AS origen
    ON destino.nombre = origen.nombre
    WHEN NOT MATCHED THEN
        INSERT (nombre)
        VALUES (origen.nombre);

    DROP TABLE #LocalidadesTemporal;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_domicilio
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.domicilio (cod_provincia, calle, numero, cod_postal, piso, departamento)
    SELECT 
        (SELECT cod_provincia FROM LOS_CHIMICHANGAS.provincia WHERE nombre = VEN_USUARIO_PROVINCIA) AS cod_provincia,
        VEN_USUARIO_CALLE AS calle,
        VEN_USUARIO_NUMERO AS numero,
        VEN_USUARIO_COD_POSTAL AS cod_postal,
        VEN_USUARIO_PISO AS piso,
        VEN_USUARIO_DEPARTAMENTO AS departamento
    FROM 
        gd_esquema.Maestra
    WHERE 
        VEN_USUARIO_CALLE IS NOT NULL;

    INSERT INTO LOS_CHIMICHANGAS.domicilio (cod_provincia, calle, numero, cod_postal)
    SELECT 
        (SELECT cod_provincia FROM LOS_CHIMICHANGAS.provincia WHERE nombre = ALMACEN_PROVINCIA) AS cod_provincia,
        ALMACEN_CALLE AS calle,
        CAST(ALMACEN_NRO_CALLE AS NVARCHAR(50)) AS numero,
        ALMACEN_COD_POSTAL AS cod_postal,
        NULL AS piso,
        NULL AS departamento
    FROM 
        gd_esquema.Maestra
    WHERE 
        ALMACEN_CALLE IS NOT NULL;

    INSERT INTO LOS_CHIMICHANGAS.domicilio (cod_provincia, calle, numero, cod_postal, piso, departamento)
    SELECT 
        (SELECT cod_provincia FROM LOS_CHIMICHANGAS.provincia WHERE nombre = CLI_USUARIO_PROVINCIA) AS cod_provincia,
        CLI_USUARIO_CALLE AS calle,
        CLI_USUARIO_NUMERO AS numero,
        CLI_USUARIO_COD_POSTAL AS cod_postal,
        CLI_USUARIO_PISO AS piso,
        CLI_USUARIO_DEPARTAMENTO AS departamento
    FROM 
        gd_esquema.Maestra
    WHERE 
        CLI_USUARIO_CALLE IS NOT NULL;
END
GO

-- Migración de Usuario, Cliente y Vendedor

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_usuario
AS
BEGIN
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_cliente
AS
BEGIN
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_vendedor
AS
BEGIN
END
GO

-- Migración de Rubro y Subrubro

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_rubro
AS
BEGIN
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_subrubro
AS
BEGIN
END
GO

-- Migración de Marca Producto, Modelo Producto y Producto

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_marca_producto
AS
BEGIN
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_modelo_producto
AS
BEGIN
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_producto
AS
BEGIN
END
GO

-- Migración de Almacen y Publicacion

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_almacen
AS
BEGIN
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_publicacion
AS
BEGIN
END
GO

-- Migración de Tipo Detalle Factura, Detalle Factura, Concepto y Factura

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_tipo_detalle_factura
AS
BEGIN
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_detalle_factura
AS
BEGIN
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_concepto
AS
BEGIN
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_factura
AS
BEGIN
END
GO

-- Migración de Tipo Envio y Envio

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_tipo_envio
AS
BEGIN
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_envio
AS
BEGIN
END
GO


-- Migración de Detalle Venta y Venta

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_detalle_venta
AS
BEGIN
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_venta
AS
BEGIN
END
GO

-- Migración de Tipo Medio de Pago, Medio de Pago, Detalle Pago y Pago

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_tipo_medio_de_pago
AS
BEGIN
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_medio_de_pago
AS
BEGIN
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_detalle_pago
AS
BEGIN
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_pago
AS
BEGIN
END
GO

--------------------------- Super Procedure ---------------------------

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_db 
AS
BEGIN
    EXEC LOS_CHIMICHANGASmigrar_provincia
    EXEC LOS_CHIMICHANGAS.migrar_localidad
    EXEC LOS_CHIMICHANGAS.migrar_domicilio
    EXEC LOS_CHIMICHANGAS.migrar_usuario
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
    EXEC LOS_CHIMICHANGAS.migrar_detalle_factura
    EXEC LOS_CHIMICHANGAS.migrar_factura
    EXEC LOS_CHIMICHANGAS.migrar_concepto
    EXEC LOS_CHIMICHANGAS.migrar_tipo_envio
    EXEC LOS_CHIMICHANGAS.migrar_detalle_venta
    EXEC LOS_CHIMICHANGAS.migrar_tipo_medio_de_pago
    EXEC LOS_CHIMICHANGAS.migrar_medio_de_pago
    EXEC LOS_CHIMICHANGAS.migrar_detalle_pago
    EXEC LOS_CHIMICHANGAS.migrar_venta
    EXEC LOS_CHIMICHANGAS.migrar_pago
    EXEC LOS_CHIMICHANGAS.migrar_envio
END

-- EXEC LOS_CHIMICHANGAS.migrar_db 