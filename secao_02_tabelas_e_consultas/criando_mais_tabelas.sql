CREATE TABLE profissao(
	idprofissao INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,

	
	CONSTRAINT pk_prf_idprofissao PRIMARY KEY (idprofissao),
	CONSTRAINT un_prf_nome UNIQUE (nome)
	
);

INSERT INTO profissao(idprofissao, nome) VALUES(1, 'Estudante');
INSERT INTO profissao(idprofissao, nome) VALUES(2, 'Engenheiro');
INSERT INTO profissao(idprofissao, nome) VALUES(3, 'Pedreiro');
INSERT INTO profissao(idprofissao, nome) VALUES(4, 'Professor');


SELECT *
FROM nacionalidade;

CREATE TABLE nacionalidade(
	idnacionalidade INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,

	CONSTRAINT pk_ncn_idnacionalidade PRIMARY KEY (idnacionalidade),
	CONSTRAINT un_ncn_nome UNIQUE (nome)
);

INSERT INTO nacionalidade(idnacionalidade, nome) VALUES (1, 'Brasileira');
INSERT INTO nacionalidade(idnacionalidade, nome) VALUES (2, 'Italiana');
INSERT INTO nacionalidade(idnacionalidade, nome) VALUES (3, 'NOrte-americana');
INSERT INTO nacionalidade(idnacionalidade, nome) VALUES (4, 'Alemã');


UPDATE nacionalidade
SET nome = 'Norte-americana'
WHERE idnacionalidade = 3;

CREATE TABLE complemento(
	idcomplemento INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,

	CONSTRAINT pk_cpl_idcomplemento PRIMARY KEY (idcomplemento),
	CONSTRAINT un_cpl_nome UNIQUE (nome)

);

INSERT INTO complemento (idcomplemento, nome) VALUES (1, 'Casa');
INSERT INTO complemento (idcomplemento, nome) VALUES (2, 'Apartamento');

SELECT *
FROM complemento;

CREATE TABLE bairro(
	idbairro INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,

	CONSTRAINT pk_brr_idbairro PRIMARY KEY (idbairro),
	CONSTRAINT un_brr_nome UNIQUE (nome)
);

INSERT INTO bairro (idbairro, nome) VALUES (1, 'Cidade Nova');
INSERT INTO bairro (idbairro, nome) VALUES (2, 'Centro');
INSERT INTO bairro (idbairro, nome) VALUES (3, 'São Pedro');
INSERT INTO bairro (idbairro, nome) VALUES (4, 'Santa Rosa');

SELECT * 
FROM bairro;