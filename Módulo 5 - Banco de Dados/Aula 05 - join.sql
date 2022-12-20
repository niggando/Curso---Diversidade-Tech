create table categorias(
id int,
nome varchar(30),
ativa char(3))
;

insert into categorias (id, nome, ativa) Values
(1,	'Informatica','[v]'),
(2,'Telefonia','[v]'),
(3,'Games','[v]'),
(4,'TV, Audio e Video','[v]'),
(5,'Impressão e imagem','[v]');



create table produtos (
id int,
id_categoria int,
descricao varchar(50),
preco int,
url_imagem varchar(100)
);


insert into produtos (id, id_categoria, descricao, preco) values
(1,1,'SSD 128GB', 300),
(2,1,'SSD 256GB', 500),
(3,1,'KIT TECLADO E MOUSE', 600),
(4,3,'PLAYSTATION 3', 1500),
(5,2,'SAMSUNG A51', 2500),
(6,4,'TELEVISÃO LG 55"', 3000),
(7,3,'PLAYSTATION 3 1TB', 1500),
(8,2,'SAMSUNG S9', 2500),
(9,2,'IPHONE 8', 2500),
(10,2,'IPHONE 9', 3000),
(11,2,'IPHONE X', 4000),
(12,4,'TELEVISÃO SAMSUNG 32"', 1000),
(13,4,'TELEVISÃO SAMSUNG 48"', 3000),
(14,3,'PLAYSTATION 4 1TB', 2800),
(15,3,'PLAYSTATION 5 1TB', 5000),
(16,1,'Teclado Razer Gamer', 250),
(17,1,'Fone de ouvido Hyperx',170),
(18,1,'Mouse Gamer Razer', 90),
(19,1,'Mouse Gamer Razer 2400', 200);

insert into produtos (id,  descricao, preco) values
(20,'Mouse Gamer', 280),
(21,'Teclado Gamer', 390)

SELECT * FROM categorias

SELECT * FROM produtos 

--- Inner Join

SELECT
p.*, c.*
FROM produtos AS p
INNER JOIN categorias AS c 
ON p.id_categoria = c.id

-- Left Join

SELECT * FROM 
produtos AS p
LEFT JOIN categorias AS c 
ON p.id_categoria = c.id

-- Left Join

SELECT * FROM 
produtos AS p
RIGHT JOIN categorias AS c 
ON p.id_categoria = c.id

-- 1 - MAIOR PREÇO POR CATEGORIA, TRAZENDO QUAL CATEGORIA O PRODUTO É
-- APENAS PRODUTOS CATEGORIZADOS

SELECT 
c.id AS categoria,
MAX(preco) AS maior_preco
FROM 
produtos AS p
INNER JOIN categorias AS c
ON p.id_categoria = c.id
GROUP BY c.id
ORDER BY c.id

-- 2 - MENOR PREÇO DO PRODUTO DA CATEGORIA GAME E TELEFONIA

SELECT 
	max(p.preco) AS maior_preco,
	min(p.preco) AS meno_preco,
	c.nome
	FROM produtos AS p
	INNER JOIN categorias AS c
	ON p.id_categoria = c.id
WHERE c.nome = 'Games' OR 
c.nome = 'Telefonia'
GROUP BY c.nome
