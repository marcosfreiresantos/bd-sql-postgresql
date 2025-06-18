SELECT * 
FROM cliente;

ALTER TABLE cliente RENAME COLUMN profissao TO idprofissao;
ALTER TABLE cliente ALTER COLUMN idprofissao TYPE INTEGER; -- não pode alterar o tipo de dados que a tabela vai receber porque ela já possui dados

--Estudante -> 1, 9, 10, 12, 15, 17
--Engenheiro -> 2
--Pedreiro -> 3
--Jornalista -> 4, 5
--Professor -> 6, 7, 8, 13
--Null -> 11, 14

ALTER TABLE cliente DROP idprofissao;
ALTER TABLE cliente ADD idprofissao INTEGER;

ALTER TABLE cliente ADD CONSTRAINT fk_cln_idprofissao FOREIGN KEY (idprofissao)
REFERENCES profissao (idprofissao);

UPDATE cliente 
SET idprofissao = 1
WHERE idcliente IN (1, 9, 10, 12, 15, 17);

UPDATE cliente
SET idprofissao = 2
WHERE idcliente = 2;

UPDATE cliente
SET idprofissao = 3
WHERE idcliente = 3;

UPDATE cliente
SET idprofissao = 4
WHERE idcliente IN (4, 5);

UPDATE cliente
SET idprofissao = 5
WHERE idcliente IN (6, 7, 8, 13);


SELECT * 
FROM profissao;


UPDATE profissao
SET nome = 'Jornalista'
WHERE idprofissao = 4;

INSERT INTO profissao(idprofissao, nome)
VALUES (5, 'Professor');

SELECT * 
FROM cliente;


SELECT * 
FROM profissao;