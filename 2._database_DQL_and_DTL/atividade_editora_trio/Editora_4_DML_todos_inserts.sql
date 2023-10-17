-- Editora DML todos os inserts

-- table LIVROS
INSERT INTO `editora_trio`.`Livros` (`ISBN`, `titulo`, `editora`, `paginas`, `ano_publicacao`, `genero`, `descricao`, `valor`, `estoque`) VALUES
('9781234567001', 'Brasil Império e outras Aventuras', 'Editora Trio', 174, 2017, 'História', 'História do Brasil: 189-1930', 35.50, 27),
('9781234567002', 'Industrialização Brasileira: 1889-1985', 'Editora Trio', 250, 2003, 'História', 'Descrição do Livro 2', 30.75, 150),
('9781234567003', 'História de Pernambuco', 'Editora Trio', 320, 2021, 'História', 'História Geral de Pernambuco', 122.99, 14),
('9781234567004', 'Confederação do Equador', 'Editora Trio', 280, 2018, 'História', 'História sobre o Espírito Revolucionário no Nordeste', 47.80, 120),
('9781234567005', 'História da Economia Pernambucana', 'Editora Trio', 350, 2022, 'História', 'Evolução da Economia Pernambucana', 35.00, 91),
('9781234567006', 'Legilação Penal Comentada', 'Editora Trio', 310, 2017, 'Direito', 'Comentários as principais Leis do Direito Penal', 48.50, 110),
('9781234567007', 'Direito Tributário para Startups', 'Editora Trio', 280, 2020, 'Direito', 'noções de direito tributário para empreendedores', 26.75, 31),
('9781234567008', 'Teoria do Direito', 'Editora Trio', 330, 2011, 'Direito', 'introdução aos principais conceitos jurídicos', 72.99, 78),
('9781234567009', 'Direito e Justiça', 'Editora Trio', 290, 2021, 'Direito', 'filosofia do direito na política da justiça do judiciário', 69.80, 85),
('9781234567010', 'Manual de Direito Administrastivo', 'Editora Trio', 270, 2018, 'Direito', 'manual para estudantes de direito administrativo', 24.50, 05),
('9781234567011', 'Manual de Java', 'Editora Trio', 320, 2022, 'Informática', 'manual para estudantes de Java', 31.75, 114),
('9781234567012', 'Entendendo SQL', 'Editora Trio', 290, 2007, 'Informática', 'manual para estudantes aprenderem SQL', 128.99, 75),
('9781234567013', 'PHP: A Linguagem do Futuro', 'Editora Trio', 300, 2020, 'Informática', 'livro de filosofia e informática', 26.80, 105),
('9781234567014', 'O futuro do COBOL', 'Editora Trio', 280, 1999, 'Informática', 'projeções sobre as possibilidades do uso de COBOL', 23.50, 115),
('9781234567015', 'HTML e CSS', 'Editora Trio', 330, 2021, 'Informática', 'manual de HTML e CSS para estudantes', 30.99, 65),
('9781234567016', 'Python e Spark', 'Editora Trio', 310, 2018, 'Informática', 'introdução ao uso de spark com python', 29.80, 88),
('9781234567017', 'Pessoas e Sujeitos', 'Editora Trio', 300, 1998, 'Filosofia', 'reflexões sobre a diferença entre seres Humanos', 37.50, 101),
('9781234567018', 'Sujeitos e Sujeitados', 'Editora Trio', 290, 2017, 'Filosofia', 'reflexões sobre a relação entre direito e seres humanos', 25.75, 22),
('9781234567019', 'I.A. e vontade', 'Editora Trio', 320, 2000, 'Filosofia', 'reflexões sobre a identidade humana e das I.A.', 82.99, 19),
('9781234567020', 'O Segredo da Mente Milionária', 'Editora Trio', 270, 2019, 'Ficção', 'coletânea de contros', 18.80, 120),
('9781234567021', 'O Futuro do Brasil e Outras Histórias', 'Editora Trio', 340, 2021, 'Mistério', 'coletânea de contros', 226.50, 85);



-- table PALAVRAS-CHAVE
INSERT INTO `editora_trio`.`palavras_chave` (`ID_palavra_chave`, `descricao`, `palavra`) VALUES
(0200, 'encadeamento de acontecimentos ao longo do tempo', 'História'),
(0201, 'sobre a produção, consumo e distribuição de bens', 'Economia'),
(0202, 'reflexões osbre certo e errado', 'Direito'),
(0203, 'produção legislativa', 'Legisção'),
(0204, 'pensamento questionador', 'Filosofia'),
(0205, 'Seres humanos', 'Humanidade'),
(0206, 'sobre tecnologia', 'Informática'),
(0207, 'Estado de Pernambuco', 'Pernambuco'),
(0208, 'país Brasil', 'Brasil'),
(0209, 'livro para aprendizado', 'Manual'),
(0210, 'História curta', 'Contos'),
(0211, 'história criada', 'Narrativas'),
(0212, 'narrativa imaginária', 'Ficção');



