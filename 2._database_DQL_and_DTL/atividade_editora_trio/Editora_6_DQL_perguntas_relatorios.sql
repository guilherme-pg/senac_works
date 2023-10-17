-- Descreva as perguntas/relatórios (20) importantes que deverão ser implementados pelo seu projeto. 
-- Crie um script que irá realizar todas as suas consultas/perguntas/relatórios (DQL), é obrigatório uso de join e/ou subselect na maioria das consultas. 
-- Devem criar no mínimo 20 scripts de SELECT;

-- PERGUNTA/RELATÓRIO 1: Quais os 5 autores mais vendido?
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

-- PERGUNTA/RELATÓRIO 2: Quais os 5 livros mais vendido?
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

-- PERGUNTA/RELATÓRIO 3: Quais as palavras-chave que mais aparecem nos livros?
SELECT 
	pc.palavra, 
    COUNT(pc.palavra) AS total_ocorrencias
FROM palavras_chave pc
JOIN palavras_chave_has_livros pcl ON pc.ID_palavra_chave = pcl.palavras_chave_ID_palavra_chave
JOIN livros ON pcl.Livros_ISBN = livros.ISBN
GROUP BY pc.palavra
ORDER BY total_ocorrencias DESC;

-- PERGUNTA/RELATÓRIO 4: Qual a quantidade de exemplares vendidos de cada livro e o total apurado?
SELECT 
    SUBSTRING(vendas.data_venda, 1, 7) 'mês',
    SUM(vl.quantidade) AS quantidade_total,
    SUM(vl.valor) AS valor_total
FROM
    vendas
        JOIN
    vendas_has_livros vl ON vl.Vendas_ID_venda = vendas.ID_venda
GROUP BY SUBSTRING(vendas.data_venda, 1, 7)
ORDER BY valor_total DESC;

-- PERGUNTA/RELATÓRIO 5: Qual o estado dos exemplares mais vendidos?
SELECT
	exemplares.estado,
    SUM(vl.quantidade) AS quantidade_total, 
    SUM(vl.valor) AS total_aputado
FROM exemplares
JOIN livros ON exemplares.livros_ISBN = livros.ISBN
JOIN vendas_has_livros vl ON livros.ISBN = vl.livros_ISBN
GROUP BY exemplares.estado
ORDER BY quantidade_total DESC;

-- PERGUNTA/RELATÓRIO 6: Quais foram os valores dos descontos dados acima de 10?
SELECT
	vendas.desconto
FROM vendas
WHERE vendas.desconto > 10
ORDER BY vendas.desconto DESC;
    

-- PERGUNTA/RELATÓRIO 7: Qual o dia com o maior média de vendas?
SELECT
	substring(vendas.data_venda, 9, 10) "dia",
    round(AVG(vl.valor), 2) AS valor_total
FROM vendas
JOIN vendas_has_livros vl ON vl.Vendas_ID_venda = vendas.ID_venda
GROUP BY substring(vendas.data_venda, 9, 10)
ORDER BY valor_total DESC;

-- PERGUNTA/RELATÓRIO 8: Quais as 3 área de conhecimento que mais vendem?
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

-- PERGUNTA/RELATÓRIO 9: Quais livros estão atualmente em estoque com menos de 25 unidades disponíveis?
SELECT
	livros.titulo,
    livros.estoque,
    livros.valor
FROM livros
WHERE livros.estoque < 25
ORDER BY livros.estoque;

-- PERGUNTA/RELATÓRIO 10: Qual é o gênero de livro mais vendido pela editora?
SELECT 
	livros.genero,
    SUM(vl.quantidade) AS quantidade_total,
    SUM(vl.valor) AS valor_total
FROM livros
JOIN vendas_has_livros vl ON livros.ISBN = vl.livros_ISBN
GROUP BY livros.genero
ORDER BY quantidade_total DESC;

-- PERGUNTA/RELATÓRIO 11: Quais são os três clientes que mais pedem?
SELECT 
	clt.nome,
    SUM(pedidos.quantidade) AS quantidade_total
