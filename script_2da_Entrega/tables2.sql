-- / Domicilio

CREATE TABLE provincia
(
    cod_provincia DECIMAL(10,0) IDENTITY(1,1) PRIMARY KEY, 
    nombre NVARCHAR(50)
);

CREATE TABLE localidad
(
    cod_localidad DECIMAL(10,0) IDENTITY(1,1) PRIMARY KEY, 
    cod_provincia DECIMAL(10,0), 
    nombre NVARCHAR(50),
    FOREIGN KEY (cod_provincia) REFERENCES provincia(cod_provincia)
);

CREATE TABLE domicilio
(
    cod_domicilio DECIMAL(10,0) IDENTITY(1,1) PRIMARY KEY,
    cod_provincia DECIMAL(10,0), 
    calle NVARCHAR(50),
    numero NVARCHAR(50),
    cod_postal NVARCHAR(50),
    piso NVARCHAR(50) NULL,
    departamento NVARCHAR(50) NULL,
    FOREIGN KEY (cod_provincia) REFERENCES provincia(cod_provincia)
);

-- / Usuario, Cliente y Vendedores

CREATE TABLE usuario
(
    cod_usuario DECIMAL(10,0) PRIMARY KEY, 
    cod_domicilio DECIMAL(10,0), 
    nombre NVARCHAR(50), 
    contrasenia NVARCHAR(50), 
    fecha_creacion DATE,
    FOREIGN KEY (cod_domicilio) REFERENCES domicilio(cod_domicilio)
);

CREATE TABLE cliente
(
    cod_cliente DECIMAL(10,0) PRIMARY KEY, 
    cod_usuario DECIMAL(10,0),
    nombre NVARCHAR(50),
    apellido NVARCHAR(50),
    fecha_nacimiento DATE,
    mail NVARCHAR(50), 
    dni NVARCHAR(50),
    FOREIGN KEY (cod_usuario) REFERENCES usuario(cod_usuario)
);

CREATE TABLE vendedor
(
    cod_vendedor DECIMAL(10,0) PRIMARY KEY,
    cod_usuario DECIMAL(10,0), 
    razon_social NVARCHAR(50),
    cuit NVARCHAR(50), 
    mail NVARCHAR(50),
    FOREIGN KEY (cod_usuario) REFERENCES usuario(cod_usuario)
);

-- / Facturas y Detalles

CREATE TABLE tipo_detalle_factura
(
    cod_tipo DECIMAL(10,0) IDENTITY(1,1) PRIMARY KEY,
    descripcion NVARCHAR(50)
);

CREATE TABLE factura
(
    cod_factura DECIMAL(10,0) IDENTITY(1,1) PRIMARY KEY, 
    cod_cliente DECIMAL(10,0),
    fecha_factura DATE,
    total DECIMAL(18,2),
    FOREIGN KEY (cod_cliente) REFERENCES cliente(cod_cliente)
);

CREATE TABLE detalle_factura
(
    cod_detalle_factura DECIMAL(10,0) IDENTITY(1,1) PRIMARY KEY, 
    cod_publicacion DECIMAL(10,0), 
    cod_factura DECIMAL(10,0),
    cod_tipo DECIMAL(10,0),
    precio DECIMAL(18,2),
    cantidad DECIMAL(10,0),
    subtotal DECIMAL(18,2),
    FOREIGN KEY (cod_publicacion) REFERENCES publicacion(cod_publicacion),
    FOREIGN KEY (cod_factura) REFERENCES factura(cod_factura),
    FOREIGN KEY (cod_tipo) REFERENCES tipo_detalle_factura(cod_tipo)
);

CREATE TABLE concepto
(
    cod_concepto DECIMAL(10,0) IDENTITY(1,1) PRIMARY KEY,
    cod_detalle_factura DECIMAL(10,0),
    descripcion NVARCHAR(50),
    precio DECIMAL(18,2),
    cantidad DECIMAL(10,0),
    FOREIGN KEY (cod_detalle_factura) REFERENCES detalle_factura(cod_detalle_factura)
);

-- / Productos y Almacenes

CREATE TABLE rubro
(
    cod_rubro DECIMAL(10,0) PRIMARY KEY,
    descripcion NVARCHAR(50)
);

CREATE TABLE subrubro
(
    cod_subrubro DECIMAL(10,0) PRIMARY KEY,
    cod_rubro DECIMAL(10,0),
    descripcion NVARCHAR(50),
    FOREIGN KEY (cod_rubro) REFERENCES rubro(cod_rubro)
);

CREATE TABLE marca_producto
(
    cod_marca DECIMAL(10,0) PRIMARY KEY,
    descripcion NVARCHAR(50)
);

CREATE TABLE modelo_producto
(
    cod_modelo DECIMAL(10,0) PRIMARY KEY, 
    descripcion NVARCHAR(50)
);

CREATE TABLE producto
(
    cod_producto DECIMAL(10,0) PRIMARY KEY,
    cod_subrubro DECIMAL(10,0),
    cod_marca DECIMAL(10,0),
    cod_modelo DECIMAL(10,0),
    descripcion NVARCHAR(50), 
    precio DECIMAL(18,2),
    FOREIGN KEY (cod_subrubro) REFERENCES subrubro(cod_subrubro),
    FOREIGN KEY (cod_marca) REFERENCES marca_producto(cod_marca),
    FOREIGN KEY (cod_modelo) REFERENCES modelo_producto(cod_modelo)
);

