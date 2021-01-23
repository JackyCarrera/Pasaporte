create database pasaporte;
use pasaporte;

/*Diana Mantenimientos*/

create table Consulta_cita(
id int auto_increment,
DPI int primary key not null,
nombre_cliente varchar(20)not null,
apellido_cliente varchar(20) not null,
fecha_cita datetime,
hora_cita time
)Engine=InnoDB;

/*Jacky Mantenimientos*/

create table Informacion_cliente(
nombres varchar(40)not null,
apellidos varchar(40)not null,
dpi_cui int (10),
fecha_cita datetime,
hora time
)Engine=InnoDB;

/*Carlos Mantenimientos*/

create table Renap(
id int (20) primary key auto_increment,
nombre varchar(10),
apellido varchar(10),
dpi varchar(10),
departamento varchar(10),
direccion varchar(10),
estado_civil varchar(10)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table Validacion_De_Personales(
id int (20) primary key auto_increment,
nombre varchar(10),
apellido varchar(10),
dpi varchar(10),
departamento varchar(10),
direccion varchar(10),
estado_civil varchar(10)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*Todos*/

create table Bancos(
id int auto_increment,
numero_recibo int primary key not null,
nombre_cliente varchar(20)not null,
nombre_banco varchar(20) not null,
monto varchar(10)not null,
fecha datetime
)Engine=InnoDB;

/*Rita Mantenimientos*/

CREATE TABLE validacion_pago
(id int(30) auto_increment,
nombre_cliente varchar(20)PRIMARY KEY,
monto_pago varchar(20),
nombre_banco varchar(20),
valido varchar(20),
foreign key (numero_recibo) REFERENCES Bancos(numero_recibo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;



