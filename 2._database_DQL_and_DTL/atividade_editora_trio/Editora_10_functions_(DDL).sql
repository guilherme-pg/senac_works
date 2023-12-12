-- Crie um script para criar todas as functions (DDL), 
-- no mínimo 6 funções coerentes com o seu minimundo.


-- Function 1
DELIMITER //
	CREATE FUNCTION calcular_total_vendas() RETURNS DECIMAL(10, 2) DETERMINISTIC
	BEGIN
		DECLARE total DECIMAL(10, 2);
		SELECT SUM(valor) INTO total FROM Vendas;
		RETURN total;
	END //
DELIMITER ;



-- Function 2
DELIMITER //
	CREATE FUNCTION encontrar_livros_por_autor(p_autor_nome VARCHAR(125)) RETURNS INT READS SQL DATA
	BEGIN
		DECLARE total_livros INT;
		SELECT COUNT(*) INTO total_livros
		FROM livros l
		JOIN livros_has_autores la ON l.ISBN = la.Livros_ISBN
		JOIN autores a ON la.autores_ID = a.ID_autor
		WHERE a.nome = p_autor_nome;
		RETURN total_livros;
	END; //
DELIMITER ;


-- Function 3
DELIMITER //
	CREATE FUNCTION calcular_estoque_total() RETURNS INT DETERMINISTIC
	BEGIN
		DECLARE total_estoque INT;
		SELECT SUM(estoque) INTO total_estoque FROM Livros;
		RETURN total_estoque;
	END //
DELIMITER ;


-- Function 4
DELIMITER //
	CREATE FUNCTION encontrar_livros_com_desconto(p_desconto DECIMAL(4, 2)) RETURNS INT READS SQL DATA
	BEGIN
		DECLARE total_livros_desconto INT;
		SELECT COUNT(*) INTO total_livros_desconto
		FROM livros
		WHERE valor < (SELECT MAX(valor) * (1 - p_desconto) FROM Livros);
		RETURN total_livros_desconto;
	END //
DELIMITER ;


-- Function 5
DELIMITER //
	CREATE FUNCTION encontrar_livros_por_palavra_chave(p_palavra_chave VARCHAR(45)) RETURNS INT READS SQL DATA
	BEGIN
		DECLARE total_livros_palavra_chave INT;
		SELECT COUNT(DISTINCT livros_ISBN) INTO total_livros_palavra_chave
		FROM palavras_chave_has_Livros
		WHERE palavra = p_palavra_chave;
		RETURN total_livros_palavra_chave;
	END //
DELIMITER ;


-- Function 6
DELIMITER //
	CREATE FUNCTION calcular_receita_por_genero(p_genero VARCHAR(125)) RETURNS DECIMAL(10, 2) READS SQL DATA
	BEGIN
		DECLARE receita_genero DECIMAL(10, 2);
		SELECT SUM(vl.valor) INTO receita_genero
		FROM livros l
		JOIN Vendas_has_Livros vl ON l.ISBN = vl.Livros_ISBN
		WHERE l.genero = p_genero;
		RETURN receita_genero;
	END //
DELIMITER ;


-- DROP FUNCTION calcular_total_vendas;
-- DROP FUNCTION encontrar_livros_por_autor;
-- DROP FUNCTION calcular_estoque_total;
-- DROP FUNCTION encontrar_livros_com_desconto;
-- DROP FUNCTION encontrar_livros_por_palavra_chave;
-- DROP FUNCTION calcular_receita_por_genero;
