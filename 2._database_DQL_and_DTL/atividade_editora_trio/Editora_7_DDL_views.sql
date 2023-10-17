-- Scripts para criar todas as views (DDL) (no mínimo 10) dos principais relatórios do seu projeto.

-- VIEW 1
create view livros_mais_pedido as
	SELECT 
		livros.titulo,
		SUM(pedidos.quantidade) AS quantidade_total
	FROM livros
	JOIN pedidos_and_livros pl ON pl.Livros_ISBN = livros.ISBN
	JOIN pedidos ON pl.Pedidos_ID_pedido = pedidos.ID_pedido 
	GROUP BY livros.titulo
	ORDER BY quantidade_total DESC;

-- VIEW 2
create view quant_pags_livro_mais_vend as
	SELECT 
		livros.titulo,
		livros.paginas,
		SUM(vl.quantidade) AS quantidade_total
	FROM livros
	JOIN vendas_has_livros vl ON livros.ISBN = vl.livros_ISBN
	GROUP BY livros.titulo, livros.paginas
	ORDER BY quantidade_total DESC;

-- VIEW 3
create view livros_mais_vendidos_por_ano as
	SELECT 
		livros.ano_publicacao,
		SUM(vl.quantidade) AS quantidade_total
	FROM livros
	JOIN vendas_has_livros vl ON livros.ISBN = vl.livros_ISBN
	GROUP BY livros.ano_publicacao
	ORDER BY quantidade_total DESC;

-- VIEW 4
create view media_venda_mensal as
	SELECT
		ROUND(AVG(vl.valor), 2) AS valor_medio,
		SUBSTRING(vendas.data_venda, 1, 7) 'mês'
	FROM vendas
	JOIN vendas_has_livros vl ON vendas.ID_venda = vl.Vendas_ID_venda
	GROUP BY SUBSTRING(vendas.data_venda, 1, 7)
	ORDER BY valor_medio DESC;

-- VIEW 5
create view clientes_gastadores as
	SELECT 
		clt.nome,
		SUM(pedidos.quantidade) AS quantidade_total
	FROM clientes clt
	INNER JOIN pedidos ON clt.ID_cliente = pedidos.Cliente_ID_cliente
	GROUP BY clt.nome
	ORDER BY quantidade_total DESC
	LIMIT 3;

-- VIEW 6
create view genero_mais_vendido as
	SELECT 
		livros.genero,
		SUM(vl.quantidade) AS quantidade_total,
		SUM(vl.valor) AS valor_total
	FROM livros
	JOIN vendas_has_livros vl ON livros.ISBN = vl.livros_ISBN
	GROUP BY livros.genero
	ORDER BY quantidade_total DESC;

-- VIEW 7
create view livros_proximos_de_esgotar as
	SELECT
		livros.titulo,
		livros.estoque,
		livros.valor
	FROM livros
	WHERE livros.estoque < 25
	ORDER BY livros.estoque;


-- VIEW 8
create view areas_conhecimento_mais_vendidas as
	SELECT 
		ac.area, 
		SUM(vl.valor) AS total_vendido
	FROM area_de_conhecimento ac
	JOIN Livros_has_area_de_conhecimento lac ON ac.ID_area_de_conhecimento = lac.area_de_conhecimento_ID
	JOIN livros ON lac.Livros_ISBN = livros.ISBN
	JOIN vendas_has_livros vl ON livros.ISBN = vl.Livros_ISBN
	JOIN vendas ON vl.Vendas_ID_venda = vendas.ID_venda
	GROUP BY ac.area
	ORDER BY total_vendido DESC
	LIMIT 3;

-- VIEW 9
create view apuracao_total_mes as
	SELECT 
		SUBSTRING(vendas.data_venda, 1, 7) 'mês',
		SUM(vl.quantidade) AS quantidade_total,
		SUM(vl.valor) AS valor_total
	FROM vendas
	JOIN vendas_has_livros vl ON vl.Vendas_ID_venda = vendas.ID_venda
	GROUP BY SUBSTRING(vendas.data_venda, 1, 7)
	ORDER BY valor_total DESC;

-- VIEW 10
create view autores_mais_vendidos as
	SELECT 
		autores.nome, 
		vendas.valor,
		SUM(vendas.valor) AS total_vendido
	FROM autores
	JOIN Livros_has_autores la ON autores.ID_autor = la.autores_ID
	JOIN livros ON la.Livros_ISBN = livros.ISBN
	JOIN vendas_has_livros vl ON livros.ISBN = vl.Livros_ISBN
	JOIN vendas ON vl.Vendas_ID_venda = vendas.ID_venda
	GROUP BY autores.nome, vendas.valor
	ORDER BY vendas.valor DESC
	LIMIT 5;

-- VIEW 11
create view livros_mais_vendidos as
	SELECT 
		livros.titulo, 
		vl.quantidade,
		SUM(vl.valor) AS valor_total
	FROM livros
	JOIN vendas_has_livros vl ON livros.ISBN = vl.Livros_ISBN
	JOIN vendas ON vl.Vendas_ID_venda = vendas.ID_venda
	GROUP BY livros.titulo, vl.quantidade
	ORDER BY valor_total DESC
	LIMIT 5;
