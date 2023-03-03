CREATE DATABASE SENAC_RESILIA;
USE SENAC_RESILIA;

CREATE TABLE Alunos (
  matriculaAluno INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(45) NOT NULL,
  DataNascimento DATE NOT NULL,
  Endereco VARCHAR(65) NOT NULL,
  Email VARCHAR(65) NOT NULL,
  Telefone VARCHAR(20) NOT NULL
);

CREATE TABLE Professores (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(45) NOT NULL,
  Email VARCHAR(55) NOT NULL,
  Telefone VARCHAR(20) NOT NULL,
  Especializacao VARCHAR(100) NOT NULL
);

CREATE TABLE Cursos (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(45) NOT NULL,
  ProfessorResponsavel INT NOT NULL,
  FOREIGN KEY (ProfessorResponsavel) REFERENCES Professores(ID)
);

CREATE TABLE Disciplinas (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(45) NOT NULL,
  ProfessorResponsavel INT NOT NULL,
  FOREIGN KEY (ProfessorResponsavel) REFERENCES Professores(ID)
);

CREATE TABLE Turmas (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Aluno INT NOT NULL,
  Curso INT NOT NULL,
  FOREIGN KEY (Aluno) REFERENCES Alunos(matriculaAluno),
  FOREIGN KEY (Curso) REFERENCES Cursos(ID)
);

CREATE TABLE Notas (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Aluno INT NOT NULL,
  Disciplina INT NOT NULL,
  Nota FLOAT,
  FOREIGN KEY (Aluno) REFERENCES Alunos(matriculaAluno),
  FOREIGN KEY (Disciplina) REFERENCES Disciplinas(ID)
);
