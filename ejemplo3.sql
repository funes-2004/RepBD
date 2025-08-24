DROP TABLE IF EXISTS empleados;
CREATE TABLE empleados (
    empleado_id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    puesto VARCHAR(50) NOT NULL
);

INSERT INTO empleados (nombre, puesto) VALUES
('Carlos López', 'Gerente'),
('María Díaz', 'Analista'),
('Jorge Soto', 'Gerente'),
('Laura Paz', 'Asistente');

SELECT empleado_id, nombre AS nombre_completo, puesto AS cargo FROM empleados WHERE puesto = 'Gerente';