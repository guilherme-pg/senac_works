-- Editora DML todos os inserts

-- table LIVROS
INSERT INTO `editora_trio`.`Livros` (`ISBN`, `titulo`, `editora`, `paginas`, `ano_publicacao`, `genero`, `descricao`, `valor`, `estoque`) VALUES
(9781234567001, 'Brasil Império e outras Aventuras', 'Editora Trio', 174, 2017, 'História', 'História do Brasil: 189-1930', 35.50, 27),
(9781234567002, 'Industrialização Brasileira: 1889-1985', 'Editora Trio', 250, 2003, 'História', 'Descrição do Livro 2', 30.75, 150),
(9781234567003, 'História de Pernambuco', 'Editora Trio', 320, 2021, 'História', 'História Geral de Pernambuco', 122.99, 14),
(9781234567004, 'Confederação do Equador', 'Editora Trio', 280, 2018, 'História', 'História sobre o Espírito Revolucionário no Nordeste', 47.80, 120),
(9781234567005, 'História da Economia Pernambucana', 'Editora Trio', 350, 2022, 'História', 'Evolução da Economia Pernambucana desde a chegada dos Portugueses até o ano 1988', 35.00, 91),
(9781234567006, 'Legilação Penal Comentada', 'Editora Trio', 310, 2017, 'Direito', 'Comentários as principais Leis do Direito Penal', 48.50, 110),
(9781234567007, 'Direito Tributário para Startups', 'Editora Trio', 280, 2020, 'Direito', 'noções de direito tributário para empreendedores', 26.75, 31),
(9781234567008, 'Teoria do Direito', 'Editora Trio', 330, 2011, 'Direito', 'introdução aos principais conceitos jurídicos', 72.99, 78),
(9781234567009, 'Direito e Justiça', 'Editora Trio', 290, 2021, 'Direito', 'filosofia do direito na política da justiça do judiciário', 69.80, 85),
(9781234567010, 'Manual de Direito Administrastivo', 'Editora Trio', 270, 2018, 'Direito', 'manual para estudantes de direito administrativo', 24.50, 05),
(9781234567011, 'Manual de Java', 'Editora Trio', 320, 2022, 'Informática', 'manual para estudantes de Java', 31.75, 114),
(9781234567012, 'Entendendo SQL', 'Editora Trio', 290, 2007, 'Informática', 'manual para estudantes aprenderem SQL', 128.99, 75),
(9781234567013, 'PHP: A Linguagem do Futuro', 'Editora Trio', 300, 2020, 'Informática', 'livro de filosofia e informática', 26.80, 105),
(9781234567014, 'O futuro do COBOL', 'Editora Trio', 280, 1999, 'Informática', 'projeções sobre as possibilidades do uso de COBOL', 23.50, 115),
(9781234567015, 'HTML e CSS', 'Editora Trio', 330, 2021, 'Informática', 'manual de HTML e CSS para estudantes', 30.99, 65),
(9781234567016, 'Python e Spark', 'Editora Trio', 310, 2018, 'Informática', 'introdução ao uso de spark com python', 29.80, 88),
(9781234567017, 'Pessoas e Sujeitos', 'Editora Trio', 300, 1998, 'Filosofia', 'reflexões sobre a diferença entre seres Humanos', 37.50, 101),
(9781234567018, 'Sujeitos e Sujeitados', 'Editora Trio', 290, 2017, 'Filosofia', 'reflexões sobre a relação entre direito e seres humanos', 25.75, 22),
(9781234567019, 'I.A. e vontade', 'Editora Trio', 320, 2000, 'Filosofia', 'reflexões sobre a identidade humana e das I.A.', 82.99, 19),
(9781234567020, 'O Segredo da Mente Milionária', 'Editora Trio', 270, 2019, 'Ficção', 'coletânea de contros', 18.80, 120),
(9781234567021, 'O Futuro do Brasil e Outras Histórias', 'Editora Trio', 340, 2021, 'Mistério', 'coletânea de contros', 226.50, 85);



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
(0314, 'Gênero literário que explora aventuras épicas e mundos imaginários.', 'Fantasia');



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
(0500, 'Prateleira A-1', 'Novo', 9781234567001),
(0501, 'Prateleira B-3', 'Excelente', 9781234567002),
(0502, 'Prateleira C-2', 'Usado', 9781234567003),
(0503, 'Prateleira D-5', 'Bom', 9781234567004),
(0504, 'Prateleira A-2', 'Novo', 9781234567005),
(0505, 'Prateleira B-1', 'Excelente', 9781234567006),
(0506, 'Prateleira C-3', 'Usado', 9781234567007),
(0507, 'Prateleira D-4', 'Bom', 9781234567008),
(0508, 'Prateleira A-3', 'Novo', 9781234567009),
(0509, 'Prateleira B-2', 'Excelente', 9781234567010),
(0510, 'Prateleira C-1', 'Usado', 9781234567011),
(0511, 'Prateleira D-6', 'Bom', 9781234567012),
(0512, 'Prateleira A-4', 'Novo', 9781234567013),
(0513, 'Prateleira B-5', 'Excelente', 9781234567014),
(0514, 'Prateleira C-4', 'Usado', 9781234567009),
(0515, 'Prateleira D-7', 'Bom', 9781234567016),
(0516, 'Prateleira A-5', 'Novo', 9781234567017),
(0517, 'Prateleira B-6', 'Excelente', 9781234567001),
(0518, 'Prateleira C-5', 'Usado', 9781234567019),
(0519, 'Prateleira D-8', 'Bom', 9781234567020),
(0520, 'Prateleira A-6', 'Novo', 9781234567021),
(0521, 'Prateleira B-7', 'Excelente', 9781234567022),
(0522, 'Prateleira C-6', 'Usado', 9781234567001),
(0523, 'Prateleira D-9', 'Bom', 9781234567008),
(0524, 'Prateleira A-7', 'Novo', 9781234567025),
(0525, 'Prateleira B-8', 'Excelente', 9781234567008),
(0526, 'Prateleira C-7', 'Usado', 9781234567001),
(0527, 'Prateleira D-10', 'Bom', 9781234567011),
(0528, 'Prateleira A-8', 'Novo', 9781234567011),
(0529, 'Prateleira B-9', 'Excelente', 9781234567001);



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
(0900, 'Cartão', '2023-06-01', 150.00, 10.00, 0800, 1000, 0700),
(0901, 'Dinheiro', '2023-06-01', 200.00, 15.00, 0801, 1000, 0701),
(0902, 'Cartão', '2023-06-02', 180.00, 12.00, 0802, 1002, 0702),
(0903, 'Dinheiro', '2023-06-02', 220.00, 18.00, 0803, 1003, 0703),
(0904, 'Cartão', '2023-06-03', 250.00, 20.00, 0804, 1004, 0704),
(0905, 'Dinheiro', '2023-06-03', 210.00, 14.00, 0805, 1005, 0705),
(0906, 'Cartão', '2023-06-04', 190.00, 13.00, 0806, 1006, 0706),
(0907, 'Dinheiro', '2023-06-04', 260.00, 22.00, 0807, 1007, 0707),
(0908, 'Cartão', '2023-06-05', 230.00, 19.00, 0808, 1008, 0708),
(0909, 'Dinheiro', '2023-06-05', 270.00, 23.00, 0809, 1009, 0709),
(0910, 'Cartão', '2023-06-06', 200.00, 15.00, 0810, 1010, 0710),
(0911, 'Dinheiro', '2023-06-06', 290.00, 25.00, 0811, 1011, 0711),
(0912, 'Cartão', '2023-06-07', 210.00, 16.00, 0812, 1012, 0712),
(0913, 'Dinheiro', '2023-06-07', 310.00, 26.00, 0813, 1013, 0713),
(0914, 'Cartão', '2023-06-08', 240.00, 20.00, 0814, 1014, 0714),
(0915, 'Dinheiro', '2023-06-08', 330.00, 28.00, 0815, 1015, 0715),
(0916, 'Cartão', '2023-06-09', 260.00, 21.00, 0816, 1016, 0716),
(0917, 'Dinheiro', '2023-06-09', 350.00, 30.00, 0817, 1017, 0717);



