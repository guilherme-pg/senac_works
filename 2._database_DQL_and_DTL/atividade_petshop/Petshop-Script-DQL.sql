USE petshop;


-- 1. Lista dos empregados admitidos entre 2019-01-01 e 2022-03-31
-- comm as colunas: nome, cpf, data admissão, salário, departamento, telefone
-- ordenado por admissão decrescente
SELECT emp.nome, emp.cpf, emp.dataAdm, emp.salario, dep.nome, tel.numero
FROM empregado emp
JOIN departamento dep ON emp.Departamento_idDepartamento = dep.idDepartamento
JOIN telefone tel ON dep.idDepartamento = tel.Departamento_idDepartamento
WHERE emp.dataAdm BETWEEN '2019-01-01' AND '2022-03-31'
ORDER BY emp.dataAdm DESC;

-- 2. lista dos empregados que ganham menos que a média salarial dos funcionários do Petshop
-- trazendo colunas: nome empregado, cpf empregado, data admissão, salário, departamento, número telefone
-- ordenado por nome do empregado
SELECT emp.nome, emp.cpf, emp.dataAdm, emp.salario, dep.nome, tel.numero
FROM empregado emp
JOIN departamento dep ON emp.Departamento_idDepartamento = dep.idDepartamento
JOIN telefone tel ON dep.idDepartamento = tel.Departamento_idDepartamento
WHERE emp.salario < (SELECT AVG(salario) FROM empregado)
ORDER BY emp.nome;


-- 3. Lista dos departamentos com a quantidade de empregados total por cada departamento
-- trazendo a média salarial dos funcionários do departamento -coluna-
-- e a média de comissão recebida pelos empregados do departamento -coluna-
-- com as colunas: departamento, quantidade de empregados, média salarial, média da comissão
-- ordenado por nome do departamento
SELECT dep.nome AS departamento,
    COUNT(emp.cpf) AS quantidade_empregados,
    ROUND(AVG(emp.salario), 2) AS media_salarial,
    ROUND(AVG(emp.comissao), 2) AS media_comissao
FROM empregado emp
JOIN departamento dep ON emp.Departamento_idDepartamento = dep.idDepartamento
GROUP BY dep.nome
ORDER BY dep.nome;


-- 4. lista dos empregados com a quantidade total de vendas já realizada por cada empregado
-- soma do valor total das vendas do empregado e a soma de suas comissões
-- colunas: nome, cpf, sexo, salário, quantidade vendas, total valor vendida e total comissão das vendas
-- ordenado por quantidade total de vendas realizadas
SELECT emp.nome AS empregado,
	emp.sexo,
    emp.salario,
    emp.cpf,
	COUNT(vend.idVenda) AS total_de_vendas,
	SUM(vend.valor) AS valor_total_das_vendas,
	SUM(vend.comissao) AS total_em_commissoes
FROM empregado emp
JOIN venda vend ON emp.cpf = vend.Empregado_cpf
GROUP BY emp.nome, emp.sexo, emp.salario, emp.cpf
ORDER BY total_de_vendas DESC;


-- 5. Lista dos empregados que prestaram Serviço na venda computando a quantidade total de vendas realizadas com serviço por cada Empregado
-- além da soma do valor total apurado pelos serviços prestados nas vendas por empregado e a soma de suas comissões
-- colunas: nome, cpf, sexo, salário, quantidade vendas com serviço, total valor vendido com serviço, total comissão das vendas com serviço
-- ordenado por quantidade total de vendas realizadas
SELECT emp.nome AS empregado,
	emp.cpf,
	emp.sexo,
    emp.salario,
    COUNT(vend.idVenda) AS total_vendas,
    COUNT(itse.quantidade) AS vendas_com_servico,
    SUM(itse.valor) AS total_valor_vendido_com_servico,
    SUM(emp.comissao) AS total_comissao_vendas_com_servico
FROM empregado emp
JOIN venda vend ON emp.cpf = vend.Empregado_cpf
RIGHT JOIN itensservico itse ON emp.cpf = itse.Empregado_cpf
GROUP BY emp.nome, emp.cpf, emp.sexo, emp.salario
ORDER BY total_vendas DESC;


-- 6. lista dos serviços já realizados por um Pet
-- trazendo colunas: nome do pet, data do serviço, nome do serviço, quantidade, valor, empregado que realizou o serviço
-- ordenado por data do serviço  da mais recente a mais antiga
-- ??? é a quantidade de serviços realizado em um pet por dia ?
SELECT pet.nome,
	vend.data,
	serv.nome,
    itse.quantidade,
    itse.valor,
    emp.nome
