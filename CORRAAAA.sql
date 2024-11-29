CREATE TABLE Familia (
    ID_Familia INT PRIMARY KEY,
    NomeFamilia CHAR(255)
);

CREATE TABLE Contexto_SocioCultural (
    ID_Contexto_SocioCultural INT,
    Regiao CHAR(255),
    Classe_Social CHAR(255),
    Fator_Social CHAR(255),
    Tipo_de_Identidade CHAR(255)
);

CREATE TABLE Personagem (
    Nome_Personagem CHAR(255),
    Etnia_Personagem CHAR(255),
    ID_Personagem INT PRIMARY KEY,
    Genero_Personagem CHAR(255)
);

CREATE TABLE MembroFamilia_Tem (
    ID_MembroFamilia INT PRIMARY KEY,
    Funcao CHAR(255),
    fk_Personagem_ID_Personagem INT,
    fk_Familia_ID_Familia INT
);

CREATE TABLE Tratamento (
    Fase_Tratamento NUMBER,
    ID_Tratamento INT PRIMARY KEY,
    Nome_Tratamento CHAR(255)
);

CREATE TABLE Recebe (
    fk_Tratamento_ID_Tratamento INT,
    fk_Personagem_ID_Personagem INT
);

CREATE TABLE Tem_Contexto_SocioCultural_Personagem_Familia (
    fk_Personagem_ID_Personagem INT,
    fk_Familia_ID_Familia INT
);
 
ALTER TABLE MembroFamilia_Tem ADD CONSTRAINT FK_MembroFamilia_Tem_2
    FOREIGN KEY (fk_Personagem_ID_Personagem)
    REFERENCES Personagem (ID_Personagem);
 
ALTER TABLE MembroFamilia_Tem ADD CONSTRAINT FK_MembroFamilia_Tem_3
    FOREIGN KEY (fk_Familia_ID_Familia)
    REFERENCES Familia (ID_Familia);
 
ALTER TABLE Recebe ADD CONSTRAINT FK_Recebe_1
    FOREIGN KEY (fk_Tratamento_ID_Tratamento)
    REFERENCES Tratamento (ID_Tratamento)
    ON DELETE RESTRICT;
 
ALTER TABLE Recebe ADD CONSTRAINT FK_Recebe_2
    FOREIGN KEY (fk_Personagem_ID_Personagem)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE RESTRICT;
 
ALTER TABLE Tem_Contexto_SocioCultural_Personagem_Familia ADD CONSTRAINT FK_Tem_Contexto_SocioCultural_Personagem_Familia_1
    FOREIGN KEY (fk_Personagem_ID_Personagem)
    REFERENCES Personagem (ID_Personagem)
    ON DELETE NO ACTION;
 
ALTER TABLE Tem_Contexto_SocioCultural_Personagem_Familia ADD CONSTRAINT FK_Tem_Contexto_SocioCultural_Personagem_Familia_2
    FOREIGN KEY (fk_Familia_ID_Familia)
    REFERENCES Familia (ID_Familia)
    ON DELETE NO ACTION;
	
	insert into personagem (nome_personagem, etnia_personagem, id_personagem, genero_personagem)
	values ('Chris Washington', 'Afroamericano', 1, 'homem'),
	('Rose Armitage', 'Caucasiano', 2, 'mulher'),
	('Missy Armitage', 'Caucasiano', 3, 'mulher'),
	('Jeremy Armitage', 'Caucasiano', 4, 'homem'),
	('Dean Armitage',  'Caucasiano', 5, 'homem'),
	('Romam Armitage', 'Caucasiano', 6, 'homem'),
	('Georgina', 'Afroamericano', 7, 'mulher'),
	()