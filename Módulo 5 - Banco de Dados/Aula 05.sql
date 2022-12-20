SELECT make_date(2020, 07, 25)
---
SELECT make_date(
	date_part('year', current_date)::int,
	date_part('month', current_date)::int,
	25
)
---

SELECT make_date(
	date_part('year', current_date)::int,
	date_part('month', current_date)::int,
	date_part('day', current_date)::int
)

WITH tabela_aniversario AS (
SELECT
nome,
data_nascimento
FROM funcionario f
)

SELECT * FROM tabela_aniversario

