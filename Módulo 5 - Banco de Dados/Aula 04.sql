-- Exercícios aula 4

-- 1) Quantos homens tem por departamento que ganham mais de 3800, considerando departamento com mais de 1 homem
SELECT
count(id),
departamento_id
FROM funcionario f 
WHERE sexo = 'M' AND salario > 3800
GROUP BY departamento_id
HAVING count(id) > 1


-- 2) Seu chefe pede para você gerar um relatório que mostre a soma salarial por departamento das mulheres que nasceram nos anos 90,
-- contudo apenas os departamentos que contenham mais de uma mulher que satisfaça a condição acima
SELECT sum(salario),
departamento_id,
count(id)
FROM funcionario f 
WHERE sexo = 'F' AND date_part('year',data_nascimento) >= 1990
GROUP BY departamento_id
HAVING count(id) > 1;

-- 3) Quantas mulheres que tem email @gmail, tem a média salarial maior que 4000 por departamento
SELECT 
round(avg(salario),1) AS media_salarial, -- duvida: como referenciar coluna criada como  'alias'
count(id) AS qtde_funcionarios,
departamento_id 
FROM funcionario 
WHERE sexo = 'F' AND email LIKE '%@gmail.com'
GROUP BY departamento_id 
HAVING round(avg(salario),1) > 4000;

-- 4) Seu chefe quer um relatório da média salarial por departamento,
-- de todos os homens que não terminam o nome com a letra ‘O’
SELECT 
round(avg(salario),1) AS media_salarial,
departamento_id,
nome
FROM funcionario 
WHERE sexo = 'M' AND nome NOT LIKE '%o'
GROUP BY nome,departamento_id;


-- 5) Faça uma contagem de quantos funcionários pelo mês de nascimento
SELECT 
count(id) AS qtde_funcinarios,
date_part('month',data_nascimento) AS mes
FROM funcionario f 
GROUP BY date_part('month',data_nascimento);

-- 6) Quantos funcionários nascidos em julho por departamento possuem a soma de 90% do seu salário maior 
-- que 6000 reais, contudo com menos de 3 pessoas por departamento (que satisfaçam a condição acima).
-- Forneça o valor da soma salário com a porcentagem equivalente

SELECT 
count(id) AS qtde_funcionarios,
sum(0.9*salario) AS sum_90,
departamento_id
FROM funcionario f
WHERE date_part('month',data_nascimento) = 07
GROUP BY departamento_id
HAVING count(id) < 3 AND sum(0.9*salario) > 6000;