-- table AREA_CONHECIMENTO
INSERT INTO `editora_trio`.`area_de_conhecimento` (`ID_area_de_conhecimento`, `descricao`, `area`) VALUES
(0300, 'Área de estudo sobre princípios legais e sistemas jurídicos.', 'Direito'),
(0301, 'Área de estudo que investiga questões fundamentais relacionadas à existência, conhecimento, mente, linguagem e valores.', 'Filosofia'),
(0302, 'Área de estudo que analisa eventos e fatos ocorridos no passado, bem como suas causas e consequências.', 'História'),
(0303, 'Gênero literário que se baseia em narrativas imaginárias e fictícias.', 'Ficção'),
(0304, 'Área de estudo sobre sociedades humanas, seus comportamentos, cultura, crenças, entre outros.', 'Sociologia'),
(0305, 'Área de estudo que investiga os fenômenos naturais e as leis que os regem.', 'Física'),
(0306, 'Área de estudo que se dedica ao entendimento dos seres vivos e dos processos biológicos.', 'Biologia'),
(0307, 'Gênero literário que apresenta fatos históricos de forma romanceada.', 'Romance Histórico'),
(0308, 'Área de estudo sobre a produção e o consumo de bens e serviços.', 'Economia'),
(0309, 'Área de estudo que se dedica à compreensão das estruturas e processos da Terra.', 'Geologia'),
(0310, 'Gênero literário que explora cenários e tecnologias futurísticas.', 'Ficção Científica'),
(0311, 'Área de estudo que se dedica às tecnologias e aos sistemas de informação.', 'Ciência da Computação'),
(0312, 'Gênero literário que apresenta casos fictícios de crimes e investigações.', 'Mistério'),
(0313, 'Área de estudo que investiga os princípios e as operações dos computadores.', 'Engenharia de Computação'),
(0314, 'Gênero literário que explora aventuras épicas e mundos imaginários.', 'Fantasia'),
(0315, 'Investigação sobre a relação entre tecnologia e sociedade', 'Sociologia da Tecnologia'),
(0317, 'Reflexões para a pessoa conseguir resolver seus problemas sozinha.', 'Autoajuda'),
(0316, 'Doidera de mais da conta.', 'Algoritmos e Estruturas de Dados');



-- table AUTORES
INSERT INTO `editora_trio`.`autores` (`ID_autor`, `nome`, `biografia`, `nacionalidade`, `obras`, `nascimento`) VALUES
(0421, 'Ana Silva', 'Advogada renomada e escritora de livros jurídicos aclamados.', 'Brasileira', 'Código Anotado, Manual de Direito Civil', '1972-02-28'),
(0422, 'Carlos Mendonça', 'Professor de Direito Constitucional e autor de obras sobre direitos humanos.', 'Português', 'Constituição e Cidadania, Direitos Fundamentais', '1965-09-15'),
(0423, 'Sophie Dupont', 'Advogada francesa conhecida por seus livros sobre leis internacionais.', 'Francesa', 'Leis Globais, Diplomacia Jurídica', '1978-06-11'),
(0424, 'Rajesh Mehta', 'Jurista indiano e autor de livros sobre direito empresarial.', 'Indiano', 'Leis Comerciais da Índia, Contratos Empresariais', '1980-12-05'),
(0425, 'Larissa Costa', 'Advogada brasileira e escritora de romances jurídicos de sucesso.', 'Brasileira', 'Justiça Vendida, Além da Lei', '1984-03-20'),
(0431, 'David Johnson', 'Economista americano e autor de best-sellers sobre finanças pessoais.', 'Americano', 'Investindo Sabiamente, Riqueza para Todos', '1968-07-12'),
(0432, 'Elena Rodriguez', 'Economista espanhola e escritora de livros sobre políticas econômicas europeias.', 'Espanhola', 'Eurozone Challenges, Banking on Tomorrow', '1975-04-03'),
(0433, 'Kenji Nakamura', 'Economista japonês e autor de obras sobre economia asiática em ascensão.', 'Japonês', 'Rising Sun Economies, The Asian Miracle', '1973-11-28'),
(0434, 'Larissa Costa', 'Economista brasileira e escritora de análises econômicas para o público em geral.', 'Brasileira', 'Economia para Todos, Caminhos da Prosperidade', '1982-09-09'),
(0435, 'Amir Khan', 'Economista indiano e autor de livros sobre empreendedorismo e inovação.', 'Indiano', 'Inovação na Índia, Empreendendo para o Futuro', '1977-02-15'),
(0441, 'Isabel Silva', 'Historiadora portuguesa e autora de obras sobre a Era dos Descobrimentos.', 'Portuguesa', 'Navegadores Lusos, A Conquista do Novo Mundo', '1969-05-18'),
(0442, 'James Anderson', 'Historiador britânico e escritor de livros sobre a Revolução Industrial.', 'Britânico', 'Steam Revolution, The Age of Factories', '1972-08-25'),
(0443, 'Marie Leclerc', 'Historiadora francesa e autora de análises históricas sobre a Belle Époque.', 'Francesa', 'Paris in the Gilded Age, The Art of Elegance', '1978-12-03'),
(0444, 'Akio Tanaka', 'Historiador japonês e escritor de obras sobre o Período Edo no Japão.', 'Japonês', 'Samurais and Shoguns, Edo: A Cultural Epic', '1981-03-29'),
(0445, 'Lucia Fernandez', 'Historiadora argentina e autora de livros sobre a independência latino-americana.', 'Argentina', 'Freedom Fighters, Latin American Independence', '1985-06-11'),
(0415, 'Liu Wei', 'Escritor chinês de ficção científica e ensaios sobre o futuro da humanidade.', 'Chinês', 'Caminhos para as Estrelas, A Era das Máquinas', '1976-09-14');



