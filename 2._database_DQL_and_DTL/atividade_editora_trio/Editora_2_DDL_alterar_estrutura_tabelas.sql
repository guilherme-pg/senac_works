-- Scripts (no mínimo 10) para alterar (DDL) as estruturas das tabelas;
USE editora_trio;

-- ALTERAÇÃO 1: mudar nome de coluna
ALTER TABLE autores
CHANGE COLUMN obras producao_literaria VARCHAR(125);

ALTER TABLE autores
CHANGE COLUMN producao_literaria obras VARCHAR(125);


-- ALTERAÇÃO 2: adicionar coluna data_nascimento para tabela clientes:
ALTER TABLE clientes
ADD COLUMN data_nascimento DATE;


-- ALTERAÇÃO 3: mudar o nome de uma tabela:
RENAME TABLE pedidos_has_livros TO pedidos_and_livros;


-- ALTERAÇÃO 4: Modificar o tipo de uma coluna:
ALTER TABLE clientes
MODIFY COLUMN telefone VARCHAR(45);


-- ALTERAÇÃO 5: Modificar o tamanho de uma coluna VARCHAR:
ALTER TABLE area_de_conhecimento
MODIFY COLUMN descricao tinytext;


-- ALTERAÇÃO 6: Modificar o tipo de uma coluna:
ALTER TABLE vendas
MODIFY COLUMN data_venda DATETIME;


-- ALTERAÇÃO 7: alterar a ordem das colunas:
ALTER TABLE autores
MODIFY COLUMN nacionalidade VARCHAR(45) AFTER nome;


-- ALTERAÇÃO 8: excluir coluna de uma tabela:
ALTER TABLE livros
DROP COLUMN editora;

ALTER TABLE livros
ADD COLUMN editora VARCHAR(125);


-- ALTERAÇÃO 9: modificar precisão de uma coluna decimal de (4,2) para (5, 2):
ALTER TABLE vendas
MODIFY COLUMN desconto DECIMAL(5,2);


-- ALTERAÇÃO 10: modificar a configuração para zero fill de uma coluna:
ALTER TABLE livros
MODIFY COLUMN estoque INT ZEROFILL;


