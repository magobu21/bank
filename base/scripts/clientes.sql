	create table clientes (
		cliente_cc bigint primary key,
		cliente_nom varchar(50),
		cliente_ape varchar(50),
		cliente_tel bigint,
        cliente_user varchar(50),
        cliente_pass varchar(50)
        );

INSERT INTO clientes (cliente_cc,cliente_nom,cliente_ape,cliente_tel, cliente user, cliente_pass) VALUES (100002,"luis","lopez",3143059034, luilop, abc123);
INSERT INTO clientes (cliente_cc,cliente_nom,cliente_ape,cliente_tel, cliente user, cliente_pass) VALUES (100003,"juan","rodriguez",3143059035, juarod, abc123);
INSERT INTO clientes (cliente_cc,cliente_nom,cliente_ape,cliente_tel, cliente user, cliente_pass) VALUES (100004,"hector","hernandez",3143059036, hecher, abc123);
INSERT INTO clientes (cliente_cc,cliente_nom,cliente_ape,cliente_tel, cliente user, cliente_pass) VALUES (100005,"paco","gonzalez",3143059037, pacgon, abc123);
INSERT INTO clientes (cliente_cc,cliente_nom,cliente_ape,cliente_tel, cliente user, cliente_pass) VALUES (100006,"john","rojas",3143059038johroj, abc123);
INSERT INTO clientes (cliente_cc,cliente_nom,cliente_ape,cliente_tel, cliente user, cliente_pass) VALUES (100007,"luisa","perez",3143059039luiper, abc123);
INSERT INTO clientes (cliente_cc,cliente_nom,cliente_ape,cliente_tel, cliente user, cliente_pass) VALUES (100008,"juana","suarez",3143059040juasua, abc123);
INSERT INTO clientes (cliente_cc,cliente_nom,cliente_ape,cliente_tel, cliente user, cliente_pass) VALUES (100009,"gloria","henriquez",3143059041glohen, abc123);
INSERT INTO clientes (cliente_cc,cliente_nom,cliente_ape,cliente_tel, cliente user, cliente_pass) VALUES (100010,"diana","martinez",3143059042dianmar, abc123);
INSERT INTO clientes (cliente_cc,cliente_nom,cliente_ape,cliente_tel, cliente user, cliente_pass) VALUES (100011,"ernesto","valderrama",3143059043ernval, abc123);
INSERT INTO clientes (cliente_cc,cliente_nom,cliente_ape,cliente_tel, cliente user, cliente_pass) VALUES (100012,"angela","saenz",3143059044angsan, abc123);
INSERT INTO clientes (cliente_cc,cliente_nom,cliente_ape,cliente_tel, cliente user, cliente_pass) VALUES (100013,"claudia","barrera",3143059045clabar, abc123);
INSERT INTO clientes (cliente_cc,cliente_nom,cliente_ape,cliente_tel, cliente user, cliente_pass) VALUES (100014,"lina","farfan",3143059046linfar, abc123);
INSERT INTO clientes (cliente_cc,cliente_nom,cliente_ape,cliente_tel, cliente user, cliente_pass) VALUES (100015,"sandra","velandia",3143059047, sanvel, abc123);

INSERT INTO transacciones (tx_monto) VALUES (1)