-- table CLIENTES
INSERT INTO `editora_trio`.`Clientes` (`ID_cliente`, `nome`, `telefone`, `email`, `Endereco_ID_endereco`) VALUES
(0800, 'Ana Silva', 1122334455, 'ana.silva@email.com', 0700),
(0801, 'Carlos Oliveira', 9988776655, 'carlos.oliveira@email.com', 0701),
(0802, 'Mariana Santos', 9876543210, 'mariana.santos@email.com', 0702),
(0803, 'Lucas Lima', 9543217890, 'lucas.lima@email.com', 0703),
(0804, 'Juliana Costa', 9321564870, 'juliana.costa@email.com', 0704),
(0805, 'Ricardo Fernandes', 9658741023, 'ricardo.fernandes@email.com', 0705),
(0806, 'Camila Oliveira', 9132547098, 'camila.oliveira@email.com', 0706),
(0807, 'Eduardo Costa', 9887432156, 'eduardo.costa@email.com', 0707),
(0808, 'Patricia Lima', 9321456789, 'patricia.lima@email.com', 0708),
(0809, 'Fernando Silva', 9765432109, 'fernando.silva@email.com', 0709),
(0810, 'Beatriz Oliveira', 9976321456, 'beatriz.oliveira@email.com', 0710),
(0811, 'Roberto Lima', 9987456321, 'roberto.lima@email.com', 0711),
(0812, 'Helena Costa', 9888745632, 'helena.costa@email.com', 0712),
(0813, 'Guilherme Oliveira', 9678452310, 'guilherme.oliveira@email.com', 0713),
(0814, 'Amanda Santos', 9225478963, 'amanda.santos@email.com', 0714),
(0815, 'Carlos Fernandes', 9332156897, 'carlos.fernandes@email.com', 0715),
(0816, 'Renata Costa', 9456213789, 'renata.costa@email.com', 0716),
(0817, 'Lucas Oliveira', 9658745123, 'lucas.oliveira@email.com', 0717),
(0818, 'Cristina Lima', 9321564870, 'cristina.lima@email.com', 0718),
(0819, 'Gustavo Santos', 9987632156, 'gustavo.santos@email.com', 0719),
(0820, 'Aline Oliveira', 9765231478, 'aline.oliveira@email.com', 0707),
(0821, 'Felipe Lima', 9658741023, 'felipe.lima@email.com', 0701),
(0822, 'Isabela Costa', 9445612378, 'isabela.costa@email.com', 0712),
(0823, 'Vitor Santos', 9774512369, 'vitor.santos@email.com', 0713),
(0824, 'Julia Oliveira', 9332541098, 'julinha.oliveira@email.com', 0702),
(0825, 'Rafael Silva', 9874321546, 'rafael.silva@email.com', 0720);



