-- 1. Insira os dados abaixo na tabela de clientes

INSERT INTO cliente(idcliente, nome, cpf, rg, genero, profissao, municipio, uf)
VALUES( 16, 'Maicon', '12349555512', '1234', 'F', 'Empresário', 'Porto União', 'SC');


INSERT INTO cliente(idcliente, nome, rg, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES( 17, 'Getulio', '4631', 'F', 'Estudante', 'Brasileira', 'Rua Central', '343', 'Apartamento', 'Centro', 'Curitiba', 'SC');

INSERT INTO cliente(idcliente, nome, genero, profissao, nacionalidade, numero, complemento)
VALUES( 18, 'Sandra', 'M', 'Professor', 'Italiana', '23', 'Bloco A');

-- 2. Altere os dados do cliente Maicon

-- A. O CPF para 45390569432

SELECT *
FROM cliente;

SELECT 
	idcliente
FROM cliente
WHERE LOWER(nome) LIKE 'mai%';

UPDATE cliente 
SET cpf = '45390569432'
WHERE idcliente = 16;

-- B. O sexo para M

UPDATE cliente
SET genero = 'M'
WHERE idcliente = 16;

-- C. A Nacionalidade para Brasileira

UPDATE cliente
SET nacionalidade = 'Brasileira'
WHERE idcliente = 16;

-- D. O UF para SC

UPDATE cliente
SET uf = 'SC'
WHERE idcliente = 16;

-- 3. Altere os dados do cliente Getúlio

SELECT *
FROM cliente;

SELECT 
	idcliente
FROM cliente
WHERE  LOWER(nome) = ('getulio');

-- A. A data de nascimento para 01/04/1978

UPDATE cliente
SET data_nascimento = '1978-04-01'
WHERE idcliente = 17;

-- B. O sexo para M

UPDATE cliente
SET genero = 'M'
WHERE idcliente = 17;

-- 4. Altere os dados da cliente Sandra

SELECT 
	*
FROM cliente;


SELECT 
	idcliente
FROM cliente
WHERE LOWER(nome) LIKE 'sandra';

-- A. O sexo para F

UPDATE cliente
SET genero = 'F'
WHERE idcliente = 18;

-- B. A profissão para professora

UPDATE cliente
SET profissao = 'Professora'
WHERE idcliente = 18;

-- C. O número para 123

UPDATE cliente
SET numero = '123'
WHERE idcliente = 18

-- 5. Apague o clieTne Maicon

SELECT 
	idcliente
FROM cliente
WHERE LOWER(nome) = 'maicon';


DELETE FROM cliente
WHERE idcliente = 16;

SELECT 
	idcliente
FROM cliente;

-- 6. Apague a cliente Sandra

SELECT 
	idcliente
FROM cliente
WHERE LOWER(nome) = 'sandra';

DELETE FROM cliente
WHERE idcliente = 18;

SELECT 
	idcliente
FROM cliente

