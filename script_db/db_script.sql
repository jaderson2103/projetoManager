create database manager_v3;
use manager_v3;

create table `conta` (
	`id` int(255) not null auto_increment,
	`nome` varchar(80) not null,
	`tipo_documento` int(1) not null,
	`num_documento` varchar(15) not null,
	primary key (`id`)
);

create table `contato` (
	`id` int(255) not null auto_increment,
	`nome` varchar(80) not null,
    `sobrenome` varchar(80) not null,
    `telefone` varchar(11) not null,
    `email` varchar(80) not null,
    primary key(`id`)
);

create table `tipo_registro` (
	`id` int(255) not null auto_increment,
	`nome` varchar(80) not null,
    primary key(`id`)
);

create table `endereco` (
	`id` int(255) not null auto_increment,
    `logradouro` varchar(80) not null,
    `numero` varchar(10) not null,
    `complemento` varchar(80) not null,
    `bairro` varchar(80) not null,
    `cidade` varchar(80) not null,
    `estado` varchar(2) not null,
    `cep` varchar(8) not null,
    primary key(`id`)
);

create table `produto` (
	`id` int(255) not null auto_increment,
    `nome` varchar(80) not null,
    primary key(`id`)
);

create table `catalogo` (
	`id` int(255) not null auto_increment,
    `nome` varchar(80) not null,
    `preco` decimal(10,2) not null,
    `quantidade` int(10) not null,
    primary key(`id`)
);

-- Adicionando a coluna 'contato_id' na tabela conta
alter table `conta` add column `contato_id` int(255);
-- Tornando a coluna 'contato_id' na tabela conta em chave estrangeira da coluna contato campo id
alter table `conta` add constraint `fk_contato_id` foreign key (`contato_id`) references `contato` (`id`);


alter table `conta` add column `endereco_id` int(255);
alter table `conta` add constraint `fk_endereco_id` foreign key (`endereco_id`) references `endereco` (`id`);

alter table `conta` add column `tipo_registro_id` int(255);
alter table `conta` add constraint `fk_tipo_registro_id` foreign key (`tipo_registro_id`) references `tipo_registro` (`id`);

alter table `catalogo` add column `produto_id` int(255);
alter table `catalogo` add constraint `fk_produto_id` foreign key (`produto_id`) references `produto` (`id`);

create table `pedido` (
	`id` int(255) not null auto_increment,
    `nome` varchar(80) not null,
    `produto_id` int(255) not null,
    `conta_id` int(255) not null,
    `quantidade` int(10) not null,
    `endereco_id` int(255) not null,
    primary key(`id`)
);

alter table `pedido` add constraint `fk_produto_pedido_id` foreign key (`produto_id`) references `produto` (`id`);
alter table `pedido` add constraint `fk_conta_id` foreign key (`conta_id`) references `conta` (`id`);
alter table `pedido` add constraint `fk_endereco_pedido_id` foreign key (`endereco_id`) references `endereco` (`id`);

alter table `pedido` add column `vendedor_id` int(255);
alter table `pedido` add constraint `fk_vendedor_id` foreign key (`vendedor_id`) references `conta` (`id`);


create table `usuario` (
	`id` int(255) not null auto_increment,
    `nome` varchar(80) not null,
    `nm_usuario` varchar(80) not null,
    `password` varchar(80) not null,
    primary key(`id`)
);



