-- Inserção na tabela Curso
INSERT INTO Curso (id_curso, nome_curso) VALUES (1, 'Sistemas Biomédicos');

INSERT INTO Curso (id_curso, nome_curso) VALUES (2, 'Automação Industrial');

INSERT INTO Curso (id_curso, nome_curso) VALUES (3, 'Banco de Dados');

INSERT INTO Curso (id_curso, nome_curso) VALUES (4, 'Redes de Computadores');

-- Inserção na tabela Aluno

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (1,  'João da Silva',    '119490', '2020/1', '2023/2', 1);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (2,  'Maria Santos',     '812760', '2020/1', '2023/2', 1);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (3,  'Carla Ferreira',   '123456', '2020/1', '2023/2', 1);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (4,  'João Santos',      '234567', '2020/1', '2023/2', 1);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (5,  'Gabriel Pereira',  '929963', '2020/1', '2023/2', 2);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (6,  'Ana Silva',        '201458', '2020/1', '2023/2', 2);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (7,  'Pedro Almeida',    '196362', '2020/1', '2023/2', 2);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (8,  'Maria Oliveira',   '966462', '2020/1', '2023/2', 2);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (9,  'Bianca Castro',    '804711', '2020/1', '2023/2', 3);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (10, 'Juliana Costa',    '169136', '2020/1', '2023/2', 3);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (11, 'Gustavo Oliveira', '170342', '2020/1', '2023/2', 3);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (12, 'Bruno Oliveira',   '779036', '2020/1', '2023/2', 3);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (13, 'Mariana Lima',     '566235', '2020/1', '2023/2', 4);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (14, 'Thiago Silva',     '359309', '2020/1', '2023/2', 4);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (15, 'Henrique Alves',   '443974', '2020/1', '2023/2', 4);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (16, 'Giovanna Ribeiro', '924492', '2020/1', '2023/2', 4);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (17, 'Marcelo Cardoso',  '798802', '2020/1', '2023/2', 3);

INSERT INTO Aluno (id_aluno, nome, registro_academico, ano_semestre_ingresso, ano_semestre_conclusao, id_curso)
VALUES (18, 'Daniel Souza',     '284822', '2020/1', '2023/2', 3);

-- Inserção na tabela Professor
INSERT INTO Professor (id_professor, nome) VALUES (1,  'Carlos Souza');
INSERT INTO Professor (id_professor, nome) VALUES (2,  'Fernanda Rodrigues');
INSERT INTO Professor (id_professor, nome) VALUES (3,  'Ana Paula Silva');
INSERT INTO Professor (id_professor, nome) VALUES (4,  'Lucas Cardoso');
INSERT INTO Professor (id_professor, nome) VALUES (5,  'Rafael Souza');
INSERT INTO Professor (id_professor, nome) VALUES (6,  'Camila Lima');
INSERT INTO Professor (id_professor, nome) VALUES (7,  'Letícia Santos');
INSERT INTO Professor (id_professor, nome) VALUES (8,  'Carolina Gomes');
INSERT INTO Professor (id_professor, nome) VALUES (9,  'Victor Santos');
INSERT INTO Professor (id_professor, nome) VALUES (10, 'Bruna Carvalho');
INSERT INTO Professor (id_professor, nome) VALUES (11, 'Matheus Rodrigues');
INSERT INTO Professor (id_professor, nome) VALUES (12, 'Lucas Rocha');
INSERT INTO Professor (id_professor, nome) VALUES (13, 'Isabella Martins');
INSERT INTO Professor (id_professor, nome) VALUES (14, 'Rodrigo Mendes');
INSERT INTO Professor (id_professor, nome) VALUES (15, 'Luiza Pereira');
INSERT INTO Professor (id_professor, nome) VALUES (16, 'Amanda Costa');


