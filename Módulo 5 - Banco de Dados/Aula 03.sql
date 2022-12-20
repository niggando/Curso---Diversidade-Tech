CREATE TABLE departamento(
id INT NOT null generated always as identity (increment by 1),
departamento varchar(20),
PRIMARY KEY(id));


CREATE TABLE funcionario(
id INT generated always as identity (increment by 1),
nome VARCHAR(255) NOT NULL,
email VARCHAR(255),
sexo char(1),
data_nascimento DATE,
salario int,
departamento_id int,
PRIMARY KEY(id),
FOREIGN KEY (departamento_id) REFERENCES departamento(id)
);




INSERT INTO departamento (departamento) VALUES ('Vendas'),
('Marketing'),
('RH'),
('Ti'),
('Administrativo'),
('Desenvolvimento');


INSERT INTO funcionario (nome, email, sexo, data_nascimento, salario, departamento_id) VALUES
('Luana', 'luana@gmail.com', 'F', '01-05-1996', 3000, 1),
('Marilia', 'marilia@hotmail.com', 'F', '03-05-1995', 3100, 2),
('Raquel', 'raquel@gmail.com', 'F', '15-07-1994', 3050, 3),
('Joana', 'joana@gmail.com', 'F', '03-07-1995', 3000, 4),
('Fabricio', 'fabricio@gmail.com', 'M', '01-05-1993', 4700, 5),
('Everaldo', 'everaldo@hotmail.com', 'M', '07-05-1993', 4600, 6),
('Ricardo', 'ricardo@gmail.com', 'M', '15-05-1998', 3500, 1),
('Cleber', 'cleber@hotmail.com', 'M', '01-05-1997', 3300, 3),
('Fernando', 'fernando@hotmail.com', 'M', '03-05-1989', 3000, 2),
('Felipe', 'felipe@hotmail.com', 'M', '03-05-1996', 3070, 4),
('Matheus', 'matheus@hotmail.com', 'M', '15-05-1989', 4060, 5),
('Rodrigo', 'rodrigo@hotmail.com', 'M', '01-05-1996', 3060, 6),
('Luma', 'luma@gmail.com', 'F', '01-05-1996', 3700, 1),
('Rafael', 'rafael@gmail.com', 'M', '15-03-1991', 3500, 4),
('Mariana', 'mariana@gmail.com', 'F', '01-07-1998', 3900, 4),
('Monique', 'monique@gmail.com', 'F', '15-07-1993', 4100, 2),
('Joaquim', 'joaquim@hotmail.com', 'M', '01-05-1994', 3300, 3),
('Sandro', 'sandro@gmail.com', 'M', '01-05-1996', 4700, 5),
('Henrique', 'henrique@gmail.com', 'M', '07-07-1995', 3500, 6),
('Maria', 'maria@gmail.com', 'F', '07-07-1995', 4100, 3),
('Penha', 'penha@gmail.com', 'F', '07-07-1988', 5000, 5),
('Laura', 'laura@gmail.com', 'F', '07-07-1990', 5500, 5);
