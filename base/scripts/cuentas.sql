	create table cuentas (
		cuenta_id bigint primary key,
		cuenta_tip integer,
		cuenta_monto integer,
		cliente_cc bigint);
        
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200001,1,100005,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200002,2,100001,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200003,1,100002,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200004,1,100003,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200005,1,100004,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200006,2,100005,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200007,2,100004,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200008,2,100015,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200009,1,100001,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200010,1,100006,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200011,2,100003,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200012,2,100007,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200013,1,100008,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200014,1,100009,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200015,1,100010,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200016,1,100011,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200017,1,100012,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200018,1,100013,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200019,1,100014,100);
INSERT INTO cuentas (cuenta_id,cuenta_tip,cliente_cc,cuenta_monto) VALUES (200020,1,100015,100);

ALTER TABLE cuentas ADD CONSTRAINT fk_CueCli FOREIGN KEY (cliente_cc) REFERENCES clientes (cliente_cc);
