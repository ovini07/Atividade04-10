create database venda_bd;
use venda_bd;

CREATE TABLE vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    produto VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);

INSERT INTO vendas (produto, quantidade, preco)
VALUES
("Notebook Dell", 5, 3500.00),
("Smartphone Samsung", 5, 2800.00),
("Televisão LG", 5, 4500.00),
("Fone de Ouvido JBL", 5, 500.00),
("Câmera Canon", 5, 2500.00),
("Impressora HP", 5, 1200.00),
("Tablet Apple", 5, 3200.00),
("Console PlayStation", 5, 3000.00),
("Caixa de Som Bluetooth", 5, 800.00),
("Roteador Wi-Fi", 5, 600.00);

select * from vendas;

select count(*) as Total_Vendas
from vendas;

select sum(quantidade) as Total_Produtos
from vendas;

select avg(preco) as Media_de_Preço
from vendas;

select min(preco) as Menor_Preço
from vendas;

select max(preco) as Maior_Preço
from vendas;

select produto, count(*) as Total_Vendas
from vendas
group by produto;

select * from vendas;

select produto, sum(quantidade) as Total_produtos_vendas
from vendas
group by produto;

select produto, sum(quantidade) AS Total_produtos_vendas
from Vendas
group by produto
having  Total_produtos_vendas >17;

select produto,quantidade,preco
from vendas
order by preco desc;

select produto,quantidade,preco
from vendas
order by preco desc
limit 5;

select * from Vendas;

select produto, preco,
	(select max(preco)from vendas) as Maior_preço
    from vendas;
    
