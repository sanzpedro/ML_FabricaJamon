create database Factoria_Jamones;
use Factoria_Jamones;

CREATE TABLE `Raza` (
  `id_raza` integer auto_increment,
  `desc_raza` varchar(100),
  PRIMARY KEY (`id_raza`)
);

CREATE TABLE `Matadero` (
  `id_matadero` integer,
  PRIMARY KEY (`id_matadero`)
);

CREATE TABLE `Alimentacion` (
  `id_id_alimentacion` integer auto_increment,
  `desc_alimentacion` varchar(100),
  PRIMARY KEY (`id_id_alimentacion`)
);

CREATE TABLE `Tipo` (
  `id_tipo` integer auto_increment,
  `desc_tipo` varchar(100),
  PRIMARY KEY (`id_tipo`)
);

CREATE TABLE `Articulo_Final` (
  `id_articulo` integer auto_increment,
  `desc_articulo` varchar(100),
  PRIMARY KEY (`id_articulo`)
);

CREATE TABLE `Partida` (
  `id_partida` integer,
  `id_raza` integer,
  `añada` integer,
  `acido_oleico` float,
  `acido_palmitico` float,
  `acido_estearico` float,
  `acido_linoleico` float,
  `peso_varios` float,
  `peso_vientres` float,
  `peso_cerdos` float,
  `no_animales` integer,
  `nacimiento` date,
  `meses_sacrificio` integer,
  `id_matadero` integer,
  `id_alimentacion` integer,
  `fecha_entrada` date,
  PRIMARY KEY (`id_partida`),
  FOREIGN KEY (`id_raza`) REFERENCES `Raza`(`id_raza`),
  FOREIGN KEY (`id_alimentacion`) REFERENCES `Alimentacion`(`id_id_alimentacion`),
  FOREIGN KEY (`id_matadero`) REFERENCES `Matadero`(`id_matadero`)
);

CREATE TABLE `Pieza` (
  `id_pieza` integer,
  `id_tipo` integer,
  `id_partida` integer,
  `peso_salida` float,
  `fecha_salida` date,
  `id_articulo` integer,
  PRIMARY KEY (`id_pieza`),
  FOREIGN KEY (`id_tipo`) REFERENCES `Tipo`(`id_tipo`),
  FOREIGN KEY (`id_articulo`) REFERENCES `Articulo_Final`(`id_articulo`),
  FOREIGN KEY (`id_partida`) REFERENCES `Partida`(`id_partida`)
);
