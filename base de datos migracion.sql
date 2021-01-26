create database pasaporte;
use pasaporte;
/*Mantenimientos*/
create table Informacion_cliente(
nombres varchar(40)not null,
apellidos varchar(40)not null,
dpi_cui int (10),
fecha_cita datetime,
hora varchar(10)
)Engine=InnoDB DEFAULT CHARSET=utf8;

/*Mantenimientos*/

create table Renap(
id int (20) primary key auto_increment,
nombre varchar(10),
apellido varchar(10),
dpi varchar(10),
departamento varchar(10),
direccion varchar(10),
estado_civil varchar(10)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table Bancos(
numero_recibo int primary key,
numero_cuenta varchar(20) not null,
monto varchar(10)not null,
fecha datetime
)Engine=InnoDB DEFAULT CHARSET=utf8;




