create table usuario(
    id_usuario int primary key,
    nombre_ususario varchar(50),
    contraseña varchar(8),
    rol varchar(30)
);

create table vendedor(
    id_vendedor int primary key,
    id_usuario int,
    nombres varchar(50),
    apellidos varchar(50),
    correo varchar(50),
    telefono number(10),
    foreign key (id_usuario) references usuario(id_usuario)
)

create table categoria(
    id_categoria int primary key,
    categoria varchar(50)
);

create table operacion(
    id_operacion int primary key,
    tipo_operacion varchar(50)
);

create table propiedad(
    id_propiedad int primary key,
    id_categoria int,
    id_operacion int,
    id_vendedor int,
    precio decimal(9,2),
    ciudad varchar(50),
    direccion varchar(500),
    imagen varchar(100),
    descripcion varchar(500),
    foreign key (id_categoria) references categoria(id_categoria),
    foreign key (id_operacion) references operacion(id_operacion),
    foreign key (id_vendedor) references vendedor(id_vendedor)
);

create table cliente(
    id_cliente int primary key,
    nombres varchar(50),
    apellidos varchar(50),
    direccion varchar(50),
    telefono varchar(50),
    correo varchar(50)
);

create table cliente_propiedad(
    id_compra int primary key,
    fecha date,
    id_propiedad int,
    id_cliente int,
    foreign key (id_cliente) references cliente(id_cliente),
    foreign key (id_propiedad) references propiedad(id_propiedad)
);