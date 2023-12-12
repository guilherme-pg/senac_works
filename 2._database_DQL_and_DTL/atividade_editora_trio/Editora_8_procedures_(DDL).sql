-- DELIMITER Crie  um  script  para criar todas  as procedures(DDL), 
-- no mínimo  6  proceduresque  tenha  ao  menos 4comandoSQL  distintosdentro de cada procedure.
USE editora_trio;
-- SET SQL_SAFE_UPDATES = 0;


-- Procedure 1
DELIMITER //
CREATE PROCEDURE pag_livros_mais_vendidos()
	BEGIN
    -- Quantidade de páginas dos livros mais vendidos
		SELECT 
			livros.titulo,
			livros.paginas,
			SUM(vl.quantidade) AS quantidade_total
		FROM livros
		JOIN vendas_has_livros vl ON livros.ISBN = vl.livros_ISBN
		GROUP BY livros.titulo, livros.paginas
		ORDER BY quantidade_total DESC;
	END //
DELIMITER ;


-- Procedure 2
DELIMITER //
CREATE PROCEDURE ano_livros_mais_vendidos()
	BEGIN
		-- Anos dos livros mais vendidos
		SELECT 
			livros.ano_publicacao,
			SUM(vl.quantidade) AS quantidade_total
		FROM livros
		JOIN vendas_has_livros vl ON livros.ISBN = vl.livros_ISBN
		GROUP BY livros.ano_publicacao
		ORDER BY quantidade_total DESC;
	END //
DELIMITER ;


-- Procedure 3
DELIMITER //
CREATE PROCEDURE dar_desconto_livros_menos_vendidos()
	BEGIN
		-- 	aplicar desconto nos 5 livros menos vendido
		CREATE TEMPORARY TABLE lowestSalesBooks (ISBN VARCHAR(20));

		INSERT INTO lowestSalesBooks (ISBN)
		SELECT livros.ISBN
		FROM livros
		JOIN vendas_has_livros vl ON livros.ISBN = vl.Livros_ISBN
		JOIN vendas ON vl.Vendas_ID_venda = vendas.ID_venda
		GROUP BY livros.ISBN
		ORDER BY SUM(vl.valor) ASC
		LIMIT 5;

		UPDATE livros
		SET valor = valor * 0.95 -- 5% desconto
		WHERE ISBN IN (SELECT ISBN FROM lowestSalesBooks);

		DROP TEMPORARY TABLE IF EXISTS lowestSalesBooks;
	END //
DELIMITER ;


-- Procedure 4
DELIMITER //
CREATE PROCEDURE livros_proximos_de_esgotar()
	BEGIN
		-- Livros atualmente em estoque com menos de 25 unidades disponíveis
		SELECT
			livros.titulo,
			livros.estoque,
			livros.valor
		FROM livros
		WHERE livros.estoque < 25
		ORDER BY livros.estoque;
	END //
DELIMITER ;


-- Procedure 5
DELIMITER //
CREATE PROCEDURE dar_desconto_por_genero(IN p_genero VARCHAR(255), IN p_desconto DECIMAL(5,2))
	BEGIN
		-- Aplicar desconto a um gênero específico
		UPDATE livros
		SET valor = valor * (1 - p_desconto)
		WHERE genero = p_genero;

		-- Mostrar os resultados após a alteração
		SELECT titulo, genero, valor
		FROM livros
		WHERE genero = p_genero;
	END //
DELIMITER ;


-- Procedure 6
DELIMITER //
CREATE PROCEDURE livro_mais_pedido()
	BEGIN
		-- livro mais pedido
		SELECT 
			livros.titulo,
			SUM(pedidos.quantidade) AS quantidade_total
		FROM livros
		JOIN pedidos_and_livros pl ON pl.Livros_ISBN = livros.ISBN
		JOIN pedidos ON pl.Pedidos_ID_pedido = pedidos.ID_pedido 
		GROUP BY livros.titulo
		ORDER BY quantidade_total DESC;
	END //
DELIMITER ;

-- DROP PROCEDURES IF NECESSÁRIO
-- DROP PROCEDURE IF EXISTS pag_livros_mais_vendidos;
-- DROP PROCEDURE IF EXISTS dar_desconto_por_genero;