-- table EXEMPLARES
INSERT INTO `editora_trio`.`exemplares` (`ID_exemplar`, `localizacao`, `estado`, `Livros_ISBN`) VALUES
(0500, 'Prateleira A-1', 'Novo', '9781234567001'),
(0501, 'Prateleira B-3', 'Novo', '9781234567002'),
(0502, 'Prateleira C-2', 'Usado', '9781234567003'),
(0503, 'Prateleira D-5', 'Bom', '9781234567004'),
(0504, 'Prateleira A-2', 'Novo', '9781234567005'),
(0505, 'Prateleira B-1', 'Novo', '9781234567006'),
(0506, 'Prateleira C-3', 'Usado', '9781234567007'),
(0507, 'Prateleira D-4', 'Bom', '9781234567008'),
(0508, 'Prateleira A-3', 'Novo', '9781234567009'),
(0509, 'Prateleira B-2', 'Novo', '9781234567010'),
(0510, 'Prateleira C-1', 'Usado', '9781234567011'),
(0511, 'Prateleira D-6', 'Bom', '9781234567012'),
(0512, 'Prateleira A-4', 'Novo', '9781234567013'),
(0513, 'Prateleira B-5', 'Novo', '9781234567014'),
(0514, 'Prateleira C-4', 'Usado', '9781234567009'),
(0515, 'Prateleira D-7', 'Bom', '9781234567016'),
(0516, 'Prateleira A-5', 'Novo', '9781234567017'),
(0517, 'Prateleira B-6', 'Novo', '9781234567001'),
(0518, 'Prateleira C-5', 'Usado', '9781234567019'),
(0519, 'Prateleira D-8', 'Bom', '9781234567020'),
(0520, 'Prateleira A-6', 'Novo', '9781234567021'),
(0521, 'Prateleira B-7', 'Novo', '9781234567022'),
(0522, 'Prateleira C-6', 'Usado', '9781234567001'),
(0523, 'Prateleira D-9', 'Bom', '9781234567008'),
(0524, 'Prateleira A-7', 'Novo', '9781234567025'),
(0525, 'Prateleira B-8', 'Novo', '9781234567008'),
(0526, 'Prateleira C-7', 'Usado', '9781234567001'),
(0527, 'Prateleira D-10', 'Bom', '9781234567011'),
(0528, 'Prateleira A-8', 'Novo', '9781234567011'),
(0530, 'Prateleira A-1', 'Novo', '9781234567011'),
(0529, 'Prateleira B-9', 'Novo', '9781234567001');



