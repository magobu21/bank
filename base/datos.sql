	create database academia;

	create schema universidad;
	
	set search_path to universidad;

	create table clientes
	(
		cedula bigint,
		nombre varchar(50),
		telefono integer;

	create table asignaturas (
		cod_a smallint,
		nom_a varchar(50),
		ih smallint,
		cred smallint);
		
	create table autores (
		id_a smallint,
		nom_a varchar(50));

	create table carreras (
		cod_carr smallint,
		nom_carr varchar(50));

	create table ejemplares (
		num_ej smallint,
		isbn integer);
		
	create table escribe (
		isbn integer,
		id_a smallint);

	create table imparte (
		id_p smallint,
		cod_a smallint,
		grupo smallint,
		horario varchar(50));

	create table inscribe (
		cod_e bigint,
		id_p smallint,
		cod_a smallint,
		grupo smallint,
		n1 decimal,
		n2 decimal,
		n3 decimal);
	
	create table libros (
		isbn integer,
		titulo varchar(50),
		edicion smallint);

	create table presta (
		cod_e bigint,
		isbn integer,
		num_ej smallint,
		fecha_p timestamp,
		fecha_d timestamp);
			
	create table profesores (
		id_p smallint,
		nom_p varchar(50),
		Profesion varchar(50),
		tel_p integer);
			
	create table referencia (
		cod_a smallint,
		isbn integer);

	COPY estudiantes FROM 'D:\BASEDATOS\Estudiantes.csv' csv DELIMITER ';' HEADER;
	COPY Autores FROM 'D:\BASEDATOS\Autores.csv' csv DELIMITER ';' HEADER;
	COPY Carreras FROM 'D:\BASEDATOS\Carreras.csv' csv DELIMITER ';' HEADER;
	COPY Ejemplares FROM 'D:\BASEDATOS\Ejemplares.csv' csv DELIMITER ';' HEADER;
	COPY Escribe FROM 'D:\BASEDATOS\Escribe.csv' csv DELIMITER ';' HEADER;
	COPY Imparte FROM 'D:\BASEDATOS\Imparte.csv' csv DELIMITER ';' HEADER;
	COPY Inscribe FROM 'D:\BASEDATOS\Inscribe.csv' csv DELIMITER ';' HEADER;
	COPY Libros FROM 'D:\BASEDATOS\Libros.csv' csv DELIMITER ';' HEADER;
	COPY Presta FROM 'D:\BASEDATOS\Presta.csv' csv DELIMITER ';' HEADER;
	COPY Profesores FROM 'D:\BASEDATOS\Profesores.csv' csv DELIMITER ';' HEADER;
	COPY Referencia FROM 'D:\BASEDATOS\Referencia.csv' csv DELIMITER ';' HEADER;
	COPY asignaturas FROM 'D:\BASEDATOS\Asignaturas.csv' csv DELIMITER ';' HEADER;