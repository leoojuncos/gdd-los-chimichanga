USE GD2C2024
GO

------------ Eliminación de tablas --------------------

IF OBJECT_ID('LOS_CHIMICHANGAS.BI_HECHOS_FACTURACION', 'U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.BI_HECHOS_FACTURACION;

IF OBJECT_ID('LOS_CHIMICHANGAS.BI_HECHOS_PAGO', 'U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.BI_HECHOS_PAGO;

IF OBJECT_ID('LOS_CHIMICHANGAS.BI_HECHOS_ENVIO', 'U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.BI_HECHOS_ENVIO;

IF OBJECT_ID('LOS_CHIMICHANGAS.BI_HECHOS_VENTA', 'U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.BI_HECHOS_VENTA;

IF OBJECT_ID('LOS_CHIMICHANGAS.BI_HECHOS_PUBLICACION', 'U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.BI_HECHOS_PUBLICACION;

IF OBJECT_ID('LOS_CHIMICHANGAS.BI_D_UBICACION', 'U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.BI_D_UBICACION;

IF OBJECT_ID('LOS_CHIMICHANGAS.BI_D_TIEMPO', 'U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.BI_D_TIEMPO;

IF OBJECT_ID('LOS_CHIMICHANGAS.BI_D_SUBRUBRO', 'U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.BI_D_SUBRUBRO;

IF OBJECT_ID('LOS_CHIMICHANGAS.BI_D_RUBRO', 'U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.BI_D_RUBRO;

IF OBJECT_ID('LOS_CHIMICHANGAS.BI_D_RANGO_ETARIO', 'U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.BI_D_RANGO_ETARIO;

IF OBJECT_ID('LOS_CHIMICHANGAS.BI_D_TIPO_ENVIO', 'U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.BI_D_TIPO_ENVIO;

IF OBJECT_ID('LOS_CHIMICHANGAS.BI_D_TIPO_MEDIO_PAGO', 'U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.BI_D_TIPO_MEDIO_PAGO;

IF OBJECT_ID('LOS_CHIMICHANGAS.BI_D_MARCA', 'U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.BI_D_MARCA;

IF OBJECT_ID('LOS_CHIMICHANGAS.BI_D_HORARIO_VENTAS', 'U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.BI_D_HORARIO_VENTAS;

IF OBJECT_ID('LOS_CHIMICHANGAS.BI_D_CONCEPTO', 'U') IS NOT NULL
    DROP TABLE LOS_CHIMICHANGAS.BI_D_CONCEPTO;

-------------------- Eliminación de Funciones ---------------------------

IF OBJECT_ID('LOS_CHIMICHANGAS.calcular_fecha', 'FN') IS NOT NULL
    DROP FUNCTION LOS_CHIMICHANGAS.calcular_fecha;
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.calcular_rango_etario', 'FN') IS NOT NULL
    DROP FUNCTION LOS_CHIMICHANGAS.calcular_rango_etario;
GO

-------------------- Eliminación de Procedures ---------------------------

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_TIPO_MEDIO_PAGO','P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_TIPO_MEDIO_PAGO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_TIPO_ENVIO', 'P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_TIPO_ENVIO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_CONCEPTO','P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_CONCEPTO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_SUBRUBRO','P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_SUBRUBRO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_MARCA','P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_MARCA

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_SUBRUBRO','P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_SUBRUBRO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_HORARIO_VENTAS','P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_HORARIO_VENTAS

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_RANGO_ETARIO','P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_RANGO_ETARIO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_UBICACION','P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_UBICACION

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_TIEMPO','P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_TIEMPO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_RUBRO','P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_RUBRO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_HECHO_VENTA','P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_VENTA

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_HECHO_PUBLICACION','P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_PUBLICACION

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_HECHO_FACTURACION','P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_FACTURACION

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_HECHO_PAGO','P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_PAGO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_HECHO_ENVIO','P') IS NOT NULL
DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_ENVIO


IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_todo','P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_todo
GO
-------------------- Eliminación de Views ---------------------------

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_PROMEDIO_TIEMPO_PUBLICACIONES','V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_PROMEDIO_TIEMPO_PUBLICACIONES
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_PROMEDIO_STOCK_INICIAL','V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_PROMEDIO_STOCK_INICIAL
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_PORCENTAJE_FACTURACION_POR_CONCEPTO','V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_PORCENTAJE_FACTURACION_POR_CONCEPTO
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_FACTURACION_POR_PROVINCIA','V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_FACTURACION_POR_PROVINCIA
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_VENTA_PROMEDIO_MENSUAL','V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_VENTA_PROMEDIO_MENSUAL
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_RENDIMIENTO_RUBROS','V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_RENDIMIENTO_RUBROS
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_VOLUMEN_VENTAS','V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_VOLUMEN_VENTAS
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_CUMPLIMIENTO_ENVIOS', 'V') IS NOT NULL
	DROP VIEW LOS_CHIMICHANGAS.VIEW_CUMPLIMIENTO_ENVIOS
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_LOCALIDAD_COSTO_ENVIO', 'V') IS NOT NULL
	DROP VIEW LOS_CHIMICHANGAS.VIEW_LOCALIDAD_COSTO_ENVIO
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_PAGO_CUOTAS','V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_PAGO_CUOTAS
GO
-------------------- Creación de tablas ---------------------------

CREATE TABLE LOS_CHIMICHANGAS.BI_D_SUBRUBRO (
    subrubro_id INTEGER               IDENTITY(1,1) NOT NULL,
    descripcion NVARCHAR(50)
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_RUBRO (
    rubro_id INTEGER                  IDENTITY(1,1) NOT NULL,
    descripcion NVARCHAR(50)
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_TIEMPO (
    tiempo_id INTEGER                 IDENTITY(1,1) NOT NULL,
    tiempo_anio INTEGER,
    tiempo_cuatrimestre INTEGER,
    tiempo_mes INTEGER
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_UBICACION (
    ubicacion_id INTEGER              IDENTITY(1,1) NOT NULL,
    ubicacion_provincia NVARCHAR(50),
    ubicacion_localidad NVARCHAR(50)
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_MARCA (
    marca_id INTEGER                  IDENTITY(1,1) NOT NULL,
    descripcion NVARCHAR(50)
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_RANGO_ETARIO (
    rango_etario_id INTEGER           IDENTITY(1,1) NOT NULL,
    rango_etario_desc NVARCHAR(50)
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_HORARIO_VENTAS (
    horario_id INTEGER                IDENTITY(1,1) NOT NULL,
    rango_horario NVARCHAR(50)
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_TIPO_ENVIO (
    tipo_envio_id INTEGER             IDENTITY(1,1) NOT NULL,
    descripcion NVARCHAR(50)
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_TIPO_MEDIO_PAGO (
    tipo_medio_pago_id INTEGER        IDENTITY(1,1) NOT NULL,
    descripcion NVARCHAR(50)
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_CONCEPTO (
    concepto_id INTEGER               IDENTITY(1,1) NOT NULL,
    tipo NVARCHAR(50)
);

CREATE TABLE LOS_CHIMICHANGAS.BI_HECHOS_PUBLICACION (
    publicacion_id INTEGER            IDENTITY(1,1) NOT NULL,
    subrubro_id INTEGER NOT NULL,
    tiempo_id INTEGER NOT NULL,
    marca_id INTEGER NOT NULL,
    fecha_inicio DATE,
    fecha_fin DATE,
    stock_inicial INTEGER
);

CREATE TABLE LOS_CHIMICHANGAS.BI_HECHOS_VENTA (
    venta_id INTEGER                  IDENTITY(1,1) NOT NULL,
    rubro_id INTEGER NOT NULL,
    ubicacion_cliente_id INTEGER NOT NULL,
    rango_etario_id INTEGER NOT NULL,
    tiempo_id INTEGER NOT NULL,
    horario_id INTEGER NOT NULL,
    ubicacion_almacen_id INTEGER NOT NULL,
    total DECIMAL(18,2)
);

CREATE TABLE LOS_CHIMICHANGAS.BI_HECHOS_ENVIO (
    envio_id INTEGER                  IDENTITY(1,1) NOT NULL,
    tiempo_id INTEGER NOT NULL,
    ubicacion_id INTEGER NOT NULL,
    tipo_envio_id INTEGER NOT NULL,
    costo_envio DECIMAL(18,2)
);

CREATE TABLE LOS_CHIMICHANGAS.BI_HECHOS_PAGO (
    pago_id INTEGER                   IDENTITY(1,1) NOT NULL,
    tiempo_id INTEGER NOT NULL,
    ubicacion_id INTEGER NOT NULL,
    tipo_medio_pago_id INTEGER NOT NULL,
    total_sin_cuotas DECIMAL(18,2),
    total_con_cuotas DECIMAL(18,2)
);

CREATE TABLE LOS_CHIMICHANGAS.BI_HECHOS_FACTURACION (
    facturacion_id INTEGER            IDENTITY(1,1) NOT NULL,
    tiempo_id INTEGER NOT NULL,
    ubicacion_id INTEGER NOT NULL,
    concepto_id INTEGER NOT NULL,
    total_facturado DECIMAL(18,2)
);
-------------------- Creación de PK ---------------------------

ALTER TABLE LOS_CHIMICHANGAS.BI_D_SUBRUBRO
    ADD CONSTRAINT pk_BI_subrubro PRIMARY KEY (subrubro_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_D_RUBRO
    ADD CONSTRAINT pk_BI_rubro PRIMARY KEY (rubro_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_D_TIEMPO
    ADD CONSTRAINT pk_BI_tiempo PRIMARY KEY (tiempo_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_D_UBICACION
    ADD CONSTRAINT pk_BI_ubicacion PRIMARY KEY (ubicacion_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_D_MARCA
    ADD CONSTRAINT pk_BI_marca PRIMARY KEY (marca_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_D_RANGO_ETARIO
    ADD CONSTRAINT pk_BI_rango_etario PRIMARY KEY (rango_etario_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_D_HORARIO_VENTAS
    ADD CONSTRAINT pk_BI_horario PRIMARY KEY (horario_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_D_TIPO_ENVIO
    ADD CONSTRAINT pk_BI_tipo_envio PRIMARY KEY (tipo_envio_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_D_TIPO_MEDIO_PAGO
    ADD CONSTRAINT pk_BI_tipo_medio_pago PRIMARY KEY (tipo_medio_pago_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_D_CONCEPTO
    ADD CONSTRAINT pk_BI_concepto PRIMARY KEY (concepto_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_PUBLICACION
    ADD CONSTRAINT pk_BI_hechos_publicacion PRIMARY KEY (publicacion_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_VENTA
    ADD CONSTRAINT pk_BI_hechos_venta PRIMARY KEY (venta_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_ENVIO
    ADD CONSTRAINT pk_BI_hechos_envio PRIMARY KEY (envio_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_PAGO
    ADD CONSTRAINT pk_BI_hechos_pago PRIMARY KEY (pago_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_FACTURACION
    ADD CONSTRAINT pk_BI_hechos_facturacion PRIMARY KEY (facturacion_id);

-------------------- Creación de FK ---------------------------

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_PUBLICACION
    ADD CONSTRAINT fk_BI_hechos_publicacion_SUBRUBRO
        FOREIGN KEY (subrubro_id) REFERENCES LOS_CHIMICHANGAS.BI_D_SUBRUBRO(subrubro_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_PUBLICACION
    ADD CONSTRAINT fk_BI_hechos_publicacion_tiempo
        FOREIGN KEY (tiempo_id) REFERENCES LOS_CHIMICHANGAS.BI_D_TIEMPO(tiempo_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_PUBLICACION
    ADD CONSTRAINT fk_BI_hechos_publicacion_marca
        FOREIGN KEY (marca_id) REFERENCES LOS_CHIMICHANGAS.BI_D_MARCA(marca_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_VENTA
    ADD CONSTRAINT fk_BI_hechos_venta_rubro
        FOREIGN KEY (rubro_id) REFERENCES LOS_CHIMICHANGAS.BI_D_RUBRO(rubro_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_VENTA
    ADD CONSTRAINT fk_BI_hechos_venta_ubicacion_cliente
        FOREIGN KEY (ubicacion_cliente_id) REFERENCES LOS_CHIMICHANGAS.BI_D_UBICACION(ubicacion_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_VENTA
    ADD CONSTRAINT fk_BI_hechos_venta_rango_etario
        FOREIGN KEY (rango_etario_id) REFERENCES LOS_CHIMICHANGAS.BI_D_RANGO_ETARIO(rango_etario_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_VENTA
    ADD CONSTRAINT fk_BI_hechos_venta_tiempo
        FOREIGN KEY (tiempo_id) REFERENCES LOS_CHIMICHANGAS.BI_D_TIEMPO(tiempo_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_VENTA
    ADD CONSTRAINT fk_BI_hechos_venta_horario
        FOREIGN KEY (horario_id) REFERENCES LOS_CHIMICHANGAS.BI_D_HORARIO_VENTAS(horario_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_VENTA
    ADD CONSTRAINT fk_BI_hechos_venta_ubicacion_almacen
        FOREIGN KEY (ubicacion_almacen_id) REFERENCES LOS_CHIMICHANGAS.BI_D_UBICACION(ubicacion_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_ENVIO
    ADD CONSTRAINT fk_BI_hechos_envio_tiempo
        FOREIGN KEY (tiempo_id) REFERENCES LOS_CHIMICHANGAS.BI_D_TIEMPO(tiempo_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_ENVIO
    ADD CONSTRAINT fk_BI_hechos_envio_ubicacion
        FOREIGN KEY (ubicacion_id) REFERENCES LOS_CHIMICHANGAS.BI_D_UBICACION(ubicacion_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_ENVIO
    ADD CONSTRAINT fk_BI_hechos_envio_tipo_envio
        FOREIGN KEY (tipo_envio_id) REFERENCES LOS_CHIMICHANGAS.BI_D_TIPO_ENVIO(tipo_envio_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_PAGO
    ADD CONSTRAINT fk_BI_hechos_pago_tiempo
        FOREIGN KEY (tiempo_id) REFERENCES LOS_CHIMICHANGAS.BI_D_TIEMPO(tiempo_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_PAGO
    ADD CONSTRAINT fk_BI_hechos_pago_ubicacion
        FOREIGN KEY (ubicacion_id) REFERENCES LOS_CHIMICHANGAS.BI_D_UBICACION(ubicacion_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_PAGO
    ADD CONSTRAINT fk_BI_hechos_pago_tipo_medio_pago
        FOREIGN KEY (tipo_medio_pago_id) REFERENCES LOS_CHIMICHANGAS.BI_D_TIPO_MEDIO_PAGO(tipo_medio_pago_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_FACTURACION
    ADD CONSTRAINT fk_BI_hechos_facturacion_tiempo
        FOREIGN KEY (tiempo_id) REFERENCES LOS_CHIMICHANGAS.BI_D_TIEMPO(tiempo_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_FACTURACION
    ADD CONSTRAINT fk_BI_hechos_facturacion_ubicacion
        FOREIGN KEY (ubicacion_id) REFERENCES LOS_CHIMICHANGAS.BI_D_UBICACION(ubicacion_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_FACTURACION
    ADD CONSTRAINT fk_BI_hechos_facturacion_concepto
        FOREIGN KEY (concepto_id) REFERENCES LOS_CHIMICHANGAS.BI_D_CONCEPTO(concepto_id);

-------------------- Funciones ---------------------------
GO

CREATE FUNCTION LOS_CHIMICHANGAS.calcular_fecha(@FECHA DATETIME)
RETURNS SMALLINT
AS
BEGIN
DECLARE @ANIO INT
DECLARE @CUATRIMESTRE INT
DECLARE @MES INT

SELECT @ANIO = YEAR(@FECHA), @CUATRIMESTRE = DATEPART(QUARTER,@FECHA), @MES = MONTH(@FECHA)
RETURN (select TIEMPO_ID from BI_D_TIEMPO
where
@ANIO = TIEMPO_ANIO AND
@CUATRIMESTRE = TIEMPO_CUATRIMESTRE AND
@MES = TIEMPO_MES
)
END
GO

CREATE FUNCTION LOS_CHIMICHANGAS.calcular_rango_etario (@FECHA_NACIMIENTO DATE)
RETURNS SMALLINT
AS
BEGIN
    DECLARE @ANIOS INT = DATEDIFF(YEAR, @FECHA_NACIMIENTO, GETDATE())
    DECLARE @RES SMALLINT
    IF @ANIOS < 25
        SET @RES = 1
    ELSE
        IF @ANIOS BETWEEN 25 AND 35
            SET @RES = 2
        ELSE
            IF @ANIOS BETWEEN 35 AND 50
                SET @RES = 3
            ELSE
                IF @ANIOS > 50
                    SET @RES = 4
                ELSE
                    SET @RES = 5
    RETURN @RES
END
GO

-------------------- Procedures ---------------------------
GO

-- Migracion de DIMENSIONES

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_TIPO_MEDIO_PAGO
AS
BEGIN
    INSERT INTO BI_D_TIPO_MEDIO_PAGO(descripcion)
    SELECT DISTINCT descripcion FROM LOS_CHIMICHANGAS.tipo_medio_de_pago
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_CONCEPTO
AS
BEGIN
    INSERT INTO BI_D_CONCEPTO(tipo)
    SELECT DISTINCT descripcion FROM LOS_CHIMICHANGAS.concepto
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_SUBRUBRO
AS
BEGIN
    INSERT INTO BI_D_SUBRUBRO(descripcion)
    SELECT DISTINCT descripcion FROM LOS_CHIMICHANGAS.subrubro;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_MARCA
AS
BEGIN
    INSERT INTO BI_D_MARCA(descripcion)
    SELECT DISTINCT descripcion FROM LOS_CHIMICHANGAS.marca_producto;
END
GO


CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_RANGO_ETARIO
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_D_RANGO_ETARIO(rango_etario_desc)
    VALUES ('<25'), ('25-35'), ('35-50'), ('>50'), ('DESCONOCIDO');
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_HORARIO_VENTAS
AS
BEGIN
    INSERT INTO BI_D_HORARIO_VENTAS(rango_horario)
    VALUES ('00:00 - 06:00'), ('06:00 - 12:00'), ('12:00 - 18:00'), ('18:00 - 24:00');
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_UBICACION
AS
BEGIN
    INSERT INTO BI_D_UBICACION(ubicacion_provincia, ubicacion_localidad)
    SELECT DISTINCT p.nombre AS ubicacion_provincia, l.nombre AS ubicacion_localidad
    FROM LOS_CHIMICHANGAS.localidad AS l
    JOIN LOS_CHIMICHANGAS.provincia AS p ON p.cod_provincia = l.cod_provincia;

    INSERT INTO BI_D_UBICACION(ubicacion_provincia, ubicacion_localidad)
    SELECT DISTINCT p.nombre AS ubicacion_provincia, l.nombre AS ubicacion_localidad
    FROM LOS_CHIMICHANGAS.almacen AS alm
    JOIN LOS_CHIMICHANGAS.localidad AS l ON l.cod_localidad = alm.cod_provincia
    JOIN LOS_CHIMICHANGAS.provincia AS p ON p.cod_provincia = alm.cod_provincia
    LEFT JOIN LOS_CHIMICHANGAS.BI_D_UBICACION AS bi_u ON 
        bi_u.ubicacion_provincia = p.nombre AND
        bi_u.ubicacion_localidad = l.nombre
    WHERE bi_u.ubicacion_id IS NULL; 
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_TIEMPO
AS
BEGIN
    INSERT INTO BI_D_TIEMPO(tiempo_anio, tiempo_cuatrimestre, tiempo_mes)
    SELECT DISTINCT YEAR(fecha_factura), DATEPART(QUARTER, fecha_factura), MONTH(fecha_factura)
    FROM LOS_CHIMICHANGAS.factura
    UNION
    SELECT DISTINCT YEAR(fecha_pago), DATEPART(QUARTER, fecha_pago), MONTH(fecha_pago)
    FROM LOS_CHIMICHANGAS.pago
    UNION
    SELECT DISTINCT YEAR(fecha_programada), DATEPART(QUARTER, fecha_programada), MONTH(fecha_programada)
    FROM LOS_CHIMICHANGAS.envio
    UNION
    SELECT DISTINCT YEAR(fecha_inicio), DATEPART(QUARTER, fecha_inicio), MONTH(fecha_inicio) -- Quizas hay que agregar fecha_fin tambien
    FROM LOS_CHIMICHANGAS.publicacion;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_RUBRO
AS
BEGIN
    INSERT INTO BI_D_RUBRO (descripcion)
    SELECT DISTINCT descripcion FROM LOS_CHIMICHANGAS.rubro
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_TIPO_ENVIO
AS 
BEGIN
	INSERT INTO BI_D_TIPO_ENVIO (descripcion)
	SELECT DISTINCT descripcion FROM LOS_CHIMICHANGAS.tipo_envio
END
GO

-- Migracion de HECHOS

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_PUBLICACION
AS
BEGIN
    INSERT INTO BI_HECHOS_PUBLICACION (subrubro_id, tiempo_id, marca_id, fecha_inicio, fecha_fin, stock_inicial)
    SELECT DISTINCT
        s.subrubro_id,
        tiempo_id, 
        m.marca_id,
        pub.fecha_inicio,
        pub.fecha_fin,
        pub.stock
    FROM LOS_CHIMICHANGAS.subrubro sub
             JOIN LOS_CHIMICHANGAS.producto p ON sub.cod_subrubro = p.cod_subrubro
             JOIN LOS_CHIMICHANGAS.marca_producto mar ON p.cod_marca = mar.cod_marca
             JOIN LOS_CHIMICHANGAS.publicacion pub ON pub.cod_producto = p.cod_producto
             JOIN LOS_CHIMICHANGAS.BI_D_SUBRUBRO s ON sub.descripcion = s.descripcion
             JOIN LOS_CHIMICHANGAS.BI_D_MARCA m ON mar.descripcion = m.descripcion
             JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO ON LOS_CHIMICHANGAS.calcular_fecha(pub.fecha_inicio) = tiempo_id  -- Agregue una funcion             
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_FACTURACION
AS
BEGIN
    INSERT INTO BI_HECHOS_FACTURACION (tiempo_id, ubicacion_id, concepto_id, total_facturado)
    SELECT DISTINCT
        tiempo_id,
        bi_u.ubicacion_id,
        c.concepto_id,
        f.total
    FROM LOS_CHIMICHANGAS.factura AS f
        JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO ON LOS_CHIMICHANGAS.calcular_fecha(f.fecha_factura) = tiempo_id
        JOIN LOS_CHIMICHANGAS.usuario AS u ON u.cod_usuario = f.cod_usuario
        JOIN LOS_CHIMICHANGAS.vendedor AS v ON v.cod_usuario = u.cod_usuario
        JOIN LOS_CHIMICHANGAS.domicilio AS d ON d.cod_usuario = u.cod_usuario
        JOIN LOS_CHIMICHANGAS.localidad AS l ON l.cod_localidad = d.cod_localidad
        JOIN LOS_CHIMICHANGAS.provincia AS p ON p.cod_provincia = l.cod_provincia
        JOIN LOS_CHIMICHANGAS.BI_D_UBICACION AS bi_u ON (
            bi_u.ubicacion_provincia = p.nombre AND
            bi_u.ubicacion_localidad = l.nombre
        )
        JOIN LOS_CHIMICHANGAS.detalle_factura AS df ON df.cod_factura = f.cod_factura
        JOIN LOS_CHIMICHANGAS.concepto AS con ON con.cod_concepto = df.cod_concepto
        JOIN LOS_CHIMICHANGAS.BI_D_CONCEPTO AS c ON c.tipo = con.descripcion;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_PAGO
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_HECHOS_PAGO (tiempo_id, ubicacion_id, tipo_medio_pago_id, total_con_cuotas, total_sin_cuotas)
    SELECT DISTINCT
        tiempo_id,
        bi_u.ubicacion_id,
        bi_tmp.tipo_medio_pago_id,
        ISNULL(SUM(CASE WHEN det.cuotas > 0 THEN p.importe ELSE 0 END), 0) AS total_con_cuotas,
        ISNULL(SUM(CASE WHEN det.cuotas = 0 THEN p.importe ELSE 0 END), 0) AS total_sin_cuotas
    FROM LOS_CHIMICHANGAS.pago AS p
    JOIN LOS_CHIMICHANGAS.venta AS v ON v.cod_venta = p.cod_venta
    JOIN LOS_CHIMICHANGAS.cliente AS c ON c.cod_cliente = v.cod_cliente
    JOIN LOS_CHIMICHANGAS.usuario AS u ON u.cod_usuario = c.cod_usuario
    JOIN LOS_CHIMICHANGAS.domicilio AS d ON d.cod_usuario = u.cod_usuario
    JOIN LOS_CHIMICHANGAS.localidad AS l ON l.cod_localidad = d.cod_localidad
    JOIN LOS_CHIMICHANGAS.provincia AS prov ON prov.cod_provincia = l.cod_provincia
	JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO ON LOS_CHIMICHANGAS.calcular_fecha(p.fecha_pago) = tiempo_id
    JOIN LOS_CHIMICHANGAS.BI_D_UBICACION AS bi_u ON (
        bi_u.ubicacion_provincia = prov.nombre AND
        bi_u.ubicacion_localidad = l.nombre
    )
    JOIN LOS_CHIMICHANGAS.medio_de_pago AS mp ON mp.cod_medio = p.cod_medio
    JOIN LOS_CHIMICHANGAS.tipo_medio_de_pago AS tmp ON tmp.cod_tipo_medio_pago = mp.cod_tipo_medio_pago
    JOIN LOS_CHIMICHANGAS.BI_D_TIPO_MEDIO_PAGO AS bi_tmp ON bi_tmp.descripcion = tmp.descripcion
    LEFT JOIN LOS_CHIMICHANGAS.detalle_pago AS det ON p.cod_detalle_pago = det.cod_detalle
	GROUP BY tiempo_id, ubicacion_id, tipo_medio_pago_id
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_VENTA -- Funciona la cant de filas. TODO: No se por que rubro siempre devuelve 7 y tiempo_id siempre 1
AS
BEGIN
    INSERT INTO BI_HECHOS_VENTA (rubro_id, ubicacion_cliente_id, rango_etario_id, tiempo_id, horario_id, ubicacion_almacen_id, total)
    SELECT DISTINCT
        rbi.rubro_id,                         
        ubi_cliente.ubicacion_id,             
        LOS_CHIMICHANGAS.calcular_rango_etario(c.fecha_nacimiento) AS rango_etario_id, 
        LOS_CHIMICHANGAS.calcular_fecha(v.fecha_hora) AS tiempo_id,                     
        h.horario_id,                         
        ubi_almacen.ubicacion_id,             
        v.total                               
    FROM LOS_CHIMICHANGAS.venta AS v
    JOIN LOS_CHIMICHANGAS.cliente AS c ON v.cod_cliente = c.cod_cliente
    JOIN LOS_CHIMICHANGAS.usuario AS u ON u.cod_usuario = c.cod_usuario
    JOIN LOS_CHIMICHANGAS.domicilio AS d ON d.cod_usuario = u.cod_usuario
    JOIN LOS_CHIMICHANGAS.localidad AS l_cliente ON l_cliente.cod_localidad = d.cod_localidad
    JOIN LOS_CHIMICHANGAS.provincia AS p_cliente ON p_cliente.cod_provincia = l_cliente.cod_provincia
    JOIN LOS_CHIMICHANGAS.BI_D_UBICACION AS ubi_cliente ON 
        ubi_cliente.ubicacion_provincia = p_cliente.nombre AND 
        ubi_cliente.ubicacion_localidad = l_cliente.nombre
    JOIN LOS_CHIMICHANGAS.detalle_venta AS dv ON dv.cod_venta = v.cod_venta
    JOIN LOS_CHIMICHANGAS.publicacion AS pub ON pub.cod_publicacion = dv.cod_publicacion
    JOIN LOS_CHIMICHANGAS.producto AS prod ON prod.cod_producto = pub.cod_producto
    JOIN LOS_CHIMICHANGAS.subrubro AS subr ON subr.cod_subrubro = prod.cod_subrubro
    JOIN LOS_CHIMICHANGAS.rubro AS rub ON rub.cod_rubro = subr.cod_rubro
    JOIN LOS_CHIMICHANGAS.BI_D_RUBRO AS rbi ON rbi.descripcion = rub.descripcion
    JOIN LOS_CHIMICHANGAS.almacen AS alm ON alm.cod_almacen = pub.cod_almacen
    JOIN LOS_CHIMICHANGAS.localidad AS l_almacen ON l_almacen.cod_localidad = alm.cod_provincia
    JOIN LOS_CHIMICHANGAS.provincia AS p_almacen ON p_almacen.cod_provincia = alm.cod_provincia
    JOIN LOS_CHIMICHANGAS.BI_D_UBICACION AS ubi_almacen ON 
        ubi_almacen.ubicacion_provincia = p_almacen.nombre AND 
        ubi_almacen.ubicacion_localidad = l_almacen.nombre
    JOIN LOS_CHIMICHANGAS.BI_D_HORARIO_VENTAS AS h ON
        CASE
            WHEN DATEPART(HOUR, v.fecha_hora) BETWEEN 0 AND 5 THEN '00:00 - 06:00'
            WHEN DATEPART(HOUR, v.fecha_hora) BETWEEN 6 AND 11 THEN '06:00 - 12:00'
            WHEN DATEPART(HOUR, v.fecha_hora) BETWEEN 12 AND 17 THEN '12:00 - 18:00'
            ELSE '18:00 - 24:00'
        END = h.rango_horario;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_ENVIO
AS
BEGIN
	INSERT INTO BI_HECHOS_ENVIO (tiempo_id, ubicacion_id, tipo_envio_id, costo_envio)
	SELECT DISTINCT 
	tiempo_id,
	bi_u.ubicacion_id,
	bi_te.tipo_envio_id,
	e.costo_envio
	FROM LOS_CHIMICHANGAS.envio AS e
	JOIN domicilio d ON e.cod_domicilio = d.cod_domicilio
	JOIN localidad l ON d.cod_localidad = l.cod_localidad
	JOIN provincia prov ON l.cod_provincia = prov.cod_provincia
	JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO ON LOS_CHIMICHANGAS.calcular_fecha(e.fecha_programada) = tiempo_id
    JOIN LOS_CHIMICHANGAS.BI_D_UBICACION AS bi_u ON (
        bi_u.ubicacion_provincia = prov.nombre AND
        bi_u.ubicacion_localidad = l.nombre
    )
	JOIN tipo_envio te ON e.cod_tipo = te.cod_tipo
	JOIN LOS_CHIMICHANGAS.BI_D_TIPO_ENVIO bi_te ON te.descripcion = bi_te.descripcion
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_todo
AS
BEGIN
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_UBICACION;
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_RANGO_ETARIO;
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_HORARIO_VENTAS;
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_TIEMPO;
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_CONCEPTO;
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_MARCA;
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_SUBRUBRO;
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_RUBRO;
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_TIPO_MEDIO_PAGO;
	EXEC LOS_CHIMICHANGAS.migrar_BI_D_TIPO_ENVIO;
    EXEC LOS_CHIMICHANGAS.migrar_BI_HECHO_PUBLICACION;
    EXEC LOS_CHIMICHANGAS.migrar_BI_HECHO_FACTURACION;
    EXEC LOS_CHIMICHANGAS.migrar_BI_HECHO_VENTA
	EXEC LOS_CHIMICHANGAS.migrar_BI_HECHO_PAGO;
	EXEC LOS_CHIMICHANGAS.migrar_BI_HECHO_ENVIO;
END
GO

EXEC LOS_CHIMICHANGAS.migrar_todo
GO
-------------------- Views ---------------------------

CREATE VIEW LOS_CHIMICHANGAS.VIEW_PROMEDIO_TIEMPO_PUBLICACIONES AS
SELECT
    s.descripcion AS subrubro,
    t.tiempo_anio AS anio,
    t.tiempo_cuatrimestre AS cuatrimestre,
    AVG(DATEDIFF(day, pub.fecha_inicio, pub.fecha_fin)) AS tiempo_promedio
FROM
    LOS_CHIMICHANGAS.BI_HECHOS_PUBLICACION pub
        JOIN LOS_CHIMICHANGAS.BI_D_SUBRUBRO s ON pub.subrubro_id = s.subrubro_id
        JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO t ON pub.tiempo_id = t.tiempo_id
GROUP BY
    s.descripcion, t.tiempo_anio, t.tiempo_cuatrimestre;
GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_PROMEDIO_STOCK_INICIAL AS
SELECT
    m.descripcion AS marca,
    YEAR(pub.fecha_inicio) AS anio,
    AVG(pub.stock_inicial) AS promedio_stock_inicial
FROM
    LOS_CHIMICHANGAS.BI_HECHOS_PUBLICACION pub
        JOIN LOS_CHIMICHANGAS.BI_D_MARCA m ON pub.marca_id = m.marca_id
GROUP BY
    m.descripcion, YEAR(pub.fecha_inicio);
GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_PORCENTAJE_FACTURACION_POR_CONCEPTO AS
SELECT 
    tiempo.tiempo_anio AS año,
    tiempo.tiempo_mes AS mes,
    concepto.tipo AS concepto,
    SUM(facturacion.total_facturado) AS total_facturado_concepto,
    (SUM(facturacion.total_facturado) * 100.0 / SUM(SUM(facturacion.total_facturado)) 
         OVER (PARTITION BY tiempo.tiempo_anio, tiempo.tiempo_mes)) AS porcentaje_facturacion
FROM 
    LOS_CHIMICHANGAS.BI_HECHOS_FACTURACION AS facturacion
JOIN 
    LOS_CHIMICHANGAS.BI_D_TIEMPO AS tiempo ON facturacion.tiempo_id = tiempo.tiempo_id
JOIN 
    LOS_CHIMICHANGAS.BI_D_CONCEPTO AS concepto ON facturacion.concepto_id = concepto.concepto_id
GROUP BY 
    tiempo.tiempo_anio, tiempo.tiempo_mes, concepto.tipo;
GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_FACTURACION_POR_PROVINCIA AS
SELECT 
    u.ubicacion_provincia AS provincia,
    t.tiempo_anio AS anio,
    t.tiempo_cuatrimestre AS cuatrimestre,
    t.tiempo_id,
    SUM(bhf.total_facturado) AS monto_facturado
FROM LOS_CHIMICHANGAS.BI_HECHOS_FACTURACION bhf
    JOIN LOS_CHIMICHANGAS.BI_D_UBICACION u ON bhf.ubicacion_id = u.ubicacion_id
    JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO t ON bhf.tiempo_id = t.tiempo_id
GROUP BY 
    u.ubicacion_provincia, t.tiempo_anio, t.tiempo_cuatrimestre, t.tiempo_id
GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_VENTA_PROMEDIO_MENSUAL AS 
SELECT 
    t.tiempo_anio AS anio,
    t.tiempo_mes AS mes,
    u.ubicacion_provincia AS provincia,
    AVG(v.total) AS venta_promedio_mensual
FROM 
    LOS_CHIMICHANGAS.BI_HECHOS_VENTA AS v
JOIN 
    LOS_CHIMICHANGAS.BI_D_UBICACION AS u ON v.ubicacion_almacen_id = u.ubicacion_id
JOIN 
    LOS_CHIMICHANGAS.BI_D_TIEMPO AS t ON v.tiempo_id = t.tiempo_id
GROUP BY 
    t.tiempo_anio, t.tiempo_mes, u.ubicacion_provincia;
GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_RENDIMIENTO_RUBROS AS --TODO: me da mal porque justamente en venta solo aprece el rubro_id = 7 para todas las ventas entonces claro (error arrastrado)
WITH RankedRendimiento AS (
    SELECT 
        t.tiempo_anio AS anio,
        t.tiempo_cuatrimestre AS cuatrimestre,
        u.ubicacion_localidad AS localidad,
        r.rango_etario_desc AS rango_etario,
        rub.descripcion AS rubro,
        SUM(v.total) AS total_ventas,
        ROW_NUMBER() OVER (
            PARTITION BY t.tiempo_anio, t.tiempo_cuatrimestre, u.ubicacion_localidad, r.rango_etario_desc
            ORDER BY SUM(v.total) DESC
        ) AS ranking
    FROM 
        LOS_CHIMICHANGAS.BI_HECHOS_VENTA AS v
    JOIN 
        LOS_CHIMICHANGAS.BI_D_TIEMPO AS t ON v.tiempo_id = t.tiempo_id
    JOIN 
        LOS_CHIMICHANGAS.BI_D_UBICACION AS u ON v.ubicacion_cliente_id = u.ubicacion_id
    JOIN 
        LOS_CHIMICHANGAS.BI_D_RANGO_ETARIO AS r ON v.rango_etario_id = r.rango_etario_id
    JOIN 
        LOS_CHIMICHANGAS.BI_D_RUBRO AS rub ON v.rubro_id = rub.rubro_id
    GROUP BY 
        t.tiempo_anio, t.tiempo_cuatrimestre, u.ubicacion_localidad, r.rango_etario_desc, rub.descripcion
)
SELECT 
    anio, 
    cuatrimestre, 
    localidad, 
    rango_etario, 
    rubro, 
    total_ventas
FROM 
    RankedRendimiento
WHERE 
    ranking <= 5;
GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_VOLUMEN_VENTAS AS --TODO: me da mal porque justamente en venta solo aprece el tiempo_id = 1 para todas las ventas entonces claro (error arrastrado)
SELECT 
    t.tiempo_anio AS anio,
    t.tiempo_mes AS mes,
    h.rango_horario AS rango_horario,
    COUNT(v.venta_id) AS cantidad_ventas
FROM 
    LOS_CHIMICHANGAS.BI_HECHOS_VENTA AS v
JOIN 
    LOS_CHIMICHANGAS.BI_D_TIEMPO AS t ON v.tiempo_id = t.tiempo_id
JOIN 
    LOS_CHIMICHANGAS.BI_D_HORARIO_VENTAS AS h ON v.horario_id = h.horario_id
GROUP BY 
    t.tiempo_anio, t.tiempo_mes, h.rango_horario;
GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_LOCALIDAD_COSTO_ENVIO AS
SELECT TOP 5 ubi.ubicacion_localidad AS localidad, SUM(e.costo_envio) AS total_costo_envio
FROM LOS_CHIMICHANGAS.BI_HECHOS_ENVIO AS e
JOIN LOS_CHIMICHANGAS.BI_D_UBICACION AS ubi ON e.ubicacion_id = ubi.ubicacion_id
GROUP BY ubi.ubicacion_id, ubi.ubicacion_localidad
ORDER BY total_costo_envio DESC
GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_CUMPLIMIENTO_ENVIOS AS
SELECT COUNT(CASE WHEN e.estado = 'C' THEN 1 END) * 100.0 / COUNT(*) AS porcentaje_cumplimiento_envio, 
ubi.ubicacion_provincia AS provincia, tie.tiempo_mes AS mes, 
tie.tiempo_anio AS anio
FROM LOS_CHIMICHANGAS.BI_HECHOS_ENVIO AS e
JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO AS tie ON e.tiempo_id =  tie.tiempo_id
JOIN LOS_CHIMICHANGAS.BI_D_UBICACION ubi ON e.ubicacion_id = ubi.ubicacion_id
GROUP BY ubi.ubicacion_provincia,tie.tiempo_mes, tie.tiempo_anio
ORDER BY mes, anio
GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_PAGO_CUOTAS AS
WITH LocalidadesRanking AS (
    SELECT 
        u.ubicacion_localidad AS localidad,
        SUM(p.total_con_cuotas) AS mayor_importe,
        tm.descripcion AS medio_pago,
        t.tiempo_mes AS mes,
        t.tiempo_anio AS anio,
        ROW_NUMBER() OVER (PARTITION BY u.ubicacion_localidad ORDER BY SUM(p.total_con_cuotas) DESC) AS rn
    FROM LOS_CHIMICHANGAS.BI_HECHOS_PAGO AS p
    JOIN LOS_CHIMICHANGAS.BI_D_UBICACION AS u ON u.ubicacion_id = p.ubicacion_id
    JOIN LOS_CHIMICHANGAS.BI_HECHOS_ENVIO AS e ON e.ubicacion_id = u.ubicacion_id
    JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO AS t ON t.tiempo_id = p.tiempo_id
    JOIN LOS_CHIMICHANGAS.BI_D_TIPO_MEDIO_PAGO AS tm ON tm.tipo_medio_pago_id = p.tipo_medio_pago_id
    GROUP BY u.ubicacion_localidad, tm.descripcion, t.tiempo_anio, t.tiempo_mes
)
SELECT TOP 3 
    localidad,
    mayor_importe,
    medio_pago,
    mes,
    anio
FROM LocalidadesRanking
WHERE rn = 1
ORDER BY mayor_importe DESC;
GO

--TODO
--Errores que tenemos: 
--Da mal la cantidad de rows de pago
--Da siempre 0 lo de las cuotas (PUEDE QUE ESTE BIEN)
--Me da 7 siempre el rubro en VENTA
--Me da 1 siempre el tiempo en VENTA
--Publicacion da subrobro 12 en todo
--Publicacion da marca 2 en todo
--Una de las view de facturacion por concepto parece estar mal (siempre da 33 por ciento) (PUEDE QUE ESTE BIEN)
--Una de las views de envio esta MAL (PERO EN LA CONSIGNA DE POR SI ESTA RARO PORQUE COMO COMPARO DATE CON DATE TIME)
--MODIFICAR EN EL DER QUE EL ENVIO YA NO TIENE ESTADO
--LAS VIEWS PARECEN TENER ERROR ARASTRADO

--Fecha entrega final: 09/12/2024