-- table ENDERECO
INSERT INTO `editora_trio`.`Endereco` (`ID_endereco`, `pais`, `estado`, `cidade`, `rua`, `numero`, `complemento`) VALUES
(1000, 'Brasil', 'Pernambuco', 'Recife', 'Avenida Boa Viagem', '1000', 'Apartamento 101'),
(1001, 'Brasil', 'Pernambuco', 'Recife', 'Rua da Aurora', '500', 'Casa 2'),
(1002, 'Brasil', 'Pernambuco', 'Recife', 'Rua do Sol', '123', 'Andar 5 Sala 502'),
(1003, 'Brasil', 'Paraíba', 'João Pessoa', 'Avenida Epitácio Pessoa', '1500', 'Cobertura 3'),
(1004, 'Brasil', 'Paraíba', 'Campina Grande', 'Rua Maciel Pinheiro', '888', 'Apartamento 304'),
(1005, 'Brasil', 'Pernambuco', 'Recife', 'Avenida Conde da Boa Vista', '200', 'Casa 1'),
(1006, 'Brasil', 'Pernambuco', 'Recife', 'Avenida Agamenon Magalhães', '4500', 'Conjunto 1001'),
(1007, 'Brasil', 'Paraíba', 'João Pessoa', 'Rua Bancário Severino Cruz', '320', 'Andar 10 Sala 1002'),
(1008, 'Brasil', 'Pernambuco', 'Recife', 'Rua da Hora', '1500', 'Apartamento 501'),
(1009, 'Brasil', 'Paraíba', 'João Pessoa', 'Avenida Rui Carneiro', '2800', 'Casa 3'),
(1010, 'Brasil', 'Pernambuco', 'Recife', 'Rua João Ramos', '900', 'Andar 8 Sala 801'),
(1011, 'Brasil', 'Paraíba', 'Campina Grande', 'Avenida Presidente Getúlio Vargas', '3500', 'Casa 5'),
(1012, 'Brasil', 'Pernambuco', 'Recife', 'Rua do Futuro', '2200', 'Apartamento 402'),
(1013, 'Brasil', 'Paraíba', 'João Pessoa', 'Rua Treze de Maio', '180', 'Casa 4'),
(1014, 'Brasil', 'Pernambuco', 'Recife', 'Avenida Aguiar', '750', 'Andar 12 Sala 1201'),
(1015, 'Brasil', 'Pernambuco', 'Olinda', 'Rua do Amparo', '2800', 'Casa 2');



-- table DEPARTAMENTOS
INSERT INTO `editora_trio`.`Departamentos` (`ID_departamento`, `departamento`, `atividades`, `responsavel`) VALUES
(0600, 'Vendas', 'Gerenciar vendas e relacionamento com clientes', 'Ana Silva'),
(0601, 'Marketing', 'Criar estratégias de marketing e publicidade', 'Carlos Oliveira'),
(0602, 'Produção', 'Gerir a produção de livros e materiais', 'Marta Santos'),
(0603, 'Logística', 'Gerenciar a distribuição e logística dos produtos', 'Pedro Almeida'),
(0604, 'Financeiro', 'Gerir as finanças e contabilidade da editora', 'Luisa Fernandes'),
(0605, 'Recursos Humanos', 'Gerir políticas de recursos humanos e contratação', 'Rafael Oliveira'),
(0606, 'TI', 'Gerir a infraestrutura tecnológica da editora', 'Fernanda Souza'),
(0607, 'Jurídico', 'Cuidar de questões legais e contratos', 'Eduardo Costa'),
(0608, 'Editorial', 'Supervisionar a produção editorial dos livros', 'Viviane Lima'),
(0609, 'Arte e Design', 'Criar a arte e design dos materiais publicados', 'Gustavo Santos'),
(0610, 'Relações Públicas', 'Cuidar das relações públicas e imagem da editora', 'Isabela Oliveira'),
(0611, 'Atendimento ao Cliente', 'Gerenciar o suporte e atendimento ao cliente', 'Aline Costa'),
(0612, 'Eventos', 'Organizar eventos e lançamentos de livros', 'Roberto Silva'),
(0613, 'Pesquisa e Desenvolvimento', 'Realizar pesquisas e desenvolver novos produtos', 'Patricia Lima');



