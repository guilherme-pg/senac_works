-- Crie um script para testar as triggers do item anterior.

USE editora_trio;

INSERT INTO Vendas (ID_venda, pagamento, data_venda, valor, Funcionarios_ID_funcionario)
VALUES (1, 'Cartão', '2023-01-01', 50.00, 1);

-- Inserir um livro para testar a trigger before_delete_livro
INSERT INTO Livros (ISBN, titulo, editora, paginas, ano_publicacao, genero, descricao, valor, estoque)
VALUES ('1234567890', 'Livro Teste', 'Editora Teste', 200, 2022, 'Ficção', 'Descrição do livro teste', 30.00, 10);

-- Inserir um exemplar para associar ao livro inserido
INSERT INTO exemplares (ID_exemplar, localizacao, estado, Livros_ISBN)
VALUES (1, 'Estante A', 'Novo', '1234567890');

-- Inserir uma venda associada ao livro inserido
INSERT INTO Vendas_has_Livros (Vendas_ID_venda, Livros_ISBN, quantidade, valor)
VALUES (1, '1234567890', 1, 30.00);

-- Tentar excluir o livro (deve falhar devido à trigger before_delete_livro)
DELETE FROM Livros WHERE ISBN = '1234567890';

-- Tentar atualizar o ISBN do livro (deve falhar devido à trigger before_update_isbn)
UPDATE Livros SET ISBN = '9876543210' WHERE ISBN = '1234567890';

-- Limpar os dados de teste
DELETE FROM Vendas_has_Livros WHERE Vendas_ID_venda = 1 AND Livros_ISBN = '1234567890';
DELETE FROM Vendas WHERE ID_venda = 1;
DELETE FROM exemplares WHERE ID_exemplar = 1;
DELETE FROM Livros WHERE ISBN = '1234567890';