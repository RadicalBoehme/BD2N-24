
CREATE TABLE Personagens (
    ID_Personagem INT PRIMARY KEY,
    Nome CHAR(253),
    Afiliacao CHAR(253),
    Descricao CHAR(253),
    Hab_Especial CHAR(253),
    Hab__Especial CHAR(253),
    Personagens_TIPO CHAR(253)
);

CREATE TABLE Itens (
    ID_Itens INT PRIMARY KEY,
    Nome CHAR(253),
    Raridade CHAR(253),
    Efeito CHAR(253),
    Tipo CHAR(253)
);

CREATE TABLE Locais (
    Tipo CHAR(253),
    Descricao CHAR(253),
    ID_Locais INT PRIMARY KEY,
    Nome CHAR(253)
);

CREATE TABLE E__Assoc__2_Tem (
    Quantidade INT,
    fk_Personagens_ID_Personagem INT,
    fk_Itens_ID_Itens INT
);

CREATE TABLE Aparecem (
    fk_Itens_ID_Itens INT,
    fk_Locais_ID_Locais INT
);

CREATE TABLE Vai_Personagens_Locais_Itens (
    fk_Personagens_ID_Personagem INT,
    fk_Locais_ID_Locais INT,
    fk_Itens_ID_Itens INT
);
 
ALTER TABLE E__Assoc__2_Tem ADD CONSTRAINT FK_E__Assoc__2_Tem_1
    FOREIGN KEY (fk_Personagens_ID_Personagem)
    REFERENCES Personagens (ID_Personagem);
 
ALTER TABLE E__Assoc__2_Tem ADD CONSTRAINT FK_E__Assoc__2_Tem_2
    FOREIGN KEY (fk_Itens_ID_Itens)
    REFERENCES Itens (ID_Itens);
 
ALTER TABLE Aparecem ADD CONSTRAINT FK_Aparecem_1
    FOREIGN KEY (fk_Itens_ID_Itens)
    REFERENCES Itens (ID_Itens)
    ON DELETE SET NULL;
 
ALTER TABLE Aparecem ADD CONSTRAINT FK_Aparecem_2
    FOREIGN KEY (fk_Locais_ID_Locais)
    REFERENCES Locais (ID_Locais)
    ON DELETE SET NULL;
 
ALTER TABLE Vai_Personagens_Locais_Itens ADD CONSTRAINT FK_Vai_Personagens_Locais_Itens_1
    FOREIGN KEY (fk_Personagens_ID_Personagem)
    REFERENCES Personagens (ID_Personagem)
    ON DELETE NO ACTION;
 
ALTER TABLE Vai_Personagens_Locais_Itens ADD CONSTRAINT FK_Vai_Personagens_Locais_Itens_2
    FOREIGN KEY (fk_Locais_ID_Locais)
    REFERENCES Locais (ID_Locais)
    ON DELETE NO ACTION;
 
ALTER TABLE Vai_Personagens_Locais_Itens ADD CONSTRAINT FK_Vai_Personagens_Locais_Itens_3
    FOREIGN KEY (fk_Itens_ID_Itens)
    REFERENCES Itens (ID_Itens)
    ON DELETE NO ACTION;