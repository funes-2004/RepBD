DROP TABLE IF EXISTS estudiantes;
DROP TABLE IF EXISTS cursos;

CREATE TABLE cursos (
    curso_id SERIAL PRIMARY KEY,
    nombre_curso VARCHAR(100)
);

CREATE TABLE estudiantes (
    estudiante_id SERIAL PRIMARY KEY,
    nombre_estudiante VARCHAR(100),
    curso_id INT REFERENCES cursos(curso_id),
    nota NUMERIC(5, 2)
);

INSERT INTO cursos (nombre_curso) VALUES
('Matemáticas'),
('Historia'),
('Química');

INSERT INTO estudiantes (nombre_estudiante, curso_id, nota) VALUES
('Ana', 1, 95.5),
('Juan', 1, 88.0),
('Pedro', 2, 75.0);

SELECT c.nombre_curso, AVG(e.nota) AS promedio_nota
FROM cursos c
LEFT JOIN estudiantes e ON c.curso_id = e.curso_id
GROUP BY c.nombre_curso;