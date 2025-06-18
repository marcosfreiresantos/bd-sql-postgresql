-- 1. O nome, o sexo e a profissão de todos os clientes, ordenado pelo nome em ordem decrescente.

SELECT
	nome,
	genero,
	profissao
FROM cliente
ORDER BY nome DESC;

-- 2. Os clientes que tenham a letra "R" no nome.

SELECT 
	nome
FROM cliente
WHERE nome LIKE '%r%';

-- 3. Os clientes que iniciam com a letra "C".

SELECT 
	nome
FROM cliente
WHERE nome LIKE 'C%';

-- 4. Os clientes que o nome terminam com a letra "A".

SELECT
	nome
FROM cliente
WHERE nome LIKE '%a';

-- 5. Os clientes que moram no bairro centro.

SELECT *
FROM cliente
WHERE LOWER(bairro) = 'centro';

SELECT 
	nome,
	rg,
	bairro
FROM cliente
WHERE LOWER(bairro) = 'centro';

SELECT 
	nome, 
    rg, 
    bairro
FROM cliente
WHERE UPPER(bairro) LIKE 'CENTRO'; 

SELECT 
	nome, 
    rg, 
    bairro
FROM cliente
WHERE UPPER(bairro) = 'CENTRO' OR UPPER(BAIRRO) = 'CTO.';

SELECT 
	nome, 
    rg, 
    bairro
FROM cliente
WHERE UPPER(bairro) LIKE 'CENTRO' OR UPPER(BAIRRO) LIKE 'CTO.';

-- 6. Os clientes que moram em complementos que iniciam com a letra "A"

SELECT 
	cli.complemento
FROM cliente AS cli
WHERE LOWER(complemento) LIKE 'a%';

SELECT 
	cli.complemento
FROM cliente cli
WHERE LOWER(complemento) LIKE 'a%';

-- 7. Somente clientes do sexo feminino.

SELECT *	
FROM cliente
WHERE genero = 'F';

SELECT *
FROM cliente
WHERE genero LIKE 'F';

-- 8. Os clientes que não informaram o CPF

SELECT *
FROM cliente
WHERE cpf IS NULL;

-- 9. O nome e a profissão dos clientes, ordenado pela ordem crescente pelo nome da profissão.

SELECT 
	nome,
	profissao
FROM cliente
ORDER BY profissao ASC;

-- 10. Os clientes de nacionalidade "Brasileira".

SELECT *
FROM cliente
WHERE nacionalidade = 'Brasileira';

SELECT *
FROM cliente
WHERE LOWER(nacionalidade) = 'brasileira' OR LOWER(nacionalidade) = 'brasileiro';


SELECT *
FROM cliente
WHERE nacionalidade LIKE 'Brasil%';

-- 11. Os clientes que informaram o número da residencia.

SELECT *
FROM cliente
WHERE numero IS NOT NULL;

-- 12. Os clientes que moram em Santa Catarina

SELECT *
FROM cliente
WHERE UPPER(uf) = 'SC';

SELECT *
FROM cliente
WHERE uf LIKE 'SC';

-- 13. Os clientes que nasceram entre 01/01/2000 e 01/01/2002

SELECT *
FROM cliente
WHERE data_nascimento BETWEEN '2000-01-01' AND '2002-01-01';

-- 14. O nome do cliente e o logradouro, numero, complemento, bairro,
-- munícipio e UF concatenados de todos os clientes

SELECT 
	'Nome: ' || nome || ' - ' || 'Logradouro: ' ||  ' - ' || logradouro || ' - ' || 'Numero: ' || ' - ' || 'Complemento: ' || ' - ' || complemento || ' - ' || 'Bairro: ' || ' - ' || 'Municipio: ' || ' - ' || municipio || ' - ' || 'UF: ' || ' - ' || uf
FROM cliente;