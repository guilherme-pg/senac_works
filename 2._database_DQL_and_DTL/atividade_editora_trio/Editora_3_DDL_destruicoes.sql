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


-- DESTRUIR PROCEDIMENTOS


-- DESTRUIR FUNÇÕES


-- DESTRUIR DEPENDÊNCIAS
