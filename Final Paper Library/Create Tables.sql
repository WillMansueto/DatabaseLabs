-- Limpeza das tabelas
DROP TABLE Banca;
DROP TABLE TCC;
DROP TABLE Aluno;
DROP TABLE Professor;
DROP TABLE Curso;

-- Criação da tabela Curso
CREATE TABLE Curso (
  id_curso NUMERIC(10) PRIMARY KEY,
  nome_curso VARCHAR(50),
  ativo CHAR(1),
  CONSTRAINT ck_ativo_curso CHECK (ativo IN('S','N'))
);

-- Criação da tabela Professor
CREATE TABLE Professor (
  id_professor NUMERIC(10) PRIMARY KEY,
  nome VARCHAR(100),
  ativo CHAR(1),
  CONSTRAINT ck_ativo CHECK (ativo IN('S','N'))
);

-- Criação da tabela Aluno
CREATE TABLE Aluno (
  id_aluno NUMERIC(10) PRIMARY KEY,
  nome VARCHAR(100),
  registro_academico VARCHAR(20) UNIQUE,
  ano_semestre_ingresso VARCHAR(10),
  ano_semestre_conclusao VARCHAR(10),
  id_curso NUMERIC(10),
  ativo CHAR(1),
  CONSTRAINT fk_curso_aluno FOREIGN KEY (id_curso) REFERENCES Curso(id_curso),
  CONSTRAINT ck_ativo_aluno CHECK (ativo IN('S','N'))
);

-- Criação da tabela TCC
CREATE TABLE TCC (
  id_tcc NUMERIC(10) PRIMARY KEY,
  titulo VARCHAR(200),
  nome_arquivo VARCHAR(200),
  id_aluno NUMERIC(10),
  id_orientador NUMERIC(10),
  data_hora_apresentacao TIMESTAMP,
  ativo CHAR(1),
  CONSTRAINT fk_aluno_tcc FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
  CONSTRAINT fk_professor_orientador FOREIGN KEY (id_orientador) REFERENCES Professor(id_professor),
  CONSTRAINT ck_ativo_tcc CHECK (ativo IN('S','N'))
);

-- Criação da tabela Banca
CREATE TABLE Banca (
  id_banca NUMERIC(10) PRIMARY KEY,
  id_tcc NUMERIC(10),
  id_professor1 NUMERIC(10),
  id_professor2 NUMERIC(10),
  ativo CHAR(1),
  CONSTRAINT fk_tcc_banca FOREIGN KEY (id_tcc) REFERENCES TCC(id_tcc),
  CONSTRAINT fk_professor1_banca FOREIGN KEY (id_professor1) REFERENCES Professor(id_professor),
  CONSTRAINT fk_professor2_banca FOREIGN KEY (id_professor2) REFERENCES Professor(id_professor),
  CONSTRAINT ck_professores_diferentes CHECK (id_professor1 != id_professor2),
  CONSTRAINT ck_ativo_banca CHECK (ativo IN('S','N'))
);
