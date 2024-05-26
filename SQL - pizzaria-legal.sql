CREATE DATABASE db_pizzaria_legal;

USE  db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tempodepreparo VARCHAR(255) NOT NULL,
    tipo TEXT
);

INSERT INTO tb_categorias (tempodepreparo, tipo) VALUES
('45min', "salgada" ),
("25min", 'Doce'),
("30min", "Tropical"),
("35min", "Asiatica"),
("40min", "Especial");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    sabor TEXT,
    tamanho TEXT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_pizzas (nome, valor, sabor, tamanho, categoria_id) VALUES
('Margherita', 30.00, 'Tomate, Mozzarella', 'Média', 1),
('Quatro Queijos', 40.00, 'Mozzarella, Parmesan, Gorgonzola, Ricota', 'Grande', 2),
('Calabresa', 35.00, 'Calabreza, Catupiry', 'Média', 1),
('Chocolate', 55.00, 'Chocolate', 'Pequena', 2),
('Portuguesa', 45.00, 'Presunto, Queijo, Calabreza', 'Média', 1),
('Frango com Catupiry', 50.00, 'Frango, Catupiry', 'Grande', 1),
('Tropical', 60.00, 'Abacaxi, Morango', 'Pequena', 2),
('Especial', 70.00, 'Atum, Alcaparras', 'Grande', 1);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT p.*, c.tempodepreparo AS categoria_tempodepreparo FROM tb_pizzas p INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.*, c.tipo AS categoria_tipo FROM tb_pizzas p INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.tipo = 'Doce';