CREATE TABLE almacen
(
    cod_almacen DECIMAL(10,0) PRIMARY KEY, 
    cod_provincia DECIMAL(10,0), 
    descripcion NVARCHAR(50), 
    calle NVARCHAR(50), 
    nro_calle DECIMAL(10,0),
    costo_dia DECIMAL(18,2),
    FOREIGN KEY (cod_provincia) REFERENCES provincia(cod_provincia)
);

CREATE TABLE publicacion
(
    cod_publicacion DECIMAL(10,0) IDENTITY(1,1) PRIMARY KEY,
    cod_vendedor DECIMAL(10,0),
    cod_producto DECIMAL(10,0),
    cod_almacen DECIMAL(10,0),
    descripcion NVARCHAR(50),
    stock INT,
    fecha_inicio DATETIME,
    fecha_fin DATETIME,
    precio DECIMAL(18,2),
    costo_publicacion DECIMAL(18,2),
    porcentaje_venta DECIMAL(5,2),
    FOREIGN KEY (cod_vendedor) REFERENCES vendedor(cod_vendedor),
    FOREIGN KEY (cod_producto) REFERENCES producto(cod_producto),
    FOREIGN KEY (cod_almacen) REFERENCES almacen(cod_almacen)
);

-- / Envíos

CREATE TABLE tipo_envio
(
    cod_tipo DECIMAL(10,0) IDENTITY(1,1) PRIMARY KEY, 
    descripcion NVARCHAR(50)
);

CREATE TABLE envio
(
    cod_envio DECIMAL(10,0) IDENTITY(1,1) PRIMARY KEY, 
    cod_venta DECIMAL(10,0),
    cod_domicilio DECIMAL(10,0),
    cod_tipo DECIMAL(10,0),
    fecha_programada DATE,
    horario_inicio TIME,
    horario_fin TIME,
    fecha_entrega DATE,
    costo_envio DECIMAL(18,2),
    FOREIGN KEY (cod_venta) REFERENCES venta(cod_venta),
    FOREIGN KEY (cod_domicilio) REFERENCES domicilio(cod_domicilio),
    FOREIGN KEY (cod_tipo) REFERENCES tipo_envio(cod_tipo)
);

-- / Ventas y Pagos

CREATE TABLE venta
(
    cod_venta DECIMAL(10,0) IDENTITY(1,1) PRIMARY KEY,
    cod_cliente DECIMAL(10,0),
    cod_detalle_venta DECIMAL(10,0),
    cod_pago DECIMAL(10,0),
    fecha_hora DATETIME,
    total DECIMAL(18,2),
    FOREIGN KEY (cod_cliente) REFERENCES cliente(cod_cliente),
    FOREIGN KEY (cod_detalle_venta) REFERENCES detalle_venta(cod_detalle_venta),
    FOREIGN KEY (cod_pago) REFERENCES pago(cod_pago)
);

CREATE TABLE detalle_venta
(
    cod_detalle_venta DECIMAL(10,0) IDENTITY(1,1) PRIMARY KEY,
    cod_venta DECIMAL(10,0),
    cod_publicacion DECIMAL(10,0),
    precio DECIMAL(18,2),
    subtotal DECIMAL(18,2),
    cantidad DECIMAL(10,0),
    FOREIGN KEY (cod_venta) REFERENCES venta(cod_venta),
    FOREIGN KEY (cod_publicacion) REFERENCES publicacion(cod_publicacion)
);

CREATE TABLE pago
(
    cod_pago DECIMAL(10,0) IDENTITY(1,1) PRIMARY KEY,
    cod_venta DECIMAL(10,0),
    cod_detalle_pago DECIMAL(10,0),
    cod_medio DECIMAL(10,0),
    fecha_pago DATE,
    importe DECIMAL(18,2),
    FOREIGN KEY (cod_venta) REFERENCES venta(cod_venta),
    FOREIGN KEY (cod_detalle_pago) REFERENCES detalle_pago(cod_detalle),
    FOREIGN KEY (cod_medio) REFERENCES medio_de_pago(cod_medio)
);

CREATE TABLE detalle_pago
(
    cod_detalle DECIMAL(10,0) IDENTITY(1,1) PRIMARY KEY,
    cod_pago DECIMAL(10,0),
    nro_tarjeta NVARCHAR(50),
    fecha_vecimiento DATE,
    cuotas DECIMAL(10,0),
    FOREIGN KEY (cod_pago) REFERENCES pago(cod_pago)
);

CREATE TABLE medio_de_pago
(
    cod_medio DECIMAL(10,0) IDENTITY(1,1) PRIMARY KEY,
    cod_tipo_medio_pago DECIMAL(10,0),
    descripcion NVARCHAR(50),
    FOREIGN KEY (cod_tipo_medio_pago) REFERENCES tipo_medio_pago(cod_tipo_medio_pago)
);

CREATE TABLE tipo_medio_pago
(
    cod_tipo_medio_pago DECIMAL(10,0) IDENTITY(1,1) PRIMARY KEY,
    descripcion NVARCHAR(50)
);
