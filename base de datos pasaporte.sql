create database pasaporte;
use pasaporte;

create table ConstanciadePago(
id int auto_increment,
numero_recibo int primary key not null,
nombre_cliente varchar(20)not null,
nombre_banco varchar(20) not null,
fecha datetime
)Engine=InnoDB;
create table datosdepago(
id int auto_increment,
monto_a_pagar varchar(10)not null,
fecha datetime,
FOREIGN KEY (numero_recibo) REFERENCES ConstanciadePago(numero_recibo)
)Engine=InnoDB;

create table datos_cita(
FOREIGN KEY (numero_recibo) REFERENCES ConstanciadePago(numero_recibo),
nombres varchar(40)not null,
apellidos varchar(40)not null,
dpi_cui int (10),
fecha_cita datetime
)Engine=InnoDB;
create table Informacion_cliente(
FOREIGN KEY (numero_recibo) REFERENCES ConstanciadePago(numero_recibo),
nombres varchar(40)not null,
apellidos varchar(40)not null,
dpi_cui int (10),
fecha datetime
)Engine=InnoDB;

