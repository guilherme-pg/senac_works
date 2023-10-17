-- Scripts (no mínimo 20) para deletar ou atualizar (DML) os dados inseridos nas tabelas.
USE editora_trio;

-- ATUALIZAR 1
UPDATE Livros
SET titulo = 'I.A., Vontade e Responsabilidade'
WHERE ISBN = '9781234567019';

-- ATUALIZAR 2
UPDATE autores
SET nome = 'Davy Jones'
WHERE ID_autor = 0431;

-- ATUALIZAR 3
UPDATE area_de_conhecimento
SET descricao = 'Gênero literário com elementos fictícios que pode ser sobre crimes e investigações.'
WHERE ID_area_de_conhecimento = 0312;

-- ATUALIZAR 4
UPDATE departamentos
SET departamento = 'Pesquisas'
WHERE ID_departamento = 0613;

-- ATUALIZAR 5
UPDATE Clientes 
SET email = 'fernandinho_johnson@email.com' 
WHERE ID_cliente = 0809;

-- ATUALIZAR 6
UPDATE Area_de_conhecimento 
SET descricao = 'Área de estudo sobre teoria do direito, legislação e sistemas jurídicos.' 
WHERE ID_area_de_conhecimento = 0300;

-- ATUALIZAR 7
UPDATE Area_de_conhecimento 
SET descricao = 'Área de estudo sobre a produção, distribuição e o consumo de bens e serviços.' 
WHERE ID_area_de_conhecimento = 0308;

-- ATUALIZAR 8
UPDATE Endereco
SET rua = 'Rua Gervásio Pires'
WHERE ID_endereco = 1014;

-- ATUALIZAR 9
UPDATE Endereco
SET rua = 'Rua da Harmonia'
WHERE ID_endereco = 1002;

-- ATUALIZAR 10
UPDATE Area_de_conhecimento
SET descricao = 'Reflexões para uma pessoa conseguir resolver seus próprios problemas.'
WHERE ID_area_de_conhecimento = 0317;

-- ATUALIZAR 11
UPDATE Area_de_conhecimento
SET descricao = 'Estudo de estruturas e algoritmos de computadores'
WHERE ID_area_de_conhecimento = 0316;

-- ATUALIZAR 12
UPDATE exemplares
SET estado = 'Usado'
WHERE ID_exemplar = 0513;

-- DELETAR 1
DELETE FROM Clientes WHERE ID_cliente = '0825';

-- DELETAR 2
DELETE FROM Livros WHERE ISBN = '9781234567008';

-- DELETAR 3
DELETE FROM exemplares WHERE ID_exemplar = '0513';

-- DELETAR 4
DELETE FROM Area_de_conhecimento WHERE ID_area_de_conhecimento = '0316';

-- DELETAR 5
DELETE FROM Area_de_conhecimento WHERE ID_area_de_conhecimento = '0317';

-- DELETAR 6
DELETE FROM exemplares WHERE ID_exemplar = '0530';

-- DELETAR 7
DELETE FROM Area_de_conhecimento WHERE ID_area_de_conhecimento = '0315';

-- DELETAR 8
DELETE FROM Funcionarios WHERE ID_funcionario = '0719';