FROM clientes clt
INNER JOIN pedidos ON clt.ID_cliente = pedidos.Cliente_ID_cliente
GROUP BY clt.nome
ORDER BY quantidade_total DESC
LIMIT 3;


-- PERGUNTA/RELATÓRIO 12: Qual a média de venda mensal?
SELECT
	ROUND(AVG(vl.valor), 2) AS valor_medio,
	SUBSTRING(vendas.data_venda, 1, 7) 'mês'
FROM vendas
JOIN vendas_has_livros vl ON vendas.ID_venda = vl.Vendas_ID_venda
GROUP BY SUBSTRING(vendas.data_venda, 1, 7)
ORDER BY valor_medio DESC;

-- PERGUNTA/RELATÓRIO 13: Quais os anos dos livros mais vendidos?
SELECT 
	livros.ano_publicacao,
    SUM(vl.quantidade) AS quantidade_total
FROM livros
JOIN vendas_has_livros vl ON livros.ISBN = vl.livros_ISBN
GROUP BY livros.ano_publicacao
ORDER BY quantidade_total DESC;

-- PERGUNTA/RELATÓRIO 14: Qual a quantidade de páginas dos livros mais vendidos?
SELECT 
	livros.titulo,
	livros.paginas,
    SUM(vl.quantidade) AS quantidade_total
FROM livros
JOIN vendas_has_livros vl ON livros.ISBN = vl.livros_ISBN
GROUP BY livros.titulo, livros.paginas
ORDER BY quantidade_total DESC;

-- PERGUNTA/RELATÓRIO 15: Qual o Estado mais frequente na lista de enderecos?
SELECT 
	endereco.estado,
    count(endereco.estado) AS total_por_estato
FROM endereco
GROUP BY endereco.estado
ORDER BY total_por_estato DESC;


-- PERGUNTA/RELATÓRIO 16: Qual dia em que foi pedido a maior quantidade de livros?
SELECT
	pedidos.data_pedido,
    pl.quantidade
FROM pedidos
JOIN pedidos_and_livros pl ON pedidos.ID_pedido = pl.Pedidos_ID_pedido
ORDER BY pl.quantidade DESC;

-- PERGUNTA/RELATÓRIO 17: Entre os 10 livros mais caros qual foi a quantidade vendida de cada um e quanto foi apurado?
SELECT
	livros.titulo,
    SUM(vl.quantidade) AS quantidade_total,
    SUM(vl.valor) AS valor_total
FROM livros
JOIN vendas_has_livros vl ON livros.ISBN = vl.Livros_ISBN
GROUP BY livros.titulo
ORDER BY quantidade_total DESC;

-- PERGUNTA/RELATÓRIO 18: Qual a média de páginas por gênero?
SELECT
	livros.genero,
    round(AVG(livros.paginas), 2) AS media_paginas
FROM livros
GROUP BY livros.genero
ORDER BY media_paginas DESC;

-- PERGUNTA/RELATÓRIO 19: Qual a nacionalidade do autor mais vendido?
SELECT 
	autores.nacionalidade,
    SUM(vl.quantidade) AS quantidade_total
FROM autores
JOIN Livros_has_autores la ON autores.ID_autor = la.autores_ID
JOIN livros ON la.livros_ISBN = livros.ISBN 
JOIN vendas_has_livros vl ON livros.ISBN = vl.Livros_ISBN
GROUP BY autores.nacionalidade
ORDER BY quantidade_total DESC;


-- PERGUNTA/RELATÓRIO 20: Qual o livro mais pedido?
SELECT 
	livros.titulo,
    SUM(pedidos.quantidade) AS quantidade_total
FROM livros
JOIN pedidos_and_livros pl ON pl.Livros_ISBN = livros.ISBN
JOIN pedidos ON pl.Pedidos_ID_pedido = pedidos.ID_pedido 
GROUP BY livros.titulo
ORDER BY quantidade_total DESC;





