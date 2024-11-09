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
-------------------- Eliminación de Procedures ---------------------------
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

IF OBJECT_ID('LOS_CHIMICHANGAS.migrar_BI_HECHO_PUBLICACION','P') IS NOT NULL
    DROP PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_PUBLICACION

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
                                                  costo_envio DECIMAL(18,2),
                                                  estado CHAR(1)
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

-------------------- Procedures ---------------------------
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
    SELECT DISTINCT p.nombre, l.nombre
    FROM LOS_CHIMICHANGAS.Localidad AS l
             JOIN LOS_CHIMICHANGAS.Provincia p ON p.cod_provincia = l.cod_provincia;
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
    SELECT DISTINCT YEAR(fecha_inicio), DATEPART(QUARTER, fecha_inicio), MONTH(fecha_inicio)
    FROM LOS_CHIMICHANGAS.publicacion;
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_PUBLICACION
AS
BEGIN
    INSERT INTO BI_HECHOS_PUBLICACION (subrubro_id, tiempo_id, marca_id, fecha_inicio, fecha_fin, stock_inicial)
    SELECT DISTINCT
        s.subrubro_id,
        t.tiempo_id,
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
             JOIN LOS_CHIMICHANGAS.BI_D_TIEMPO t ON t.tiempo_anio = YEAR(pub.fecha_inicio)
        AND t.tiempo_cuatrimestre = DATEPART(QUARTER, pub.fecha_inicio)
        AND t.tiempo_mes = MONTH(pub.fecha_inicio);
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_todo
AS
BEGIN
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_UBICACION;
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_RANGO_ETARIO;
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_HORARIO_VENTAS;
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_MARCA;
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_SUBRUBRO;
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_TIEMPO;
    EXEC LOS_CHIMICHANGAS.migrar_BI_HECHO_PUBLICACION;
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