-- Inserção na tabela TCC
-- BANCO DE DADOS:
INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (1, 'Uso de técnicas de mineração de dados para análise de vendas em e-commerce', 
        'D:/TCC/Banco_de_Dados/01.pdf', 9, 1, TO_TIMESTAMP('2023-12-12 08:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (2, 'Desenvolvimento de um sistema de gerenciamento de banco de dados NoSQL para Big Data', 
        'D:/TCC/Banco_de_Dados/02.pdf', 10, 2, TO_TIMESTAMP('2023-12-12 08:30:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (3, 'Análise de desempenho de Sistemas de Gerenciamento de Bancos de Dados (SGBD) em ambientes distribuídos', 
        'D:/TCC/Banco_de_Dados/03.pdf', 11, 3, TO_TIMESTAMP('2023-12-12 09:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (4, 'Modelagem de banco de dados para aplicativos móveis utilizando SQLite', 
        'D:/TCC/Banco_de_Dados/04.pdf', 12, 4, TO_TIMESTAMP('2023-12-12 09:30:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (5, 'Sistemas de recomendação personalizados baseados em dados de histórico de compras de clientes', 
        'D:/TCC/Banco_de_Dados/05.pdf', 17, 5, TO_TIMESTAMP('2023-12-12 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (6, 'Desenvolvimento de um sistema de gerenciamento de banco de dados para análise de dados climáticos em tempo real', 
        'D:/TCC/Banco_de_Dados/06.pdf', 18, 6, TO_TIMESTAMP('2023-12-12 10:30:00', 'YYYY-MM-DD HH24:MI:SS'));

-- Sistemas Biomédicos
INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (7, 'Desenvolvimento de um sistema de processamento de imagens para análise de microscopia confocal', 
        'D:/TCC/Sistemas_Biomedicos/01.pdf', 1, 7, TO_TIMESTAMP('2023-12-13 09:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (8, 'Avaliação de algoritmos de machine learning na identificação de padrões em sinais biomédicos', 
        'D:/TCC/Sistemas_Biomedicos/02.pdf', 2, 8, TO_TIMESTAMP('2023-12-13 09:30:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (9, 'Estudo de técnicas de processamento de sinais para identificação de padrões em eletrocardiogramas', 
        'D:/TCC/Sistemas_Biomedicos/03.pdf', 3, 9, TO_TIMESTAMP('2023-12-13 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (10, 'Desenvolvimento de um sistema de monitoramento de pacientes em tempo real utilizando sensores e dispositivos móveis', 
        'D:/TCC/Sistemas_Biomedicos/04.pdf', 4, 10, TO_TIMESTAMP('2023-12-13 10:30:00', 'YYYY-MM-DD HH24:MI:SS'));

-- Automação Industrial
INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (11, 'Desenvolvimento de um sistema de controle de processos industriais baseado em IoT (Internet of Things)', 
        'D:/TCC/Automacao_Industrial/01.pdf', 5, 11, TO_TIMESTAMP('2023-12-14 09:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (12, 'Estudo de técnicas de controle PID para aplicação em sistemas de automação industrial', 
        'D:/TCC/Automacao_Industrial/02.pdf', 6, 12, TO_TIMESTAMP('2023-12-14 09:30:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (13, 'Análise de desempenho de redes de comunicação industrial em ambientes de alta interferência eletromagnética', 
        'D:/TCC/Automacao_Industrial/03.pdf', 7, 13, TO_TIMESTAMP('2023-12-14 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (14, 'Desenvolvimento de um sistema de controle de robôs industriais utilizando visão computacional e algoritmos de inteligência artificial', 
        'D:/TCC/Automacao_Industrial/04.pdf', 8, 14, TO_TIMESTAMP('2023-12-14 10:30:00', 'YYYY-MM-DD HH24:MI:SS'));

-- Redes de Computadores
INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (15, 'Análise de desempenho de protocolos de roteamento em redes sem fio ad hoc', 
        'D:/TCC/Redes_de_Computadores/01.pdf', 13, 15, TO_TIMESTAMP('2023-12-15 09:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (16, 'Estudo de técnicas de virtualização de redes para implantação de infraestruturas de nuvem privada', 
        'D:/TCC/Redes_de_Computadores/02.pdf', 14, 16, TO_TIMESTAMP('2023-12-15 09:30:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (17, 'Desenvolvimento de um sistema de monitoramento de redes de computadores em tempo real utilizando análise de fluxo', 
        'D:/TCC/Redes_de_Computadores/03.pdf', 15, 1, TO_TIMESTAMP('2023-12-15 10:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO TCC (id_tcc, titulo, nome_arquivo, id_aluno, id_orientador, data_hora_apresentacao) VALUES
    (18, 'Análise de segurança de redes de sensores sem fio em aplicações de Internet das Coisas (IoT)', 
        'D:/TCC/Redes_de_Computadores/04.pdf', 16, 2, TO_TIMESTAMP('2023-12-15 10:30:00', 'YYYY-MM-DD HH24:MI:SS'));


-- Inserção na tabela Banca
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (1,  1,  2,  3);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (2,  2,  4,  5);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (3,  3,  6,  7);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (4,  4,  8,  9);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (5,  5,  10, 11);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (6,  6,  12, 13);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (7,  7,  14, 15);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (8,  8,  16, 1);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (9,  9,  2,  3);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (10, 10, 4,  5);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (11, 11, 6,  7);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (12, 12, 8,  9);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (13, 13, 10, 11);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (14, 14, 12, 13);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (15, 15, 14, 16);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (16, 16, 15, 1);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (17, 17, 5,  6);
INSERT INTO Banca (id_banca, id_tcc, id_professor1, id_professor2) VALUES (18, 18, 8,  9);
