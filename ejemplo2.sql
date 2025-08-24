DROP TABLE IF EXISTS productos;
CREATE TABLE productos (
    producto_id SERIAL PRIMARY KEY,
    nombre_producto VARCHAR(100),
    precio NUMERIC(10, 2)
);

INSERT INTO productos (nombre_producto, precio) VALUES
('Laptop', 850.50),
('Mouse', 25.00),
('Monitor', 300.75),
('Teclado', 75.99);

SELECT * FROM productos WHERE precio > 500;