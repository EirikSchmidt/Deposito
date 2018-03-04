use Deposito;

create table cliente(
idCliente int identity (1,1) primary key,
Cpf varchar (16) unique not null,
Nome Varchar (20) not null,
Nascimento date not null,
Email varchar(50)not null,
sexo char(2) not null,
Profissao varchar (45));

CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY identity,
	RUA VARCHAR(30) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	Cep varchar(10) not null,
	ESTADO CHAR(2) NOT NULL,
	ID_CLIENTE INT UNIQUE,
	FOREIGN KEY(ID_CLIENTE)
	REFERENCES Cliente(idCliente),
	ID_Transportadora INT UNIQUE,
	FOREIGN KEY(ID_Transportadora)
	REFERENCES Transportadora(idtransportadora),
	ID_Fornecedores int unique,
	foreign key(ID_Fornecedores)
	references Fornecedores(idfornecedores),
	ID_Funcionario int unique,
	foreign key(ID_Funcionario)
	references Funcionarios(idfuncionario)	
);
Create table Transportadora(
idtransportadora int primary key identity,
Nome varchar (45) not null,
Cnpj varchar(45)not null);

Create table Fornecedores(
idfornecedores int primary key identity,
Nome varchar (45) not null,
email varchar(45) not null,
cnpj varchar (45)not null,
observacoes varchar(300));

Create table Funcionarios(
idfuncionario int primary key identity,
Nome Varchar(45) not null,
RG varchar(45) unique,
CPF varchar (45) unique,
Nascimento date,
Cargo varchar (45) not null,
diaPagamento int not null
);
 CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY identity,
	TIPO char(3),
	NUMERO VARCHAR(10),
	ID_CLIENTE INT,
	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(IDCLIENTE),
	ID_Transportadora INT UNIQUE,
	FOREIGN KEY(ID_Transportadora)
	REFERENCES Transportadora(idtransportadora),
	ID_Fornecedores int unique,
	foreign key(ID_Fornecedores)
	references Fornecedores(idfornecedores),
	ID_Funcionario int unique,
	foreign key(ID_Funcionario)
	references Funcionarios(idfuncionario)	
);
 
 

 