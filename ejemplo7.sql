DROP TABLE IF EXISTS inventario;
DROP TABLE IF EXISTS proveedores;

CREATE TABLE proveedores (
    proveedor_id SERIAL PRIMARY KEY,
    nombre_proveedor VARCHAR(100)
);

CREATE TABLE inventario (
    producto_id SERIAL PRIMARY KEY,
    nombre_producto VARCHAR(100),
    stock INT,
    proveedor_id INT REFERENCES proveedores(proveedor_id)
);

INSERT INTO proveedores (nombre_proveedor) VALUES
('TechCorp'),
('Global Supply');

INSERT INTO inventario (nombre_producto, stock, proveedor_id) VALUES
('Laptop', 50, 1),
('Mouse', 150, 1),
('Monitor', 75, 2);

SELECT i.nombre_producto, i.stock, p.nombre_proveedor
FROM inventario i
JOIN proveedores p ON i.proveedor_id = p.proveedor_id;