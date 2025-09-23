create database petshop2_frohlich;
use petshop2_frohlich89;

create table usuario (
	usuario_id int primary key not null,
    usuario_nome varchar(127) not null,
    usuario_email varchar(127) not null
);

DELIMITER //

CREATE PROCEDURE inserir_usuarios()
BEGIN
	DECLARE i INT DEFAULT 1;
	WHILE i <= 100 DO
		INSERT INTO usuario (usuario_id, usuario_nome, usuario_email)
		VALUES (i, CONCAT('Usuario ', i), CONCAT('usuario', i, '@email.com'));
		SET i = i + 1;
	END WHILE;
END //

DELIMITER ;

CALL inserir_usuarios();

create table bicho (
	bicho_id int primary key not null,
    bicho_nome varchar(127) not null
);

DELIMITER //

CREATE PROCEDURE inserir_bichos()
BEGIN
	DECLARE i INT DEFAULT 1;
	WHILE i <= 100 DO
		INSERT INTO bicho (bicho_id, bicho_nome)
		VALUES (i, CONCAT('Bicho ', i));
		SET i = i + 1;
	END WHILE;
END //

DELIMITER ;

CALL inserir_bichos();

select * from usuario;
select * from bicho;