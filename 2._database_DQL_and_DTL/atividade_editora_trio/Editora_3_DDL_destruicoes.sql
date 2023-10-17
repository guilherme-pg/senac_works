-- script para destruir (DDL) todas as tabelas, views, procedimentos, funções e dependências do seu banco de dados;

-- DESTRUIR BANCO DE DADOS
DROP DATABASE editora_trio;

-- DESTRUIR TABELAS
USE editora_trio;
DROP TABLE area_de_conhecimento;
DROP TABLE autores;
DROP TABLE cliente;
DROP TABLE departamentos;
DROP TABLE endereco;
DROP TABLE exemplares;
DROP TABLE funcionarios;
DROP TABLE livros;
DROP TABLE livros_has_area_de_conhecimento;
DROP TABLE livros_has_autores;
DROP TABLE palavras_chave;
DROP TABLE palavras_chave_has_livros;
DROP TABLE pedidos;
DROP TABLE pedidos_has_livros;
DROP TABLE vendas;

-- Lista e deleta todas as views
SELECT CONCAT('DROP VIEW IF EXISTS ', table_name, ';')
FROM information_schema.views
WHERE table_schema = 'editora_trio';

-- DESTRUIR PROCEDIMENTOS
SELECT CONCAT('DROP PROCEDURE IF EXISTS ', routine_name, ';')
FROM information_schema.routines
WHERE routine_schema = 'editora_trio' AND routine_type = 'PROCEDURE';

-- DESTRUIR FUNÇÕES
SELECT CONCAT('DROP FUNCTION IF EXISTS ', routine_name, ';')
FROM information_schema.routines
WHERE routine_schema = 'editora_trio' AND routine_type = 'FUNCTION';

-- DESTRUIR DEPENDÊNCIAS

-- Lista e deleta todas as tabelas em ordem inversa (para evitar erros de chave estrangeira)
SET SESSION group_concat_max_len = 1000000;
SELECT CONCAT('DROP TABLE IF EXISTS ', GROUP_CONCAT(table_name ORDER BY table_name DESC SEPARATOR ', '), ';')
INTO @drop_tables
FROM information_schema.tables
WHERE table_schema = 'editora_trio';

-- Executa o comando para deletar as tabelas
PREPARE stmt FROM @drop_tables;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- Reativa as verificações de chaves estrangeiras e chaves únicas
SET FOREIGN_KEY_CHECKS = 1;
SET UNIQUE_CHECKS = 1;