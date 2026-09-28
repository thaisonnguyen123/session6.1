use quan_ly;

CREATE TABLE categories (
    category_id VARCHAR(20) PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category_id VARCHAR(20),
    price DECIMAL(12,2) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

INSERT INTO categories VALUES
('C01', 'Laptop'),
('C02', 'Phone'),
('C03', 'Accessory');

INSERT INTO products VALUES
('P01', 'Dell Inspiron', 'C01', 15000000, 10),
('P02', 'MacBook Air', 'C01', 23000000, 5),
('P03', 'iPhone 15', 'C02', 28000000, 8),
('P04', 'Samsung S22', 'C02', 18000000, 12),
('P05', 'Logitech Mouse', 'C03', 500000, 20);

INSERT INTO products VALUES
('P06', 'Asus Vivobook', 'C01', 14000000, 7),
('P07', 'iPhone 14', 'C02', 22000000, 9),
('P08', 'Apple Keyboard', 'C03', 2500000, 15);

select *from products;

update products
set	price = 6000
where product_id = "p05";

delete from products
where product_id = "p04";

SELECT *
FROM products
ORDER BY price DESC;
