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

-- PERGUNTA/RELATÓRIO 3: Quais os 3 funcionário que mais venderam e o total de vendas de cada um?


-- PERGUNTA/RELATÓRIO 4: Qual a quantidade de exemplares vendidos de cada livro e o total apurado?
SELECT 
	substring(vendas.data_venda, 1, 7) "mês",
    SUM(vl.quantidade) AS quantidade_total,
    SUM(vl.valor) AS valor_total
FROM vendas
JOIN vendas_has_livros vl ON vl.Vendas_ID_venda = vendas.ID_venda
GROUP BY substring(vendas.data_venda, 1, 7)
ORDER BY valor_total DESC;

-- PERGUNTA/RELATÓRIO 5: Qual é a média de vendas por mês?


-- PERGUNTA/RELATÓRIO 6: Qual é a porcentagem de desconto médio oferecida aos clientes?


-- PERGUNTA/RELATÓRIO 7: Qual o dia com o maior média de vendas?
SELECT 
	substring(vendas.data_venda, 9, 10) "dia",
    SUM(vl.quantidade) AS quantidade_total,
    SUM(vl.valor) AS valor_total
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

-- PERGUNTA/RELATÓRIO 9: Quais livros estão atualmente em estoque com menos de 10 unidades disponíveis?


-- PERGUNTA/RELATÓRIO 10: Qual é o gênero de livro mais vendido pela editora?


-- PERGUNTA/RELATÓRIO 11: Quais são os três clientes que mais compram?


-- PERGUNTA/RELATÓRIO 12: Qual a média de venda mensal?


-- PERGUNTA/RELATÓRIO 13: Quais os anos dos livros mais vendidos?


-- PERGUNTA/RELATÓRIO 14: Qual a quantidade de páginas dos livros mais vendidos?


-- PERGUNTA/RELATÓRIO 15: Qual o Estado que tem mais clientes e qual o valor de vendas por Estado?


-- PERGUNTA/RELATÓRIO 16: Qual a média do valor para cada forma de pagamento?


-- PERGUNTA/RELATÓRIO 17: Entre os 10 livros mais caros qual foi a quantidade vendida de cada um e quanto foi apurado?

-- PERGUNTA/RELATÓRIO 18: Qual a média de páginas por gênero?


-- PERGUNTA/RELATÓRIO 19: Qual a nacionalidade do autor mais vendido?


-- PERGUNTA/RELATÓRIO 20: Qual o ano de publicação dos livros mais vendidos?






