/*eliminar nuestra base de datos si tiene el mismo nombre*/
drop schema if exists `fes_aragon`;

/*crear un base de datos*/
create schema if not exists `fes_aragon` default character set utf8 collate utf8_spanish2_ci;

/*selecionar la base de datos*/
USE `fes_aragon`;

/*CREAR UN TABLA*/

CREATE TABLE `ALUMNO`(
    `nombre_alumno` text not null,
    `carrera` text not null,
    `no_cuenta` int (10) not null,
    `direccion` text not null,
    `telefono` varchar (8) not null,
    `email` text not null,
    `password` varchar (8) not null,
    `fecha_registro` datetime not null default current_timestamp,
    `permisos` int (11) not null default '1'
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*agergar un registro*/

insert into `ALUMNO`( `nombre_alumno`, `carrera`, `no_cuenta`, `direccion`, `telefono`, `email`, `password`, `fecha_registro`)values
('aaron Velasco', 'ico', '413112576', 'gloria 15', '12354894', 'aaronvelascovea@outlook.com', '13515', '2021-03-09 12:49:56');



/*definir nuestra PK*/
alter table 'alumno'
    add primary key (`no_cuenta`);
commit;
/*los cambios son de manera permanente*/