-- table FUNCIONARIOS
INSERT INTO `editora_trio`.`Funcionarios` (`ID_funcionario`, `cargo`, `nome`, `telefone`, `dataADM`, `dataDEM`, `salario`, `Departammentos_ID_departamento`) VALUES
(0700, 'Gerente de Vendas', 'Fernando Silva', '+55 11 9999-1111', '2022-01-15', '2023-06-30', 5000.00, 0600),
(0701, 'Analista de Marketing', 'Juliana Oliveira', '+55 11 9999-2222', '2022-02-01', '2023-06-30', 3500.00, 0601),
(0702, 'Coordenador de Produção', 'Marcelo Santos', '+55 11 9999-3333', '2022-03-10', '2023-06-30', 4000.00, 0602),
(0703, 'Analista de Logística', 'Camila Almeida', '+55 11 9999-4444', '2022-04-05', '2023-06-30', 3500.00, 0603),
(0704, 'Analista Financeiro', 'Lucas Fernandes', '+55 11 9999-5555', '2022-05-20', '2023-06-30', 3800.00, 0604),
(0705, 'Analista de RH', 'Isabel Souza', '+55 11 9999-6666', '2022-06-10', '2023-06-30', 3500.00, 0605),
(0706, 'Analista de TI', 'Ricardo Costa', '+55 11 9999-7777', '2022-07-15', '2023-06-30', 4000.00, 0606),
(0707, 'Advogado', 'Carla Lima', '+55 11 9999-8888', '2022-08-02', '2023-06-30', 4500.00, 0607),
(0708, 'Editor Chefe', 'André Oliveira', '+55 11 9999-9999', '2022-09-10', '2023-06-30', 4800.00, 0608),
(0709, 'Designer', 'Mariana Santos', '+55 11 9999-0000', '2022-10-12', '2023-06-30', 3500.00, 0609),
(0710, 'Relações Públicas', 'Victor Lima', '+55 11 8888-1111', '2022-11-18', '2023-06-30', 3800.00, 0610),
(0711, 'Atendente ao Cliente', 'Ana Costa', '+55 11 8888-2222', '2022-12-05', '2023-06-30', 3200.00, 0611),
(0712, 'Organizador de Eventos', 'Eduardo Silva', '+55 11 8888-3333', '2023-01-20', '2023-06-30', 3500.00, 0612),
(0713, 'Pesquisador de Desenvolvimento', 'Amanda Lima', '+55 11 8888-4444', '2023-02-15', '2023-06-30', 4000.00, 0613),
(0714, 'Analista de Vendas', 'Roberto Fernandes', '+55 11 8888-5555', '2023-03-08', '2023-06-30', 3800.00, 0600),
(0715, 'Analista de Marketing Digital', 'Cristina Oliveira', '+55 11 8888-6666', '2023-04-02', '2023-06-30', 3800.00, 0601),
(0716, 'Designer Gráfico', 'Lucas Souza', '+55 11 8888-7777', '2023-05-17', '2023-06-30', 3500.00, 0609),
(0717, 'Analista de Comunicação', 'Laura Costa', '+55 11 8888-8888', '2023-06-10', '2023-06-30', 3700.00, 0610),
(0718, 'Analista de Qualidade', 'Gustavo Lima', '+55 11 8888-9999', '2023-07-22', '2023-06-30', 3700.00, 0613),
(0719, 'Gerente de RH', 'Juliano Fernandes', '+55 11 7777-1111', '2023-08-14', '2023-06-30', 5000.00, 0605),
(0720, 'Analista de Sistemas', 'Erick Oliveira', '+55 11 7777-2222', '2023-09-05', '2023-06-30', 4000.00, 0606);



-- table VENDAS
INSERT INTO `editora_trio`.`Vendas` (`ID_venda`, `pagamento`, `data_venda`, `valor`, `desconto`, `Cliente_ID_cliente`, `Cliente_Endereco_ID_endereco`, `Funcionarios_ID_funcionario`) VALUES
(0900, 'Cartão de Crédito', '2023-05-05', 79.50, 7.00, 0500, 0700, 0900),
(0901, 'Pix', '2023-05-10', 120.75, 10.50, 0501, 0701, 0901),
(0902, 'Boleto Bancário', '2023-05-15', 85.20, 8.20, 0502, 0702, 0902),
(0903, 'Cartão de Débito', '2023-06-02', 130.50, 12.00, 0503, 0703, 0903),
(0904, 'Pix', '2023-06-07', 96.75, 9.50, 0504, 0704, 0904),
(0905, 'Boleto Bancário', '2023-06-12', 150.60, 14.75, 0505, 0705, 0905),
(0906, 'Cartão de Crédito', '2023-06-20', 110.40, 11.00, 0506, 0706, 0906),
(0907, 'Pix', '2023-06-23', 75.25, 7.50, 0507, 0707, 0907),
(0908, 'Boleto Bancário', '2023-07-03', 100.50, 10.00, 0508, 0708, 0908),
(0909, 'Pix', '2023-07-09', 135.25, 13.00, 0509, 0709, 0909),
(0910, 'Cartão de Crédito', '2023-07-15', 120.80, 12.50, 0510, 0710, 0910),
(0911, 'Pix', '2023-08-01', 105.00, 10.50, 0511, 0711, 0911),
(0912, 'Boleto Bancário', '2023-08-06', 90.75, 9.00, 0512, 0712, 0912),
(0913, 'Cartão de Débito', '2023-08-14', 130.20, 13.00, 0513, 0713, 0913),
(0914, 'Pix', '2023-08-18', 145.75, 14.50, 0514, 0714, 0914),
(0915, 'Boleto Bancário', '2023-08-25', 90.25, 9.00, 0515, 0715, 0915),
(0916, 'Cartão de Crédito', '2023-09-03', 160.00, 16.50, 0516, 0716, 0916),
(0917, 'Pix', '2023-09-08', 105.25, 10.50, 0517, 0717, 0917),
(0918, 'Boleto Bancário', '2023-09-14', 130.50, 13.00, 0518, 0718, 0918),
(0919, 'Cartão de Crédito', '2023-09-21', 95.00, 9.50, 0519, 0719, 0919),
(0920, 'Pix', '2023-09-26', 80.25, 8.00, 0520, 0720, 0920),
(0921, 'Boleto Bancário', '2023-09-29', 125.50, 12.50, 0521, 0721, 0921),
(0922, 'Cartão de Crédito', '2023-09-30', 110.75, 11.00, 0522, 0722, 0922),
(0923, 'Pix', '2023-09-13', 150.00, 15.00, 0523, 0723, 0923),
(0924, 'Boleto Bancário', '2023-09-16', 145.25, 14.50, 0524, 0724, 0924),
(0925, 'Cartão de Crédito', '2023-05-10', 120.75, 0, 0525, 0725, 0925),
(0926, 'Pix', '2023-05-15', 85.20, 0, 0526, 0726, 0926),
(0927, 'Boleto Bancário', '2023-05-20', 140.00, 0, 0527, 0727, 0927),
(0928, 'Cartão de Débito', '2023-06-02', 130.50, 0, 0528, 0728, 0928),
(0929, 'Pix', '2023-06-07', 96.75, 0, 0529, 0729, 0929),
(0930, 'Boleto Bancário', '2023-06-12', 150.60, 0, 0530, 0730, 0930),
(0931, 'Cartão de Crédito', '2023-06-20', 110.40, 0, 0531, 0731, 0931),
(0932, 'Pix', '2023-06-23', 75.25, 0, 0532, 0732, 0932),
(0933, 'Boleto Bancário', '2023-07-03', 100.50, 0, 0533, 0733, 0933),
(0934, 'Pix', '2023-07-09', 135.25, 0, 0534, 0734, 0934),
(0935, 'Cartão de Crédito', '2023-07-15', 120.80, 0, 0535, 0735, 0935),
(0936, 'Pix', '2023-08-01', 105.00, 0, 0536, 0736, 0936),
(0937, 'Boleto Bancário', '2023-08-06', 90.75, 0, 0537, 0737, 0937),
(0938, 'Cartão de Débito', '2023-08-14', 130.20, 0, 0538, 0738, 0938),
(0939, 'Pix', '2023-08-18', 145.75, 0, 0539, 0739, 0939),
(0940, 'Boleto Bancário', '2023-08-25', 90.25, 0, 0540, 0740, 0940),
(0941, 'Cartão de Crédito', '2023-09-03', 160.00, 0, 0541, 0741, 0941),
(0942, 'Pix', '2023-09-08', 105.25, 0, 0542, 0742, 0942),
(0943, 'Boleto Bancário', '2023-09-14', 130.50, 0, 0543, 0743, 0943),
(0944, 'Cartão de Crédito', '2023-09-21', 95.00, 0, 0544, 0744, 0944),
(0945, 'Pix', '2023-09-26', 80.25, 0, 0545, 0745, 0945);



