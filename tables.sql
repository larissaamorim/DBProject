CREATE TABLE Aluno (
	matricula INT NOT NULL,
	nome VARCHAR(20),
	dt_nasc DATE,
	nivel INT,
	PRIMARY KEY (matricula)
	-- FOREIGN KEY (matricula) REFERENCES professor(matricula),
 	-- FOREIGN KEY (matricula) REFERENCES projeto(codProjeto)

);

CREATE TABLE Professor (
	matricula INT NOT NULL,
	nome VARCHAR(20),
	dt_nasc DATE,
	titulacao VARCHAR(10),
	PRIMARY KEY (matricula)
);

CREATE TABLE Departamento (
	codDepartamento INT NOT NULL,
	endereco VARCHAR(30),
	nome VARCHAR(15),
	telefone INT, --atributo multivalorado
	PRIMARY KEY (codDepartamento) 
);

CREATE TABLE LinhaPesquisa (
	codLinhaPesquisa INT NOT NULL,
	subCnpq INT NOT NULL,
	nomeArea VARCHAR(10),
	nomeSubArea VARCHAR(10),
	PRIMARY KEY (codLinhaPesquisa),
	PRIMARY KEY (subCnpq)
);

CREATE TABLE Laboratorio (
	codLaboratorio INT NOT NULL,
	nome VARCHAR(20),
	local VARCHAR(20),
	PRIMARY KEY (codLaboratorio)
);

-- Recurso é entidade fraca de Laboratio
CREATE TABLE Recurso (
	codigo INT NOT NULL,
	descricao VARCHAR(30)
	
);

CREATE TABLE Projeto (
	codProjeto INT NOT NULL,
	orcamento NUMERIC(7,2),
	titulo VARCHAR(15),
	descricao VARCHAR(30),
	dt_inicio DATE,
	dt_fim DATE,
	PRIMARY KEY (codProjeto)
);

CREATE TABLE AgenciaFinanciadora (
	codAgencia INT NOT NULL,
	nome VARCHAR(15),
	email VARCHAR(30),
	telefone INT, --atributo multivalorado
	endereco VARCHAR(30),
	PRIMARY KEY (codAgencia)
);

CREATE TABLE Publicacao (
	codPublicacao INT NOT NULL,
	titulo VARCHAR(20) NOT NULL,
	veiculo VARCHAR(10),
	ano INT,
	PRIMARY KEY (codPublicacao)
);

CREATE TABLE Patente (
	codPatente INT NOT NULL,
	numReg INT,
	descricao VARCHAR(20),
	PRIMARY KEY (codPatente)
);	