FROM empregado emp
JOIN itensservico itse ON emp.cpf = itse.Empregado_cpf
JOIN servico serv ON serv.idServico = itse.Servico_idServico
JOIN venda vend ON itse.Empregado_cpf = vend.Empregado_cpf
JOIN pet ON pet.idPET = itse.PET_idPET
GROUP BY pet.nome, vend.data, serv.nome, itse.quantidade, itse.valor, emp.nome
ORDER BY vend.data DESC;


-- 7. Lista das vendas já realizados para um Cliente,
-- trazendo as colunas (Data da Venda, Valor, Desconto, Valor Final, Empregado que realizou a venda),
-- ordenado por data do serviço da mais recente a mais antiga;
SELECT vend.data,
	vend.valor,
    vend.desconto,
    (vend.valor - vend.desconto) AS valor_final,
    emp.nome
FROM empregado emp
JOIN venda vend ON emp.cpf = vend.Empregado_cpf
GROUP BY vend.data, vend.valor, vend.desconto, valor_final, emp.nome
ORDER BY vend.data DESC;


-- 8. Lista dos 10 serviços mais vendidos, trazendo a quantidade vendas cada serviço, o somatório total dos valores de serviço vendido,
-- trazendo as colunas (Nome do Serviço, Quantidade Vendas, Total Valor Vendido),
-- ordenado por quantidade total de vendas realizadas;
SELECT
	serv.nome,
	itse.quantidade,
	itse.valor
FROM servico serv
JOIN itensservico itse ON serv.idServico = itse.Servico_idServico
GROUP BY serv.nome, itse.quantidade, itse.valor
ORDER BY itse.quantidade DESC
LIMIT 10;


-- 9. Lista das formas de pagamentos mais utilizadas nas Vendas, informando quantas vendas cada forma de pagamento já foi relacionada,
-- trazendo as colunas (Tipo Forma Pagamento, Quantidade Vendas, Total Valor Vendido)
-- ordenado por quantidade total de vendas realizadas;
SELECT
	fpv.tipo,
    SUM(itse.quantidade) AS quantidade_total,
    SUM(fpv.valorPago) AS total_vendido
FROM formapgvenda fpv
JOIN venda ON fpv.Venda_idVenda = venda.idVenda
JOIN itensservico itse ON venda.idVenda = itse.Venda_idVenda
GROUP BY fpv.tipo
ORDER BY quantidade_total DESC;


-- 10. Balaço das Vendas, informando a soma dos valores vendidos por dia,
-- trazendo as colunas (Data Venda, Quantidade de Vendas, Valor Total Venda),
-- ordenado por Data Venda da mais recente a mais antiga;
SELECT venda.data,
       COUNT(itse.quantidade) AS quantidade_vendas, 
       SUM(itse.valor) AS valor_total
FROM venda
JOIN itensservico itse ON venda.idVenda = itse.Venda_idVenda
GROUP BY venda.data
UNION ALL
SELECT venda.data,
       COUNT(ivp.quantidade) AS quantidade_vendas, 
       SUM(ivp.valor) AS valor_total
FROM venda
JOIN itensVendaProd ivp ON venda.idVenda = ivp.Venda_idVenda
GROUP BY venda.data
ORDER BY data DESC;


-- 11. Lista dos Produtos, informando qual Fornecedor de cada produto,
-- trazendo as colunas (Nome Produto, Valor Produto, Categoria do Produto, Nome Fornecedor, Email Fornecedor, Telefone Fornecedor),
-- ordenado por Nome Produto;
-- ??? categoria do produto?
SELECT 
	prod.nome,
	forn.nome,
    prod.precoCusto,
    forn.email,
    tel.numero
FROM produtos prod
JOIN itenscompra ON prod.idProduto = itenscompra.Produtos_idProduto
JOIN compras ON itenscompra.Compras_idCompra = compras.idCompra
JOIN fornecedor forn ON compras.Fornecedor_cpf_cnpj = forn.cpf_cnpj
JOIN telefone tel ON forn.cpf_cnpj = tel.Fornecedor_cpf_cnpj
GROUP BY
	prod.nome,
	forn.nome,
    prod.precoCusto,
    forn.email,
    tel.numero
ORDER BY prod.nome;


-- 12. Lista dos Produtos mais vendidos, informando a quantidade (total) de vezes que cada produto participou em vendas 
-- e o total de valor apurado com a venda do produto, 
-- trazendo as colunas (Nome Produto, Quantidade (Total) Vendas, Valor Total Recebido pela Venda do Produto), 
-- ordenado por quantidade de vezes que o produto participou em vendas;
SELECT
	prod.nome,
    COUNT(ivp.quantidade) AS quantidade_total,
    SUM(ivp.valor) AS valor_total_apurado
FROM produtos prod
JOIN itensvendaprod ivp ON prod.idProduto = ivp.Produto_idProduto
GROUP BY prod.nome
ORDER BY quantidade_total DESC;

