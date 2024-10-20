
CREATE TABLE provincia
(
    cod_provincia DECIMAL identity(1,1) primary key, 
    nombre NVARCHAR(50)
);

CREATE TABLE localidad
(
    cod_localidad DECIMAL identity(1,1) primary key, 
    cod_provincia DECIMAL, 
    nombre NVARCHAR(50),
    foreign key (cod_provincia) REFERENCES provincia(cod_provincia)
)

CREATE TABLE domicilio
(
    cod_domicilio DECIMAL identity(1,1) primary key,
    cod_provincia DECIMAL, 
    calle NVARCHAR(50),
    numero NVARCHAR(50),
    cod_postal NVARCHAR(50),
    piso NVARCHAR(50) null,
    departamento NVARCHAR(50) null,
    foreign key (cod_provincia) REFERENCES provincia(cod_provincia)
)

CREATE TABLE usuario
(
    cod_usuario DECIMAL primary key, 
    cod_domicilio DECIMAL, 
    nombre NVARCHAR(50), 
    contrasenia NVARCHAR(50), 
    fecha_creacion DATE,
 foreign key (cod_domicilio) REFERENCES domicilio(cod_domicilio)
 )
 
CREATE TABLE cliente
(
    cod_cliente DECIMAL primary key, 
    cod_usuario DECIMAL,
    nombre NVARCHAR(50),
    apellido NVARCHAR(50),
    fecha_nacimiento DATE,
    mail NVARCHAR(50), 
    dni NVARCHAR(50),
    foreign key (cod_usuario) REFERENCES usuario(cod_usuario)
)

CREATE TABLE vendedor
(
    cod_vendedor DECIMAL primary key,
    cod_usuario DECIMAL, 
    razon_social NVARCHAR(50),
    cuit NVARCHAR(50), 
    mail NVARCHAR(50),
    foreign key (cod_usuario) REFERENCES usuario(cod_usuario)
)

CREATE TABLE rubro
(
    cod_rubro DECIMAL primary key,
    descripcion NVARCHAR(50)
)

CREATE TABLE subrubro
(
    cod_subrubro DECIMAL primary key,
    cod_rubro DECIMAL,
    descripcion NVARCHAR(50),
    foreign key (cod_rubro) REFERENCES rubro(cod_rubro)
)

CREATE TABLE marca_producto
(
    cod_marca DECIMAL primary key, 
    descripcion NVARCHAR(50)
)

CREATE TABLE modelo_producto
(
    cod_modelo DECIMAL primary key, 
    descripcion NVARCHAR(50)
)

CREATE TABLE producto
(
    cod_producto DECIMAL primary key,
    cod_subrubro DECIMAL,
    cod_marca DECIMAL,
    cod_modelo DECIMAL,
    descripcion NVARCHAR(50), 
    precio DECIMAL,
    foreign key (cod_subrubro) REFERENCES subrubro(cod_subrubro),
     foreign key (cod_marca) REFERENCES marca_producto(cod_marca),
     foreign key (cod_modelo) REFERENCES modelo_producto(cod_modelo)
)

CREATE TABLE almacen
(
    cod_almacen DECIMAL primary key, 
    cod_provincia DECIMAL, 
    descripcion NVARCHAR(50), 
    calle NVARCHAR(50), 
    nro_calle DECIMAL,
    costo_dia DECIMAL,
    foreign key (cod_provincia) REFERENCES provincia(cod_provincia)
)

create table publicacion
(
    cod_publicacion DECIMAL identity(1,1) primary key,
    cod_vendedor DECIMAL,
    cod_producto DECIMAL,
    cod_almacen DECIMAL,
    descripcion NVARCHAR(50),
    stock integer,
    fecha_inicio datetime,
    fecha_fin datetime,
    precio decimal,
    costo_publicacion decimal,
    porcentaje_venta decimal,
    foreign key (cod_vendedor) REFERENCES vendedor(cod_vendedor),
    foreign key (cod_producto) REFERENCES producto(cod_producto),
    foreign key (cod_almacen) REFERENCES almacen(cod_almacen)
)