-- table CLIENTES
INSERT INTO `editora_trio`.`Clientes` (`ID_cliente`, `nome`, `telefone`, `email`, `Endereco_ID_endereco`, `data_nascimento`) VALUES
(0800, 'Ana Silva', 1122334455, 'ana.silva@email.com', 0700, '1988-06-11'),
(0801, 'Carlos Oliveira', 9988776655, 'carlos.oliveira@email.com', 0701, '1996-12-12'),
(0802, 'Mariana Santos', 9876543210, 'mariana.santos@email.com', 0702, '1999-02-20'),
(0803, 'Lucas Lima', 9543217890, 'lucas.lima@email.com', 0703, '2001-07-23'),
(0804, 'Juliana Costa', 9321564870, 'juliana.costa@email.com', 0704, '1992-11-30'),
(0805, 'Ricardo Fernandes', 9658741023, 'ricardo.fernandes@email.com', 0705, '1974-04-15'),
(0806, 'Camila Oliveira', 9132547098, 'camila.oliveira@email.com', 0706, '1987-09-18'),
(0807, 'Eduardo Costa', 9887432156, 'eduardo.costa@email.com', 0707, '1981-08-19'),
(0808, 'Patricia Lima', 9321456789, 'patricia.lima@email.com', 0708, '1991-12-22'),
(0809, 'Fernando Silva', 9765432109, 'fernando.silva@email.com', 0709, '1990-07-27'),
(0810, 'Beatriz Oliveira', 9976321456, 'beatriz.oliveira@email.com', 0710, '1980-12-26'),
(0811, 'Roberto Lima', 9987456321, 'roberto.lima@email.com', 0711, '1978-11-24'),
(0812, 'Helena Costa', 9888745632, 'helena.costa@email.com', 0712, '1977-10-06'),
(0813, 'Guilherme Oliveira', 9678452310, 'guilherme.oliveira@email.com', 0713, '1997-10-05'),
(0814, 'Amanda Santos', 9225478963, 'amanda.santos@email.com', 0714, '1996-09-07'),
(0815, 'Carlos Fernandes', 9332156897, 'carlos.fernandes@email.com', 0715, '1999-08-30'),
(0816, 'Renata Costa', 9456213789, 'renata.costa@email.com', 0716, '1995-06-11'),
(0817, 'Lucas Oliveira', 9658745123, 'lucas.oliveira@email.com', 0717, '1993-07-19'),
(0818, 'Cristina Lima', 9321564870, 'cristina.lima@email.com', 0718, '1984-06-30'),
(0819, 'Gustavo Santos', 9987632156, 'gustavo.santos@email.com', 0719, '1983-05-14'),
(0820, 'Aline Oliveira', 9765231478, 'aline.oliveira@email.com', 0707, '1949-06-30'),
(0821, 'Felipe Lima', 9658741023, 'felipe.lima@email.com', 0701, '1986-05-01'),
(0822, 'Isabela Costa', 9445612378, 'isabela.costa@email.com', 0712, '2002-04-08'),
(0823, 'Vitor Santos', 9774512369, 'vitor.santos@email.com', 0713, '1982-03-13'),
(0824, 'Julia Oliveira', 9332541098, 'julinha.oliveira@email.com', 0702, '1965-02-08'),
(0825, 'Rafael Silva', 9874321546, 'rafael.silva@email.com', 0720, '1997-01-09');



