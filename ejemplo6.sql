DROP TABLE IF EXISTS ventas;
CREATE TABLE ventas (
    venta_id SERIAL PRIMARY KEY,
    producto VARCHAR(100),
    monto NUMERIC(10, 2)
);

INSERT INTO ventas (producto, monto) VALUES
('Celular', 700.00),
('Tablet', 450.50),
('Celular', 800.00),
('Auriculares', 80.25);

SELECT producto, SUM(monto) AS total_por_producto
FROM ventas
GROUP BY producto;