CREATE TABLE tipo_detalle_factura
(
    cod_tipo DECIMAL identity(1,1) primary key,
    descripcion NVARCHAR(50)
)

CREATE TABLE detalle_factura
(
    cod_detalle_factura DECIMAL identity(1,1) primary key, 
    cod_publicacion DECIMAL, 
    cod_tipo DECIMAL,
    precio DECIMAL,
    cantidad DECIMAL,
    subtotal DECIMAL,
    foreign key (cod_detalle_factura) REFERENCES detalle_factura(cod_detalle_factura),
    foreign key (cod_publicacion) REFERENCES publicacion(cod_publicacion),
    foreign key (cod_tipo) REFERENCES tipo_detalle_factura(cod_tipo)
)

CREATE TABLE factura
(
    cod_factura DECIMAL identity(1,1) primary key, 
    cod_detalle_factura DECIMAL,
    cod_cliente DECIMAL,
    fecha_factura DATE,
    total DECIMAL,
    foreign key (cod_detalle_factura) REFERENCES detalle_factura(cod_detalle_factura),
    foreign key (cod_cliente) REFERENCES cliente(cod_cliente)
)

CREATE TABLE concepto
(
    cod_concepto DECIMAL identity(1,1) primary key,
    cod_detalle_factura DECIMAL,
    descripcion NVARCHAR(50),
    precio DECIMAL,
    cantidad DECIMAL,
    foreign key (cod_detalle_factura) REFERENCES detalle_factura(cod_detalle_factura)
)

create table tipo_envio
(
    cod_tipo DECIMAL identity(1,1) primary key, 
    descripcion NVARCHAR(50)
)

create table detalle_venta
(
    cod_detalle_venta DECIMAL identity(1,1) primary key,
    cod_publicacion DECIMAL,
    precio decimal,
    subtotal decimal,
    cantidad decimal,
    foreign key (cod_publicacion) REFERENCES publicacion(cod_publicacion)
)

create table tipo_medio_de_pago
(
    cod_tipo_medio_pago DECIMAL identity(1,1) primary key,
    descripcion NVARCHAR(50)
)

create table medio_de_pago
(
    cod_medio DECIMAL identity(1,1) primary key,
    cod_tipo_medio_pago DECIMAL,
    descripcion NVARCHAR(50),
    foreign key (cod_tipo_medio_pago) REFERENCES tipo_medio_de_pago(cod_tipo_medio_pago)
)

create table detalle_pago
(
    cod_detalle DECIMAL identity(1,1) primary key,
    nro_tarjeta NVARCHAR(50),
    fecha_vecimiento DATE,
    cuotas DECIMAL,
)

create table venta
(
    cod_venta DECIMAL identity(1,1) primary key,
    cod_cliente DECIMAL,
    cod_detalle_venta DECIMAL,
    fecha_hora DATETIME,
    total DECIMAL,
    foreign key (cod_cliente) REFERENCES cliente(cod_cliente),
    foreign key (cod_detalle_venta) REFERENCES detalle_venta(cod_detalle_venta),
)

create table pago
(
    cod_pago DECIMAL identity(1,1) primary key,
    cod_venta DECIMAL,
    cod_detalle_pago DECIMAL,
    cod_medio DECIMAL,
    fecha_pago DATE,
    importe decimal,
    foreign key (cod_venta) REFERENCES venta(cod_venta),
    foreign key (cod_detalle_pago) REFERENCES detalle_pago(cod_detalle),
    foreign key (cod_medio) REFERENCES medio_de_pago(cod_medio)
)

create table envio
(
    cod_envio DECIMAL identity(1,1) primary key, 
    cod_venta DECIMAL,
    cod_domicilio DECIMAL,
    cod_tipo DECIMAL,
    fecha_programada DATE,
    horario_inicio TIME,
    horario_fin TIME,
    fecha_entrega DATE,
    costo_envio DECIMAL,
    foreign key (cod_venta) REFERENCES venta(cod_venta),
    foreign key (cod_domicilio) REFERENCES domicilio(cod_domicilio),
    foreign key (cod_tipo) REFERENCES tipo_envio(cod_tipo)
)

