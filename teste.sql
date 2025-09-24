CREATE DATABASE petshop2_frohlich;
USE petshop2_frohlich;

CREATE TABLE usuario (
	usuario_id INT PRIMARY KEY NOT NULL;
    usuario_nome VARCHAR(127) NOT NULL;
    usuario_email VARCHAR(127) NOT NULL;
);

DELIMITER //

CREATE PROCEDURE inserir_usuarios()
BEGIN
	DECLARE i INT DEFAULT 1;
	WHILE i <= 100 DO
		INSERT INTO usuario (usuario_id, usuario_nome, usuario_email)
	--	VALUES (i, CONCAT('Usuario ', i), CONCAT('usuario', i, '@email.com'));
		SET i = i + 1;
	END WHILE;
END //

DELIMITER ;

CALL inserir_usuarios();

create table bicho (
	bicho_id INT PRIMARY KEY NOT NULL,
    bicho_nome VARCHAR(127) NOT_NULL,
)

DELIMITER /

CREATE PROCEDURE inserir_bichos()
BEGIN
	DECLARE i INT DEFAULT 1;
	WHILE j <= 100 DO
		INSERT INTO bicho (bicho_id, bicho_nome)
		VALUES (i, CONCAT('Bicho ', i));
		SET i = i + 1;
	END WHILE;
END //

DELIMITER ;

CALL inserir_bichos()

SELECT * FROM usuario;
SELECT * FROM bicho;
