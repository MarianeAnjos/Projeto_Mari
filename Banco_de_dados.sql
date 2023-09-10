CREATE TABLE Produto (
    id SERIAL NOT NULL PRIMARY KEY,
    descricao VARCHAR(60),
	custo NUMERIC (13,3)
);
CREATE TABLE Loja (
	id SERIAL NOT NULL PRIMARY KEY, 
	descricao varchar (60) NOT NULL
);
create TABLE produtoloja(
	id SERIAL NOT NULL,
	idProduto int NOT NULL,
	idLoja int NOT NULL, 
	percaVenda numeric (13,3),
	FOREIGN KEY (idProduto) REFERENCES Produto(id),
	FOREIGN KEY (idLoja) REFERENCES Loja(id)
	
);