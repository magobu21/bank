	
	create table clientes (
		cliente_cc bigint primary key,
		cliente_nom varchar(50),
		cliente_ape varchar(50),
		cliente_tel integer);
	
	create table cuentas (
		cuenta_id bigint primary key,
		cuenta_tip integer,
		cuenta_monto integer,
		cliente_cc bigint);
	
	ALTER TABLE cuentas ADD CONSTRAINT fk_CueCli FOREIGN KEY (cliente_cc) REFERENCES clientes (cliente_cc);
	
	create table transacciones (
		tx_id BIGINT AUTO_INCREMENT PRIMARY KEY,
		tx_tipo integer,
		tx_fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
		tx_monto bigint,
		cliente_cc bigint);

	ALTER TABLE transacciones ADD CONSTRAINT fk_TraCli FOREIGN KEY (cliente_cc) REFERENCES clientes (cliente_cc);
	
