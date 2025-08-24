DROP TABLE IF EXISTS libros;
CREATE TABLE libros (
    libro_id SERIAL PRIMARY KEY,
    titulo VARCHAR(100),
    autor VARCHAR(100)
);

INSERT INTO libros (titulo, autor) VALUES
('El Señor de los Anillos', 'J.R.R. Tolkien'),
('Cien Años de Soledad', 'Gabriel García Márquez'),
('Don Quijote de la Mancha', 'Miguel de Cervantes');

SELECT COUNT(*) FROM libros;
SELECT titulo, autor FROM libros ORDER BY autor ASC;