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

IF OBJECT_ID('LOS_CHIMICHANGAS.calcular_rango_horario ', 'FN') IS NOT NULL
    DROP FUNCTION LOS_CHIMICHANGAS.calcular_rango_horario ;
GO

-------------------- Eliminación de Procedures ---------------------------

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_TIPO_MEDIO_PAGO', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_TIPO_MEDIO_PAGO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_TIPO_ENVIO', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_TIPO_ENVIO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_CONCEPTO', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_CONCEPTO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_SUBRUBRO', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_SUBRUBRO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_MARCA', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_MARCA

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_SUBRUBRO', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_SUBRUBRO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_HORARIO_VENTAS', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_HORARIO_VENTAS

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_RANGO_ETARIO', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_RANGO_ETARIO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_UBICACION', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_UBICACION

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_TIEMPO', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_TIEMPO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_D_RUBRO', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_RUBRO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_HECHO_VENTA', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_VENTA

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_HECHO_PUBLICACION', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_PUBLICACION

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_HECHO_FACTURACION', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_FACTURACION

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_HECHO_PAGO', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_PAGO

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_HECHO_ENVIO', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_ENVIO


IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_todo', 'P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_todo
GO
-------------------- Eliminación de Views ---------------------------

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_1_PROMEDIO_TIEMPO_PUBLICACIONES', 'V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_1_PROMEDIO_TIEMPO_PUBLICACIONES
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_2_PROMEDIO_STOCK_INICIAL', 'V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_2_PROMEDIO_STOCK_INICIAL
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_3_VENTA_PROMEDIO_MENSUAL', 'V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_3_VENTA_PROMEDIO_MENSUAL
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_4_RENDIMIENTO_RUBROS', 'V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_4_RENDIMIENTO_RUBROS
GO

-- IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_5_VOLUMEN_VENTAS','V') IS NOT NULL
--     DROP VIEW LOS_CHIMICHANGAS.VIEW_5_VOLUMEN_VENTAS
-- GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_6_PAGO_CUOTAS', 'V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_6_PAGO_CUOTAS
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_7_CUMPLIMIENTO_ENVIOS', 'V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_7_CUMPLIMIENTO_ENVIOS
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_8_LOCALIDAD_COSTO_ENVIO', 'V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_8_LOCALIDAD_COSTO_ENVIO
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_9_PORCENTAJE_FACTURACION_POR_CONCEPTO', 'V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_9_PORCENTAJE_FACTURACION_POR_CONCEPTO
GO

IF OBJECT_ID('LOS_CHIMICHANGAS.VIEW_10_FACTURACION_POR_PROVINCIA', 'V') IS NOT NULL
    DROP VIEW LOS_CHIMICHANGAS.VIEW_10_FACTURACION_POR_PROVINCIA
GO

-------------------- Creación de tablas ---------------------------

