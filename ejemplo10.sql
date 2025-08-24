DROP TABLE IF EXISTS salarios;

CREATE TABLE salarios (
    empleado_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    departamento VARCHAR(50),
    salario NUMERIC(10, 2)
);

INSERT INTO salarios (nombre, departamento, salario) VALUES
('Ana', 'Ventas', 45000),
('Carlos', 'Ventas', 60000),
('Luis', 'TI', 70000),
('Sofía', 'TI', 65000);

SELECT nombre, salario
FROM salarios
WHERE salario > (SELECT AVG(salario) FROM salarios);
