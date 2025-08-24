DROP TABLE IF EXISTS proyectos;
CREATE TABLE proyectos (
    proyecto_id SERIAL PRIMARY KEY,
    nombre_proyecto VARCHAR(100),
    fecha_inicio DATE
);

INSERT INTO proyectos (nombre_proyecto, fecha_inicio) VALUES
('Proyecto Alpha', '2023-11-20'),
('Proyecto Beta', '2024-03-15'),
('Proyecto Gamma', '2024-01-05');

SELECT nombre_proyecto, fecha_inicio FROM proyectos WHERE fecha_inicio >= '2024-01-01';