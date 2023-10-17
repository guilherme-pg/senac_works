-- EQUIPE: Guilherme Vieia de M de M P Guimarães; Ricardo A Irmão; Wellington Lima
USE editora_trio;

-- Crie um script que irá conter todos dos scripts de criação (DDL) das tabelas e views do seu banco de dados (Todos os CREATES TABLE...);
-- Esta no arquivo banco_de_dados_script_editora_TRIO.sql

-- Crie alguns scripts (no mínimo 10) para ALTERAR (DDL) as estruturas das tabelas;

-- 1 Adicionando uma coluna:
ALTER TABLE `table_name`
ADD COLUMN `new_column_name` data_type;

-- 2 Modificando uma coluna:
ALTER TABLE `table_name`
MODIFY COLUMN `column_name` new_data_type;

-- 3 Renomeando uma coluna:
ALTER TABLE `table_name`
CHANGE COLUMN `old_column_name` `new_column_name` data_type;

-- 4 Adicionando um índice:
ALTER TABLE `table_name`
ADD INDEX `index_name` (`column_name`);

-- 5 Adicionando uma restrição:
ALTER TABLE `table_name`
ADD CONSTRAINT `constraint_name` FOREIGN KEY (`column_name`)
REFERENCES `referenced_table` (`referenced_column`);

-- 6 Removendo uma coluna:
ALTER TABLE `table_name`
DROP COLUMN `column_name`;

-- 7 Modifique o nascimentotipo de dados da coluna na autorestabela para ser mais específico:
ALTER TABLE `editora_trio`.`autores`
MODIFY COLUMN `nascimento` DATE;

-- 8 Remova a restrição de chave estrangeira da exemplarestabela:
ALTER TABLE `editora_trio`.`exemplares`
DROP FOREIGN KEY `fk_exemplares_Livros1`;

-- 9 Adicione um índice na publicação coluna da Livrostabela:
ALTER TABLE `editora_trio`.`Livros`
ADD INDEX `idx_publicacao` (`publicacao`);

-- 10 Renomeie a autorcoluna da Livrostabela para nome_autor:
ALTER TABLE `editora_trio`.`Livros`
CHANGE COLUMN `autor` `nome_autor` VARCHAR(125) NOT NULL;



-- Crie um script para DESTRUIR (DDL) todas as tabelas, views, procedimentos, funções e dependências do seu banco de dados;


-- Crie um script que irá realizar todos os INSERTS (DML) nas tabelas do seu banco de dados. 
-- Cada tabela deve ter no MÍNIMO 10 registros, use o bom senso;

-- Inserir dados na tabela `autores` INSERT INTO `mydb`.`autores` (`ID_autor`, `nome`, `biografia`, `nacionalidade`, `obras`, `nascimento`) VALUES
 (1, 'José Silva', 'Escritor brasileiro', 'Brasil', 'O Mistério do Passado', '1980-05-15'), 
(2, 'Maria Santos', 'Escritora brasileira', 'Brasil', 'Amor na Primavera', '1992-09-22'), 
(3, 'Carlos Ferreira', 'Escritor brasileiro', 'Brasil', 'Aventuras na Floresta', '1975-12-08'), 
(4, 'Ana Oliveira', 'Escritora brasileira', 'Brasil', 'O Segredo da Ilha', '1988-04-03'),
 (5, 'Ricardo Alves', 'Escritor brasileiro', 'Brasil', 'Economia Global', '1972-08-17'), 
(6, 'Laura Barbosa', 'Escritora brasileira', 'Brasil', 'Noites de Poesia', '1985-02-28'), 
(7, 'Marcos Ribeiro', 'Escritor brasileiro', 'Brasil', 'A Física do Universo', '1978-09-12'), 
(8, 'Mariana Lima', 'Escritora brasileira', 'Brasil', 'Psicologia Infantil', '1990-04-09'), 
(9, 'Pedro Nunes', 'Escritor brasileiro', 'Brasil', 'Medicina Preventiva', '1963-11-24'), 
(10, 'Lúcia Gomes', 'Escritora brasileira', 'Brasil', 'Poesia Moderna', '1977-06-06');

-- Inserir dados na tabela `Livros` 
INSERT INTO `editora_trio`.`Livros` (`ISBN`, `descricao`, `titulo`, `paginas`, `genero`, `editora`, `autor`, `publicacao`) VALUES 
(1001, 'Um romance emocionante', 'Amor Proibido', 320, 'Romance', 'Editora A', 'José Silva', 2005), 
(1002, 'Uma aventura empolgante', 'A Busca pelo Tesouro', 280, 'Aventura', 'Editora B', 'Carlos Ferreira', 2010), 
(1003, 'Um thriller de arrepiar', 'O Enigma do Assassino', 400, 'Suspense', 'Editora C', 'Maria Santos', 2015), 
(1004, 'Uma história de fantasia', 'O Reino Encantado', 350, 'Fantasia', 'Editora D', 'Ana Oliveira', 2012), 
(1005, 'Uma obra de não-ficção', 'Economia em Transformação', 240, 'Economia', 'Editora E', 'Ricardo Alves', 2018); 



-- Crie scripts (no mínimo 20) para DELETAR ou ATUALIZAR (DML) os dados inseridos nas tabelas.


-- Descreva as perguntas/relatórios (20) importantes que deverão ser implementados pelo seu projeto. 
-- Crie um script que irá realizar todas as suas consultas/perguntas/relatórios (DQL), é obrigatório uso de join e/ou subselect na maioria das consultas. Devem criar no mínimo 20 scripts de SELECT;


-- Crie um script para criar todas as views (DDL) (no mínimo 10) dos principais relatórios do seu projeto.




