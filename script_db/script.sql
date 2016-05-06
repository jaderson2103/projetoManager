create database manager_v3;
use manager_v3;

create table conta(
	'id' int(255) not null auto_increment,
	'nome' varchar(80) not null,
	'tipo_documento' int(1) not null,
	'num_documento' varchar(15) not null,
	primary key ('id')
);