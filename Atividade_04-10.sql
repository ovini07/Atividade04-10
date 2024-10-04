CREATE DATABASE func_db;
USE func_db;

CREATE TABLE funcionarios (
    codfunc INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nomefunc VARCHAR(100) NOT NULL,
    sexofunc CHAR(1) NOT NULL,
    bairrofunc VARCHAR(100) NOT NULL,
    salfunc DECIMAL(10, 2) NOT NULL,
    setorfunc VARCHAR(100) NOT NULL
);

INSERT INTO funcionarios (nomefunc, sexofunc, bairrofunc, salfunc, setorfunc)
VALUES
("Larissa Menezes", "F", "Jabaquara", 1200.00, "Marketing"),
("Selma Nunes", "F", "Grajáu", 3800.00, "Vendas"),
("Leandro Henrique", "M", "Socorro", 2950.00, "RH"),
("Amélia Jeremias", "F", "Socorro", 4200.00, "Marketing"),
("Cláudio Jorge Silva", "M", "Jabaquara", 1480.00, "Vendas"),
("Luciano Souza", "M", "Pedreira", 1000.00, "Vendas"),
("Gabriela Santos Nunes", "F", "Jurubatuba", 4150.00, "Marketing"),
("Rafaela Vieira Jr", "F", "Grajáu", 700.00, "Marketing"),
("Suzana Crispim", "F", "Grajáu", 5600.00, "Produção"),
("Sabrina Oliveira Castro", "F", "Pedreira", 2900.00, "Marketing"),
("Jarbas Silva Nunes", "M", "Jurubatuba", 3500.00, "Produção"),
("Ralf Borges", "M", "Jabaquara", 1200.00, "Marketing");

select * from funcionarios;

select sum(salfunc) as Soma_Salarios
from funcionarios;

select count(*) as Quantidade_Marketing
from funcionarios
where setorfunc = "Marketing";

select setorfunc, avg(salfunc) as Media_Salarios
from funcionarios
group by setorfunc
order by Media_Salarios desc;

select count(*) as Quantidade_Funcionarios
from funcionarios
where salfunc < 3000.00 and bairrofunc = "Socorro";

select setorfunc, count(*) AS Quantidade_Funcionarios
from funcionarios
group by setorfunc
having count(*) > 3;