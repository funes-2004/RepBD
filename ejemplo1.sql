DROP TABLE IF EXISTS clientes;
CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    ciudad VARCHAR(50)
);

INSERT INTO clientes (nombre, ciudad) VALUES
('Ana Gómez', 'Tegucigalpa'),
('Luis Pérez', 'San Pedro Sula'),
('Sofía Torres', 'La Ceiba');

SELECT * FROM clientes;