-- table PEDIDOS
INSERT INTO `editora_trio`.`Pedidos` (`ID_pedido`, `data_pedido`, `quantidade`, `status_pedido`, `Vendas_ID_venda`, `Cliente_ID_cliente`, `Cliente_Endereco_ID_endereco`, `Vendas_ID_venda1`) VALUES
(1100, '2023-07-01', 5, 'Em Processamento', 1000, 0500, 0700, 0900),
(1101, '2023-09-02', 3, 'Entregue', 1001, 0501, 0701, 0901),
(1102, '2023-09-03', 2, 'Em Processamento', 1002, 0502, 0702, 0902),
(1103, '2023-05-04', 7, 'Atrasado', 1003, 0503, 0703, 0903),
(1104, '2023-07-05', 1, 'Entregue', 1004, 0504, 0704, 0904),
(1105, '2023-09-06', 4, 'Em Processamento', 1005, 0505, 0705, 0905),
(1106, '2023-09-07', 6, 'Atrasado', 1006, 0506, 0706, 0906),
(1107, '2023-07-08', 2, 'Entregue', 1007, 0507, 0707, 0907),
(1108, '2023-09-09', 3, 'Em Processamento', 1008, 0508, 0708, 0908),
(1109, '2023-09-10', 5, 'Atrasado', 1009, 0509, 0709, 0909),
(1110, '2023-09-11', 2, 'Entregue', 1010, 0510, 0710, 0910),
(1111, '2023-07-12', 4, 'Em Processamento', 1011, 0511, 0711, 0911),
(1112, '2023-09-13', 1, 'Atrasado', 1012, 0512, 0712, 0912),
(1113, '2023-05-14', 3, 'Entregue', 1013, 0513, 0713, 0913),
(1114, '2023-08-15', 6, 'Em Processamento', 1014, 0514, 0714, 0914),
(1115, '2023-09-16', 2, 'Atrasado', 1015, 0515, 0715, 0915),
(1116, '2023-09-17', 4, 'Entregue', 1016, 0516, 0716, 0916),
(1117, '2023-09-18', 3, 'Em Processamento', 1017, 0517, 0717, 0917),
(1118, '2023-08-19', 5, 'Atrasado', 1018, 0518, 0718, 0918),
(1119, '2023-05-20', 2, 'Entregue', 1019, 0519, 0719, 0919),
(1120, '2023-08-21', 1, 'Em Processamento', 1020, 0520, 0720, 0920);



-- palavras_chave_has_Livros
INSERT INTO `editora_trio`.`palavras_chave_has_Livros` (`palavras_chave_ID_palavra_chave`, `Livros_ISBN`) VALUES
(0200, '9781234567001'),
(0201, '9781234567001'),
(0202, '9781234567002'),
(0203, '9781234567002'),
(0204, '9781234567003'),
(0205, '9781234567003'),
(0206, '9781234567004'),
(0207, '9781234567004'),
(0208, '9781234567005'),
(0209, '9781234567005'),
(0210, '9781234567006'),
(0211, '9781234567006'),
(0212, '9781234567007'),
(0200, '9781234567007'),
(0201, '9781234567008'),
(0202, '9781234567008'),
(0203, '9781234567009'),
(0204, '9781234567009'),
(0205, '9781234567010'),
(0206, '9781234567010'),
(0207, '9781234567011'),
(0208, '9781234567011'),
(0209, '9781234567012'),
(0210, '9781234567012'),
(0211, '9781234567013'),
(0212, '9781234567013'),
(0200, '9781234567014'),
(0201, '9781234567014'),
(0202, '9781234567015'),
(0203, '9781234567015'),
(0204, '9781234567016'),
(0205, '9781234567016'),
(0206, '9781234567017'),
(0207, '9781234567017'),
(0208, '9781234567018'),
(0209, '9781234567018');