CREATE TABLE LOS_CHIMICHANGAS.BI_D_SUBRUBRO
(
    subrubro_id       INTEGER IDENTITY (1,1) NOT NULL,
    descripcion       NVARCHAR(50)           NOT NULL,
    descripcion_rubro NVARCHAR(50)           NOT NULL
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_RUBRO
(
    rubro_id    INTEGER IDENTITY (1,1) NOT NULL,
    descripcion NVARCHAR(50)           NOT NULL
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_TIEMPO
(
    tiempo_id           INTEGER IDENTITY (1,1) NOT NULL,
    tiempo_anio         INTEGER,
    tiempo_cuatrimestre INTEGER,
    tiempo_mes          INTEGER
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_UBICACION
(
    ubicacion_id        INTEGER IDENTITY (1,1) NOT NULL,
    ubicacion_provincia NVARCHAR(50),
    ubicacion_localidad NVARCHAR(50)
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_MARCA
(
    marca_id    INTEGER IDENTITY (1,1) NOT NULL,
    descripcion NVARCHAR(50)           NOT NULL
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_RANGO_ETARIO
(
    rango_etario_id   INTEGER IDENTITY (1,1) NOT NULL,
    rango_etario_desc NVARCHAR(50)           NOT NULL
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_HORARIO_VENTAS
(
    horario_id    INTEGER IDENTITY (1,1) NOT NULL,
    rango_horario NVARCHAR(50)           NOT NULL
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_TIPO_ENVIO
(
    tipo_envio_id INTEGER IDENTITY (1,1) NOT NULL,
    descripcion   NVARCHAR(50)
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_TIPO_MEDIO_PAGO
(
    tipo_medio_pago_id INTEGER IDENTITY (1,1) NOT NULL,
    descripcion        NVARCHAR(50)           NOT NULL
);

CREATE TABLE LOS_CHIMICHANGAS.BI_D_CONCEPTO
(
    concepto_id INTEGER IDENTITY (1,1) NOT NULL,
    tipo        NVARCHAR(50)           NOT NULL
);

CREATE TABLE LOS_CHIMICHANGAS.BI_HECHOS_PUBLICACION
(
    publicacion_id   INTEGER IDENTITY (1,1) NOT NULL,
    subrubro_id      INTEGER                NOT NULL,
    tiempo_id        INTEGER                NOT NULL,
    marca_id         INTEGER                NOT NULL,
    tiempo_publicado SMALLINT               NOT NULL, -- diferencia entre fecha inicio y fecha fin
    stock_inicial    INTEGER                NOT NULL
);

CREATE TABLE LOS_CHIMICHANGAS.BI_HECHOS_VENTA
(
    venta_id             INTEGER IDENTITY (1,1) NOT NULL,
    tiempo_id            INTEGER                NOT NULL,
    ubicacion_cliente_id INTEGER                NOT NULL,
    ubicacion_almacen_id INTEGER                NOT NULL,
    rubro_id             INTEGER                NOT NULL,
    rango_etario_id      INTEGER                NOT NULL,
    rango_horario_id     INTEGER                NOT NULL,
    cantidad_ventas      INTEGER                NOT NULL,
    total                DECIMAL(18, 2)
);

CREATE TABLE LOS_CHIMICHANGAS.BI_HECHOS_ENVIO
(
    envio_id             INTEGER IDENTITY (1,1) NOT NULL,
    tiempo_id            INTEGER                NOT NULL,
    ubicacion_cliente_id INTEGER                NOT NULL,
    ubicacion_almacen_id INTEGER                NOT NULL,
    tipo_envio_id        INTEGER                NOT NULL,
    cumplidos            INTEGER                NOT NULL,
    envios_totales       INTEGER                NOT NULL,
    costo_envio          DECIMAL(18, 2)         NOT NULL
);

CREATE TABLE LOS_CHIMICHANGAS.BI_HECHOS_PAGO
(
    pago_id            INTEGER IDENTITY (1,1) NOT NULL,
    tiempo_id          INTEGER                NOT NULL,
    ubicacion_id       INTEGER                NOT NULL,
    tipo_medio_pago_id INTEGER                NOT NULL,
    total              DECIMAL(18, 2)         NOT NULL
);

CREATE TABLE LOS_CHIMICHANGAS.BI_HECHOS_FACTURACION
(
    facturacion_id  INTEGER IDENTITY (1,1) NOT NULL,
    tiempo_id       INTEGER                NOT NULL,
    ubicacion_id    INTEGER                NOT NULL,
    concepto_id     INTEGER                NOT NULL,
    total_facturado DECIMAL(18, 2)         NOT NULL
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
        FOREIGN KEY (subrubro_id) REFERENCES LOS_CHIMICHANGAS.BI_D_SUBRUBRO (subrubro_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_PUBLICACION
    ADD CONSTRAINT fk_BI_hechos_publicacion_tiempo
        FOREIGN KEY (tiempo_id) REFERENCES LOS_CHIMICHANGAS.BI_D_TIEMPO (tiempo_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_PUBLICACION
    ADD CONSTRAINT fk_BI_hechos_publicacion_marca
        FOREIGN KEY (marca_id) REFERENCES LOS_CHIMICHANGAS.BI_D_MARCA (marca_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_VENTA
    ADD CONSTRAINT fk_BI_hechos_venta_rubro
        FOREIGN KEY (rubro_id) REFERENCES LOS_CHIMICHANGAS.BI_D_RUBRO (rubro_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_VENTA
    ADD CONSTRAINT fk_BI_hechos_venta_ubicacion_cliente
        FOREIGN KEY (ubicacion_cliente_id) REFERENCES LOS_CHIMICHANGAS.BI_D_UBICACION (ubicacion_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_VENTA
    ADD CONSTRAINT fk_BI_hechos_venta_rango_etario
        FOREIGN KEY (rango_etario_id) REFERENCES LOS_CHIMICHANGAS.BI_D_RANGO_ETARIO (rango_etario_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_VENTA
    ADD CONSTRAINT fk_BI_hechos_venta_rango_horario
        FOREIGN KEY (rango_horario_id) REFERENCES LOS_CHIMICHANGAS.BI_D_HORARIO_VENTAS (horario_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_VENTA
    ADD CONSTRAINT fk_BI_hechos_venta_tiempo
        FOREIGN KEY (tiempo_id) REFERENCES LOS_CHIMICHANGAS.BI_D_TIEMPO (tiempo_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_VENTA
    ADD CONSTRAINT fk_BI_hechos_venta_ubicacion_almacen
        FOREIGN KEY (ubicacion_almacen_id) REFERENCES LOS_CHIMICHANGAS.BI_D_UBICACION (ubicacion_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_ENVIO
    ADD CONSTRAINT fk_BI_hechos_envio_tiempo
        FOREIGN KEY (tiempo_id) REFERENCES LOS_CHIMICHANGAS.BI_D_TIEMPO (tiempo_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_ENVIO
    ADD CONSTRAINT fk_BI_hechos_envio_ubicacion_cliente
        FOREIGN KEY (ubicacion_cliente_id) REFERENCES LOS_CHIMICHANGAS.BI_D_UBICACION (ubicacion_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_ENVIO
    ADD CONSTRAINT fk_BI_hechos_envio_ubicacion_almacen
        FOREIGN KEY (ubicacion_almacen_id) REFERENCES LOS_CHIMICHANGAS.BI_D_UBICACION (ubicacion_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_ENVIO
    ADD CONSTRAINT fk_BI_hechos_envio_tipo_envio
        FOREIGN KEY (tipo_envio_id) REFERENCES LOS_CHIMICHANGAS.BI_D_TIPO_ENVIO (tipo_envio_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_PAGO
    ADD CONSTRAINT fk_BI_hechos_pago_tiempo
        FOREIGN KEY (tiempo_id) REFERENCES LOS_CHIMICHANGAS.BI_D_TIEMPO (tiempo_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_PAGO
    ADD CONSTRAINT fk_BI_hechos_pago_ubicacion
        FOREIGN KEY (ubicacion_id) REFERENCES LOS_CHIMICHANGAS.BI_D_UBICACION (ubicacion_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_PAGO
    ADD CONSTRAINT fk_BI_hechos_pago_tipo_medio_pago
        FOREIGN KEY (tipo_medio_pago_id) REFERENCES LOS_CHIMICHANGAS.BI_D_TIPO_MEDIO_PAGO (tipo_medio_pago_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_FACTURACION
    ADD CONSTRAINT fk_BI_hechos_facturacion_tiempo
        FOREIGN KEY (tiempo_id) REFERENCES LOS_CHIMICHANGAS.BI_D_TIEMPO (tiempo_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_FACTURACION
    ADD CONSTRAINT fk_BI_hechos_facturacion_ubicacion
        FOREIGN KEY (ubicacion_id) REFERENCES LOS_CHIMICHANGAS.BI_D_UBICACION (ubicacion_id);

ALTER TABLE LOS_CHIMICHANGAS.BI_HECHOS_FACTURACION
    ADD CONSTRAINT fk_BI_hechos_facturacion_concepto
        FOREIGN KEY (concepto_id) REFERENCES LOS_CHIMICHANGAS.BI_D_CONCEPTO (concepto_id);


-------------------- Funciones ---------------------------

GO

CREATE FUNCTION LOS_CHIMICHANGAS.calcular_fecha(@FECHA DATETIME)
    RETURNS SMALLINT
AS
BEGIN
    DECLARE @ANIO INT
    DECLARE @CUATRIMESTRE INT
    DECLARE @MES INT

    SELECT @ANIO = YEAR(@FECHA), @CUATRIMESTRE = DATEPART(QUARTER, @FECHA), @MES = MONTH(@FECHA)
    RETURN (select tiempo_id
            from BI_D_TIEMPO
            where @ANIO = tiempo_anio
              AND @CUATRIMESTRE = tiempo_cuatrimestre
              AND @MES = tiempo_mes)
END
GO

CREATE FUNCTION LOS_CHIMICHANGAS.calcular_rango_etario(@FECHA_NACIMIENTO DATE)
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

CREATE FUNCTION LOS_CHIMICHANGAS.calcular_rango_horario(@horario DATETIME)
    RETURNS NVARCHAR(50)
AS
BEGIN
    DECLARE @hora INT = DATEPART(HOUR, @horario)
    DECLARE @rango_horario NVARCHAR(50)

    SET @rango_horario = CASE
                             WHEN @hora BETWEEN 0 AND 5 THEN '00:00 - 06:00'
                             WHEN @hora BETWEEN 6 AND 11 THEN '06:00 - 12:00'
                             WHEN @hora BETWEEN 12 AND 17 THEN '12:00 - 18:00'
                             ELSE '18:00 - 24:00'
        END

    RETURN @rango_horario
END
GO

-------------------- Procedures ---------------------------

GO

-- Migracion de DIMENSIONES

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_TIPO_MEDIO_PAGO
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_D_TIPO_MEDIO_PAGO(descripcion)
    SELECT descripcion
    FROM LOS_CHIMICHANGAS.tipo_medio_de_pago
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_CONCEPTO
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_D_CONCEPTO(tipo)
    SELECT descripcion
    FROM LOS_CHIMICHANGAS.concepto
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_SUBRUBRO AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_D_SUBRUBRO(descripcion, descripcion_rubro)
        (SELECT s.descripcion,
                r.descripcion
         FROM LOS_CHIMICHANGAS.rubro r
                  JOIN LOS_CHIMICHANGAS.subrubro s ON s.cod_rubro = r.cod_rubro)
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_MARCA AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_D_Marca(descripcion)
    SELECT descripcion
    FROM LOS_CHIMICHANGAS.marca_producto
END
GO


CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_RANGO_ETARIO
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_D_RANGO_ETARIO(rango_etario_desc)
    VALUES ('<25'),
           ('25-35'),
           ('35-50'),
           ('>50'),
           ('NONE')
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_HORARIO_VENTAS
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_D_HORARIO_VENTAS(rango_horario)
    VALUES ('00:00 - 06:00'),
           ('06:00 - 12:00'),
           ('12:00 - 18:00'),
           ('18:00 - 24:00');
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_UBICACION
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_D_UBICACION(ubicacion_provincia, ubicacion_localidad)
        (SELECT p.cod_provincia, l.nombre
         FROM LOS_CHIMICHANGAS.Localidad l
                  JOIN LOS_CHIMICHANGAS.Provincia P ON P.cod_provincia = l.cod_provincia)
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_TIEMPO
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_D_TIEMPO(tiempo_anio, tiempo_cuatrimestre, tiempo_mes)
        (SELECT YEAR(fecha_hora), DATEPART(QUARTER, fecha_hora), MONTH(fecha_hora)
         FROM LOS_CHIMICHANGAS.venta
         WHERE fecha_hora IS NOT NULL
         UNION
         SELECT YEAR(p.fecha_pago), DATEPART(QUARTER, p.fecha_pago), MONTH(p.fecha_pago)
         FROM LOS_CHIMICHANGAS.Pago p
         WHERE p.fecha_pago IS NOT NULL
         UNION
         SELECT YEAR(fecha_programada), DATEPART(QUARTER, fecha_programada), MONTH(fecha_programada)
         FROM LOS_CHIMICHANGAS.envio
         WHERE fecha_programada IS NOT NULL) ORDER BY 1,2,3
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_RUBRO
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_D_Rubro(descripcion)
    SELECT DISTINCT descripcion
    FROM LOS_CHIMICHANGAS.rubro
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_TIPO_ENVIO
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_D_TIPO_ENVIO (descripcion)
    SELECT DISTINCT descripcion
    FROM LOS_CHIMICHANGAS.tipo_envio
END
GO

-- Migracion de HECHOS

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_PUBLICACION
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_HECHOS_PUBLICACION (tiempo_id, subrubro_id, marca_id, stock_inicial, tiempo_publicado)
    SELECT t.tiempo_id,
           bi_sub.subrubro_id,
           bi_m.marca_id,
           p.stock,
           DATEDIFF(DAY, p.fecha_inicio, p.fecha_fin) AS tiempoVigente
    FROM LOS_CHIMICHANGAS.publicacion p
             JOIN LOS_CHIMICHANGAS.producto prod ON p.cod_producto = prod.cod_producto
             JOIN LOS_CHIMICHANGAS.marca_producto m ON prod.cod_marca = m.cod_marca
             JOIN LOS_CHIMICHANGAS.BI_D_MARCA bi_m ON bi_m.descripcion = m.descripcion --IGUAL
             JOIN LOS_CHIMICHANGAS.subrubro sub ON prod.cod_subrubro = sub.cod_subrubro
             JOIN LOS_CHIMICHANGAS.rubro r on r.cod_rubro = sub.cod_rubro
             JOIN LOS_CHIMICHANGAS.BI_D_SUBRUBRO bi_sub ON bi_sub.descripcion = sub.descripcion AND
                                                           bi_sub.descripcion_rubro = r.descripcion
             JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO t ON t.tiempo_anio = YEAR(p.fecha_inicio) AND
                                                    t.tiempo_cuatrimestre = DATEPART(QUARTER, p.fecha_inicio) AND
                                                    t.tiempo_mes = MONTH(p.fecha_inicio)
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_FACTURACION
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_HECHOS_FACTURACION (tiempo_id, ubicacion_id, concepto_id, total_facturado)
    SELECT tiempo_id,
           bi_u.ubicacion_id,
           bi_c.concepto_id,
           SUM(det.subtotal) as total_facturado
    FROM LOS_CHIMICHANGAS.factura AS f
             JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO t ON t.tiempo_anio = YEAR(fecha_factura)
        AND t.tiempo_cuatrimestre = DATEPART(QUARTER, fecha_factura)
        AND t.tiempo_mes = MONTH(fecha_factura)
             JOIN LOS_CHIMICHANGAS.detalle_factura det ON det.cod_factura = f.cod_factura
             JOIN LOS_CHIMICHANGAS.concepto c ON det.cod_concepto = c.cod_concepto
             JOIN LOS_CHIMICHANGAS.BI_D_CONCEPTO bi_c ON bi_c.tipo = c.descripcion
             JOIN LOS_CHIMICHANGAS.usuario u ON f.cod_usuario = u.cod_usuario
             JOIN LOS_CHIMICHANGAS.domicilio d ON u.cod_usuario = d.cod_usuario
             JOIN LOS_CHIMICHANGAS.localidad l ON d.cod_localidad = l.cod_localidad
             JOIN LOS_CHIMICHANGAS.provincia p ON l.cod_provincia = p.cod_provincia
             JOIN LOS_CHIMICHANGAS.BI_D_UBICACION bi_u ON bi_u.ubicacion_provincia = p.cod_provincia
        AND bi_u.ubicacion_localidad = l.nombre
    GROUP BY tiempo_id, bi_c.concepto_id, bi_u.ubicacion_id
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_PAGO
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_HECHOS_PAGO (tiempo_id, ubicacion_id, tipo_medio_pago_id, total)
    SELECT tiempo_id,
           bi_u.ubicacion_id,
           bi_tmp.tipo_medio_pago_id,
           SUM(p.importe) as total
    FROM LOS_CHIMICHANGAS.pago AS p
             JOIN LOS_CHIMICHANGAS.venta v ON p.cod_venta = v.cod_venta
             JOIN LOS_CHIMICHANGAS.usuario u ON v.cod_cliente = u.cod_usuario
             JOIN LOS_CHIMICHANGAS.domicilio d ON d.cod_usuario = u.cod_usuario
             JOIN LOS_CHIMICHANGAS.localidad l ON d.cod_localidad = l.cod_localidad
             JOIN LOS_CHIMICHANGAS.provincia prov ON l.cod_provincia = prov.cod_provincia
             JOIN LOS_CHIMICHANGAS.BI_D_UBICACION bi_u ON bi_u.ubicacion_provincia = prov.cod_provincia
        AND bi_u.ubicacion_localidad = l.nombre
             JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO t ON LOS_CHIMICHANGAS.calcular_fecha(p.fecha_pago) = t.tiempo_id
             JOIN LOS_CHIMICHANGAS.medio_de_pago m ON p.cod_medio = m.cod_medio
             JOIN LOS_CHIMICHANGAS.BI_D_TIPO_MEDIO_PAGO bi_tmp ON m.cod_tipo_medio_pago = bi_tmp.tipo_medio_pago_id
    GROUP BY tiempo_id, ubicacion_id, bi_tmp.tipo_medio_pago_id
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_VENTA
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_HECHOS_VENTA (tiempo_id, ubicacion_cliente_id, ubicacion_almacen_id, rubro_id,
                                                  rango_etario_id, rango_horario_id, cantidad_ventas, total)
    SELECT t.tiempo_id,
           bi_u.ubicacion_id  AS ubiCliente,
           bi_u2.ubicacion_id AS ubiAlmacen,
           bi_r.rubro_id,
           re.rango_etario_id,
           bi_h.horario_id,
           COUNT(v.cod_venta) as cantidad_ventas,
           SUM(v.total)       AS total
    FROM LOS_CHIMICHANGAS.venta v
             JOIN LOS_CHIMICHANGAS.detalle_venta dv ON v.cod_venta = dv.cod_venta
             JOIN LOS_CHIMICHANGAS.publicacion p ON dv.cod_publicacion = p.cod_publicacion
             JOIN LOS_CHIMICHANGAS.producto prod ON p.cod_producto = prod.cod_producto
             JOIN LOS_CHIMICHANGAS.subrubro sub ON prod.cod_subrubro = sub.cod_subrubro
             JOIN LOS_CHIMICHANGAS.rubro r ON sub.cod_rubro = r.cod_rubro
             JOIN LOS_CHIMICHANGAS.almacen a ON p.cod_almacen = a.cod_almacen
             JOIN LOS_CHIMICHANGAS.localidad l ON l.cod_localidad = a.cod_localidad
             JOIN LOS_CHIMICHANGAS.provincia prov ON prov.cod_provincia = l.cod_provincia
             JOIN LOS_CHIMICHANGAS.BI_D_UBICACION bi_u ON bi_u.ubicacion_localidad = l.nombre AND
                                                          bi_u.ubicacion_provincia = prov.cod_provincia
             JOIN LOS_CHIMICHANGAS.cliente c ON c.cod_cliente = v.cod_cliente
             JOIN LOS_CHIMICHANGAS.usuario u ON u.cod_usuario = c.cod_usuario
             JOIN LOS_CHIMICHANGAS.domicilio d2 ON u.cod_usuario = d2.cod_usuario
             JOIN LOS_CHIMICHANGAS.localidad l2 ON l2.cod_localidad = d2.cod_localidad
             JOIN LOS_CHIMICHANGAS.provincia prov2 ON prov2.cod_provincia = l2.cod_provincia
             JOIN LOS_CHIMICHANGAS.BI_D_UBICACION bi_u2 ON bi_u2.ubicacion_localidad = l2.nombre AND
                                                           bi_u2.ubicacion_provincia = prov2.cod_provincia
             JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO t ON LOS_CHIMICHANGAS.calcular_fecha(v.fecha_hora) = t.tiempo_id
             JOIN LOS_CHIMICHANGAS.BI_D_RUBRO bi_r ON r.descripcion = bi_r.descripcion
             JOIN LOS_CHIMICHANGAS.BI_D_RANGO_ETARIO re
                  ON re.rango_etario_id = LOS_CHIMICHANGAS.calcular_rango_etario(c.fecha_nacimiento)
             JOIN LOS_CHIMICHANGAS.BI_D_HORARIO_VENTAS bi_h
                  ON bi_h.rango_horario = LOS_CHIMICHANGAS.calcular_rango_horario(v.fecha_hora)
    GROUP BY t.tiempo_id, bi_u.ubicacion_id, bi_u2.ubicacion_id, bi_r.rubro_id, re.rango_etario_id, bi_h.horario_id
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_ENVIO
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_HECHOS_ENVIO (tiempo_id, ubicacion_almacen_id, ubicacion_cliente_id, tipo_envio_id,
                                                  cumplidos, envios_totales, costo_envio)
    SELECT t.tiempo_id,
           bi_u_a.ubicacion_id             AS u_almacen,
           bi_u_c.ubicacion_id             AS u_cliente,
           bi_u_te.tipo_envio_id           AS u_tipo_envio,
           COUNT(CASE
                     WHEN e.fecha_entrega between DATEADD(HOUR,
                                                          e.horario_inicio,
                                                          CAST(e.fecha_programada AS DATETIME)) AND DATEADD(HOUR, e.horario_fin, CAST(e.fecha_programada AS DATETIME))
                         THEN 1
                     ELSE 0 END)           AS cumplidos,
           COUNT(COALESCE(e.cod_envio, 0)) AS totales,
           SUM(COALESCE(e.costo_envio, 0))
    FROM LOS_CHIMICHANGAS.envio e
             JOIN LOS_CHIMICHANGAS.tipo_envio tipo_e ON e.cod_tipo = tipo_e.cod_tipo
             JOIN LOS_CHIMICHANGAS.BI_D_TIPO_ENVIO bi_u_te ON bi_u_te.tipo_envio_id = tipo_e.cod_tipo
             JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO t ON LOS_CHIMICHANGAS.calcular_fecha(e.fecha_entrega) = t.tiempo_id
             JOIN LOS_CHIMICHANGAS.domicilio d ON e.cod_domicilio = d.cod_domicilio
             JOIN LOS_CHIMICHANGAS.localidad l ON d.cod_localidad = l.cod_localidad
             JOIN LOS_CHIMICHANGAS.provincia prov ON l.cod_provincia = prov.cod_provincia
             JOIN LOS_CHIMICHANGAS.BI_D_UBICACION bi_u_c
                  ON bi_u_c.ubicacion_provincia = prov.cod_provincia AND bi_u_c.ubicacion_localidad = l.nombre
             JOIN LOS_CHIMICHANGAS.venta v ON v.cod_venta = e.cod_venta
             JOIN LOS_CHIMICHANGAS.detalle_venta det_v ON v.cod_venta = det_v.cod_venta
             JOIN LOS_CHIMICHANGAS.publicacion p ON p.cod_publicacion = det_v.cod_publicacion
             JOIN LOS_CHIMICHANGAS.almacen a ON a.cod_almacen = p.cod_almacen
             JOIN LOS_CHIMICHANGAS.localidad l_a ON a.cod_localidad = l_a.cod_localidad
             JOIN LOS_CHIMICHANGAS.provincia prov_a ON l_a.cod_provincia = prov_a.cod_provincia
             JOIN LOS_CHIMICHANGAS.BI_D_UBICACION bi_u_a
                  ON bi_u_a.ubicacion_provincia = prov_a.cod_provincia AND bi_u_a.ubicacion_localidad = l_a.nombre
    GROUP BY t.tiempo_id, bi_u_c.ubicacion_id, bi_u_a.ubicacion_id, bi_u_te.tipo_envio_id
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

CREATE VIEW LOS_CHIMICHANGAS.VIEW_1_PROMEDIO_TIEMPO_PUBLICACIONES AS
SELECT sub.subrubro_id,
       t.tiempo_anio,
       t.tiempo_cuatrimestre,
       AVG(p.tiempo_publicado) AS promedio_tiempo_publi
FROM LOS_CHIMICHANGAS.BI_HECHOS_PUBLICACION AS p
         JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO AS t ON p.tiempo_id = t.tiempo_id
         JOIN LOS_CHIMICHANGAS.BI_D_SUBRUBRO AS sub ON p.subrubro_id = sub.subrubro_id
GROUP BY sub.subrubro_id, t.tiempo_anio, t.tiempo_cuatrimestre;
GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_2_PROMEDIO_STOCK_INICIAL AS
SELECT m.marca_id,
       t.tiempo_anio,
       AVG(p.stock_inicial) AS promedio_stock_inicial
FROM LOS_CHIMICHANGAS.BI_HECHOS_PUBLICACION AS p
         JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO AS t ON p.tiempo_id = t.tiempo_id
         JOIN LOS_CHIMICHANGAS.BI_D_MARCA AS m ON p.marca_id = m.marca_id
GROUP BY m.marca_id, t.tiempo_anio
GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_3_VENTA_PROMEDIO_MENSUAL AS
SELECT TOP 5 sum(v.total) / (select sum(venta.total) FROM LOS_CHIMICHANGAS.venta venta) AS promedio,
             t.tiempo_anio,
             t.tiempo_mes,
             u.ubicacion_localidad
FROM LOS_CHIMICHANGAS.BI_HECHOS_VENTA v
         JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO t ON t.tiempo_id = v.venta_id
         JOIN LOS_CHIMICHANGAS.BI_D_UBICACION u ON u.ubicacion_id = v.ubicacion_almacen_id
         JOIN LOS_CHIMICHANGAS.BI_D_RANGO_ETARIO r ON r.rango_etario_id = v.rango_etario_id
GROUP BY t.tiempo_anio, t.tiempo_mes, u.ubicacion_localidad, u.ubicacion_provincia, r.rango_etario_desc
GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_4_RENDIMIENTO_RUBROS as
SELECT tiempo_anio,
       tiempo_cuatrimestre,
       ubicacion_localidad,
       rango_etario_id,
       rubro_id,
       descripcion,
       total_ventas
FROM (SELECT t.tiempo_anio,
             t.tiempo_cuatrimestre,
             bi_ubi.ubicacion_localidad,
             bi_v.rango_etario_id,
             bi_rub.rubro_id,
             bi_rub.descripcion,
             SUM(bi_v.total) AS total_ventas,
             ROW_NUMBER() OVER (
                 PARTITION BY t.tiempo_anio, t.tiempo_cuatrimestre, bi_ubi.ubicacion_localidad, bi_v.rango_etario_id
                 ORDER BY SUM(bi_v.total) DESC
                 )           AS ranking
      FROM LOS_CHIMICHANGAS.BI_HECHOS_VENTA bi_v
               JOIN LOS_CHIMICHANGAS.BI_D_Rubro bi_rub ON bi_v.rubro_id = bi_rub.rubro_id
               JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO t ON bi_v.tiempo_id = t.tiempo_id
               JOIN LOS_CHIMICHANGAS.BI_D_UBICACION bi_ubi ON bi_v.ubicacion_cliente_id = bi_ubi.ubicacion_id
      GROUP BY t.tiempo_anio, t.tiempo_cuatrimestre, bi_ubi.ubicacion_localidad, bi_v.rango_etario_id, bi_rub.rubro_id,
               bi_rub.descripcion) AS VentasConRanking
WHERE ranking <= 5
GO

-- CREATE VIEW LOS_CHIMICHANGAS.VIEW_5_VOLUMEN_VENTAS AS
-- SELECT
--     t.tiempo_anio AS anio,
--     t.tiempo_mes AS mes,
--     h.rango_horario AS rango_horario,
--     COUNT(v.venta_id) AS cantidad_ventas
-- FROM
--     LOS_CHIMICHANGAS.BI_HECHOS_VENTA AS v
-- JOIN
--     LOS_CHIMICHANGAS.BI_D_TIEMPO AS t ON v.tiempo_id = t.tiempo_id
-- JOIN
--     LOS_CHIMICHANGAS.BI_D_HORARIO_VENTAS AS h ON v.horario_id = h.horario_id
-- GROUP BY
--     t.tiempo_anio, t.tiempo_mes, h.rango_horario;
-- GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_6_PAGO_CUOTAS AS
SELECT TOP 3 SU.ubicacion_id,
             SU.descripcion,
             SU.tiempo_mes,
             SU.tiempo_anio,
             SU.suma
FROM (SELECT bi_h.ubicacion_id,
             bi_tm.descripcion,
             bi_t.tiempo_anio,
             bi_t.tiempo_mes,
             SUM(bi_h.total) as suma,
             RANK() OVER (
                 PARTITION BY bi_tm.descripcion, bi_t.tiempo_anio, bi_t.tiempo_mes
                 ORDER BY SUM(bi_h.total) DESC
                 )           AS ranking
      FROM LOS_CHIMICHANGAS.BI_HECHOS_PAGO AS bi_h
               JOIN LOS_CHIMICHANGAS.BI_D_TIPO_MEDIO_PAGO AS bi_tm ON bi_tm.tipo_medio_pago_id = bi_h.tipo_medio_pago_id
               JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO AS bi_t ON bi_t.tiempo_id = bi_h.tiempo_id
      GROUP BY bi_h.ubicacion_id, bi_tm.descripcion, bi_t.tiempo_anio, bi_t.tiempo_mes) AS SU
WHERE SU.ranking <= 3
GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_7_CUMPLIMIENTO_ENVIOS AS
SELECT SUM(e.cumplidos) / SUM(e.envios_totales) * 100 AS Porcentaje
FROM LOS_CHIMICHANGAS.BI_HECHOS_ENVIO e
         JOIN LOS_CHIMICHANGAS.BI_D_UBICACION ubi ON e.ubicacion_almacen_id = ubi.ubicacion_id
         JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO t ON t.tiempo_id = e.tiempo_id
GROUP BY ubi.ubicacion_provincia, t.tiempo_anio, t.tiempo_mes
GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_8_LOCALIDAD_COSTO_ENVIO AS
SELECT TOP 5 ubi.ubicacion_localidad AS localidad, SUM(e.costo_envio) AS total_costo_envio
FROM LOS_CHIMICHANGAS.BI_HECHOS_ENVIO AS e
         JOIN LOS_CHIMICHANGAS.BI_D_UBICACION AS ubi ON e.ubicacion_cliente_id = ubi.ubicacion_id
GROUP BY e.costo_envio, ubi.ubicacion_localidad
ORDER BY SUM(e.costo_envio) DESC
GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_9_PORCENTAJE_FACTURACION_POR_CONCEPTO AS
SELECT t.tiempo_anio,
       t.tiempo_mes,
       bi_c.concepto_id,
       bi_c.tipo,
       SUM(bi_f.total_facturado)                                                      AS total_concepto,
       SUM(SUM(bi_f.total_facturado)) OVER (PARTITION BY t.tiempo_anio, t.tiempo_mes) AS total_mes,
       (SUM(bi_f.total_facturado) * 100.0) /
       SUM(SUM(bi_f.total_facturado)) OVER (PARTITION BY t.tiempo_anio, t.tiempo_mes) AS porcentaje_factura
FROM LOS_CHIMICHANGAS.BI_HECHOS_FACTURACION bi_f
         join LOS_CHIMICHANGAS.BI_D_CONCEPTO bi_c ON bi_f.concepto_id = bi_c.concepto_id
         join LOS_CHIMICHANGAS.BI_D_TIEMPO t ON bi_f.tiempo_id = t.tiempo_id
GROUP BY t.tiempo_anio, t.tiempo_mes, bi_c.concepto_id, bi_c.tipo
GO

CREATE VIEW LOS_CHIMICHANGAS.VIEW_10_FACTURACION_POR_PROVINCIA AS
SELECT p.nombre,
       t.tiempo_anio,
       t.tiempo_cuatrimestre,
       SUM(bi_f.total_facturado) montoFacturado
FROM LOS_CHIMICHANGAS.BI_HECHOS_FACTURACION bi_f
         JOIN LOS_CHIMICHANGAS.BI_D_UBICACION bi_ubi ON bi_f.ubicacion_id = bi_ubi.ubicacion_id
         JOIN LOS_CHIMICHANGAS.provincia p ON bi_ubi.ubicacion_provincia = p.cod_provincia
         JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO t ON bi_f.tiempo_id = t.tiempo_id
GROUP BY p.nombre, t.tiempo_cuatrimestre, t.tiempo_anio
GO
