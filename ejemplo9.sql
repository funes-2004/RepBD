DROP TABLE IF EXISTS equipo;

CREATE TABLE equipo (
    empleado_id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    salario NUMERIC(10, 2),
    jefe_id INT REFERENCES equipo(empleado_id)
);

INSERT INTO equipo (nombre, salario, jefe_id) VALUES
('Ricardo', 80000, NULL),
('Elena', 60000, 1),
('David', 55000, 1),
('Mario', 45000, 2),
('Sofia', 48000, 2);

SELECT
    e.nombre AS empleado,
    e.salario AS salario_empleado,
    j.nombre AS nombre_del_jefe
FROM equipo e
LEFT JOIN equipo j ON e.jefe_id = j.empleado_id;