-- Livros_has_area_de_conhecimento
INSERT INTO `editora_trio`.`Livros_has_area_de_conhecimento` (`Livros_ISBN`, `area_de_conhecimento_ID`) VALUES
('9781234567001', 0302),
('9781234567001', 0307),
('9781234567002', 0302),
('9781234567002', 0308),
('9781234567003', 0302),
('9781234567004', 0302),
('9781234567005', 0302),
('9781234567005', 0308),
('9781234567006', 0301),
('9781234567006', 0302),
('9781234567006', 0308),
('9781234567007', 0301),
('9781234567007', 0308),
('9781234567008', 0301),
('9781234567008', 0302),
('9781234567009', 0301),
('9781234567009', 0308),
('9781234567010', 0311),
('9781234567010', 0306),
('9781234567011', 0311),
('9781234567011', 0306),
('9781234567012', 0311),
('9781234567012', 0306),
('9781234567013', 0311),
('9781234567013', 0306),
('9781234567014', 0311),
('9781234567014', 0306);




-- Livros_has_autores
INSERT INTO `editora_trio`.`Livros_has_autores` (`Livros_ISBN`, `autores_ID`) VALUES
('9781234567006', 0421),
('9781234567007', 0421),
('9781234567008', 0422),
('9781234567009', 0422),
('9781234567003', 0431),
('9781234567004', 0431),
('9781234567005', 0431),
('9781234567008', 0432),
('9781234567009', 0432),
('9781234567001', 0441),
('9781234567002', 0441),
('9781234567003', 0441),
('9781234567004', 0442),
('9781234567005', 0442),
('9781234567011', 0415),
('9781234567012', 0415),
('9781234567020', 0424),
('9781234567021', 0424),
('9781234567015', 0420),
('9781234567016', 0420),
('9781234567013', 0423),
('9781234567010', 0445),
('9781234567014', 0423),
('9781234567017', 0423),
('9781234567018', 0423),
('9781234567019', 0425);




-- Pedidos_has_Livros ou pedidos_and_livros
INSERT INTO `editora_trio`.`pedidos_and_livros` (`Pedidos_ID_pedido`, `Livros_ISBN`, `quantidade`, `valor`) VALUES
(1100, '9781234567001', 1, 35.50),
(1100, '9781234567002', 1, 30.75),
(1101, '9781234567003', 5, 614.95),
(1102, '9781234567004', 2, 95.60),
(1103, '9781234567005', 1, 35.00),
(1103, '9781234567006', 1, 48.50),
(1104, '9781234567007', 3, 80.25),
(1105, '9781234567008', 1, 72.99),
(1106, '9781234567009', 4, 279.20),
(1107, '9781234567010', 2, 49.00),
(1108, '9781234567011', 2, 63.50),
(1109, '9781234567012', 1, 128.99),
(1110, '9781234567013', 2, 53.60),
(1111, '9781234567014', 1, 47.00),
(1112, '9781234567015', 1, 30.99),
(1113, '9781234567016', 2, 59.60),
(1114, '9781234567017', 1, 37.50),
(1115, '9781234567018', 1, 25.75),
(1116, '9781234567019', 1, 82.99),
(1117, '9781234567020', 1, 18.80),
(1118, '9781234567021', 3, 679.50),
(1119, '9781234567010', 1, 24.50),
(1120, '9781234567011', 1, 31.75),
(1120, '9781234567013', 2, 53.60),
(1120, '9781234567014', 1, 47.00);


-- Vendas_has_Livros
INSERT INTO `editora_trio`.`Vendas_has_Livros` (`Vendas_ID_venda`, `Livros_ISBN`, `quantidade`, `valor`) VALUES
(0900, '9781234567001', 1, 35.50),
(0900, '9781234567002', 1, 30.75),
(0901, '9781234567003', 1, 122.99),
(0901, '9781234567004', 4, 191.20),
(0902, '9781234567005', 2, 70.00),
(0902, '9781234567006', 1, 48.50),
(0903, '9781234567007', 1, 26.75),
(0903, '9781234567008', 1, 72.99),
(0904, '9781234567009', 3, 209.40),
(0904, '9781234567010', 1, 24.50),
(0905, '9781234567011', 1, 31.75),
(0905, '9781234567012', 1, 128.99),
(0906, '9781234567013', 3, 80.40),
(0906, '9781234567014', 2, 47.00),
(0907, '9781234567015', 1, 30.99),
(0907, '9781234567016', 1, 29.80),
(0908, '9781234567017', 1, 37.50),
(0908, '9781234567018', 6, 154.50),
(0909, '9781234567019', 2, 165.98),
(0909, '9781234567020', 1, 18.80);

