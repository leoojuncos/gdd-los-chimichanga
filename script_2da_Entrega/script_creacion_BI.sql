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
                                                        fecha_fin DATE
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
    (SELECT distinct descripcion FROM LOS_CHIMICHANGAS.subrubro)
end
go

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_MARCA
AS
BEGIN
    INSERT INTO BI_D_MARCA(descripcion)
    (SELECT distinct descripcion FROM LOS_CHIMICHANGAS.marca_producto)
end
go


CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_RANGO_ETARIO
AS
BEGIN
    INSERT INTO LOS_CHIMICHANGAS.BI_D_RANGO_ETARIO(rango_etario_desc)
    VALUES ('<25')
    INSERT INTO BI_D_RANGO_ETARIO(rango_etario_desc)
    VALUES ('25-35')
    INSERT INTO BI_D_RANGO_ETARIO(rango_etario_desc)
    VALUES ('35-50')
    INSERT INTO BI_D_RANGO_ETARIO(rango_etario_desc)
    VALUES ('>50')
    INSERT INTO BI_D_RANGO_ETARIO(rango_etario_desc)
    VALUES ('DESCONOCIDO')
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_HORARIO_VENTAS
AS
BEGIN
    INSERT INTO BI_D_HORARIO_VENTAS(rango_horario)
    VALUES ('00:00 - 06:00')
    INSERT INTO BI_D_HORARIO_VENTAS(rango_horario)
    VALUES ('06:00 - 12:00')
    INSERT INTO BI_D_HORARIO_VENTAS(rango_horario)
    VALUES ('12:00 - 18:00')
    INSERT INTO BI_D_HORARIO_VENTAS(rango_horario)
    VALUES ('18:00 - 24:00')
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_UBICACION
AS
BEGIN
    INSERT INTO BI_D_UBICACION(ubicacion_provincia, ubicacion_localidad)
        (SELECT distinct p.nombre, l.nombre
         FROM LOS_CHIMICHANGAS.Localidad as l
                  JOIN LOS_CHIMICHANGAS.Provincia p ON p.cod_provincia = l.cod_provincia)
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_D_TIEMPO
AS
BEGIN
    INSERT INTO BI_D_TIEMPO(tiempo_anio, tiempo_cuatrimestre, tiempo_mes)
        (SELECT distinct YEAR(fecha_factura), DATEPART(QUARTER, fecha_factura), MONTH(fecha_factura)
         FROM LOS_CHIMICHANGAS.factura
         GROUP BY YEAR(fecha_factura), DATEPART(QUARTER, fecha_factura), MONTH(fecha_factura)

         UNION

         SELECT distinct YEAR(fecha_pago), DATEPART(QUARTER, fecha_pago), MONTH(fecha_pago)
         FROM LOS_CHIMICHANGAS.pago
         GROUP BY YEAR(fecha_pago), DATEPART(QUARTER, fecha_pago), MONTH(fecha_pago)

         UNION

         SELECT distinct YEAR(fecha_programada), DATEPART(QUARTER, fecha_programada), MONTH(fecha_programada)
         FROM LOS_CHIMICHANGAS.envio
         GROUP BY YEAR(fecha_programada), DATEPART(QUARTER, fecha_programada), MONTH(fecha_programada))

         UNION

         SELECT distinct YEAR(fecha_inicio), DATEPART(QUARTER, fecha_inicio), MONTH(fecha_inicio)
         FROM LOS_CHIMICHANGAS.publicacion
         GROUP BY YEAR(fecha_inicio), DATEPART(QUARTER, fecha_inicio), MONTH(fecha_inicio)
END
GO

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_BI_HECHO_PUBLICACION
AS
BEGIN
    INSERT INTO BI_HECHOS_PUBLICACION (subrubro_id, tiempo_id, marca_id, fecha_inicio, fecha_fin)
        (SELECT distinct s.cod_subrubro, t.tiempo_id, m.cod_marca, pub.fecha_inicio, pub.fecha_fin
         from LOS_CHIMICHANGAS.subrubro s join LOS_CHIMICHANGAS.producto p on s.cod_subrubro = p.cod_subrubro
                                          join LOS_CHIMICHANGAS.marca_producto m on p.cod_marca = m.cod_marca
                                          join LOS_CHIMICHANGAS.publicacion pub on pub.cod_producto = p.cod_producto
                                          join LOS_CHIMICHANGAS.BI_D_TIEMPO t on t.tiempo_anio = YEAR(fecha_inicio) and t.tiempo_cuatrimestre = DATEPART(QUARTER, fecha_inicio) and t.tiempo_mes = MONTH(fecha_inicio)
        )
end
go

CREATE PROCEDURE LOS_CHIMICHANGAS.migrar_todo
AS
BEGIN
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_UBICACION
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_RANGO_ETARIO
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_HORARIO_VENTAS
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_MARCA
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_SUBRUBRO
    EXEC LOS_CHIMICHANGAS.migrar_BI_D_TIEMPO
    EXEC LOS_CHIMICHANGAS.migrar_BI_HECHO_PUBLICACION
end
go

EXEC LOS_CHIMICHANGAS.migrar_todo
go


-------------------- Views ---------------------------