-- table PEDIDOS
INSERT INTO `editora_trio`.`Pedidos` (`ID_pedido`, `data_pedido`, `quantidade`, `status_pedido`, `Vendas_ID_venda`, `Cliente_ID_cliente`, `Cliente_Endereco_ID_endereco`, `Vendas_ID_venda1`) VALUES
(1100, '2023-09-01', 5, 'Em Processamento', 1000, 0500, 0700, 0900),
(1101, '2023-09-02', 3, 'Entregue', 1001, 0501, 0701, 0901),
(1102, '2023-09-03', 2, 'Em Processamento', 1002, 0502, 0702, 0902),
(1103, '2023-09-04', 7, 'Atrasado', 1003, 0503, 0703, 0903),
(1104, '2023-09-05', 1, 'Entregue', 1004, 0504, 0704, 0904),
(1105, '2023-09-06', 4, 'Em Processamento', 1005, 0505, 0705, 0905),
(1106, '2023-09-07', 6, 'Atrasado', 1006, 0506, 0706, 0906),
(1107, '2023-09-08', 2, 'Entregue', 1007, 0507, 0707, 0907),
(1108, '2023-09-09', 3, 'Em Processamento', 1008, 0508, 0708, 0908),
(1109, '2023-09-10', 5, 'Atrasado', 1009, 0509, 0709, 0909),
(1110, '2023-09-11', 2, 'Entregue', 1010, 0510, 0710, 0910),
(1111, '2023-09-12', 4, 'Em Processamento', 1011, 0511, 0711, 0911),
(1112, '2023-09-13', 1, 'Atrasado', 1012, 0512, 0712, 0912),
(1113, '2023-09-14', 3, 'Entregue', 1013, 0513, 0713, 0913),
(1114, '2023-09-15', 6, 'Em Processamento', 1014, 0514, 0714, 0914),
(1115, '2023-09-16', 2, 'Atrasado', 1015, 0515, 0715, 0915),
(1116, '2023-09-17', 4, 'Entregue', 1016, 0516, 0716, 0916),
(1117, '2023-09-18', 3, 'Em Processamento', 1017, 0517, 0717, 0917),
(1118, '2023-09-19', 5, 'Atrasado', 1018, 0518, 0718, 0918),
(1119, '2023-09-20', 2, 'Entregue', 1019, 0519, 0719, 0919),
(1120, '2023-09-21', 1, 'Em Processamento', 1020, 0520, 0720, 0920);



