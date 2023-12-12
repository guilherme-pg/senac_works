-- Crie um script para testar as functions do item anterior.
SELECT * FROM livros;

-- Testar Function 1
SELECT calcular_total_vendas() AS total_vendas;


-- Testar Function 2
SELECT encontrar_livros_por_autor('Amir Khan') AS total_livros_por_autor;


-- Testar Function 3
SELECT calcular_estoque_total() AS total_estoque;


-- Testar Function 4
SELECT encontrar_livros_com_desconto(0.1) AS total_livros_com_desconto;


-- Testar Function 5
SELECT encontrar_livros_por_palavra_chave('Direito') AS total_livros_por_palavra_chave;


-- Testar Function 6
SELECT calcular_receita_por_genero('História') AS receita_por_genero;