-- palavras_chave_has_Livros
INSERT INTO `editora_trio`.`palavras_chave_has_Livros` (`palavras_chave_ID_palavra_chave`, `Livros_ISBN`) VALUES
(2340, 9781234567890),
(2341, 9782345678901),
(2342, 9783456789012),
(2343, 9784567890123),
(2344, 9785678901234),
(2345, 9786789012345),
(2346, 9787890123456),
(2347, 9788901234567),
(2348, 9789012345678),
(2349, 9780123456789),
(2350, 9781234500000),
(2351, 9782345600000),
(2352, 9783456700000),
(2353, 9784567800000),
(2354, 9785678900000),
(2355, 9786789000000),
(2356, 9787890100000),
(2357, 9788901200000),
(2358, 9789012300000),
(2359, 9780123400000);



-- Livros_has_area_de_conhecimento
INSERT INTO `editora_trio`.`Livros_has_area_de_conhecimento` (`Livros_ISBN`, `area_de_conhecimento_ID`) VALUES
(9781234567890, 0301),
(9782345678901, 0302),
(9783456789012, 0303),
(9784567890123, 0304),
(9785678901234, 0305),
(9786789012345, 0306),
(9787890123456, 0307),
(9788901234567, 0308),
(9789012345678, 0309),
(9780123456789, 0310),
(9781234500000, 0311),
(9782345600000, 0312),
(9783456700000, 0313),
(9784567800000, 0314),
(9785678900000, 0315),
(9786789000000, 0316),
(9787890100000, 0317),
(9788901200000, 0318),
(9789012300000, 0319),
(9780123400000, 0320);



-- Livros_has_autores
INSERT INTO `editora_trio`.`Livros_has_autores` (`Livros_ISBN`, `autores_ID`) VALUES
(9781234567890, 0401),
(9782345678901, 0402),
(9783456789012, 0403),
(9784567890123, 0404),
(9785678901234, 0405),
(9786789012345, 0406),
(9787890123456, 407),
(9788901234567, 408),
(9789012345678, 0409),
(9780123456789, 0410),
(9781234500000, 0411),
(9782345600000, 0412),
(9783456700000, 0413),
(9784567800000, 0414),
(9785678900000, 0415),
(9786789000000, 0416),
(9787890100000, 0417),
(9788901200000, 0418),
(9789012300000, 0419),
(9780123400000, 0420);




-- Pedidos_has_Livros
INSERT INTO `editora_trio`.`Pedidos_has_Livros` (`Pedidos_ID_pedido`, `Livros_ISBN`) VALUES
(0500, 9781234567890),
(0501, 9782345678901),
(0502, 9783456789012),
(0503, 9784567890123),
(0504, 9785678901234),
(0505, 9786789012345),
(0506, 9787890123456),
(0507, 9788901234567),
(0508, 9789012345678),
(0509, 9780123456789),
(0510, 9781234500000),
(0511, 9782345600000),
(0512, 9783456700000),
(0513, 9784567800000),
(0514, 9785678900000),
(0515, 9786789000000),
(0516, 9787890100000),
(0517, 9788901200000),
(0518, 9789012300000),
(0519, 9780123400000);


