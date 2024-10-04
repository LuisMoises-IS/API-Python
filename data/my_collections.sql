-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS movies_db;

-- Usar la base de datos
USE movies_db;

-- Crear la tabla my_movies
CREATE TABLE IF NOT EXISTS my_movies (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Autor VARCHAR(100) NOT NULL,
    Descripción TEXT NOT NULL,
    Fecha_de_Estreno DATE NOT NULL
);

-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS movies_db;

-- Usar la base de datos
USE movies_db;

-- Crear la tabla my_movies
CREATE TABLE IF NOT EXISTS my_movies (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Autor VARCHAR(100) NOT NULL,
    Descripción TEXT NOT NULL,
    Fecha_de_Estreno DATE NOT NULL
);

-- Insertar datos en la tabla my_movies
INSERT INTO my_movies (Autor, Descripción, Fecha_de_Estreno) VALUES
('Christopher Nolan', 'Un ladrón que roba secretos corporativos a través del uso de tecnología de sueño compartido.', '2010-07-16'),
('Quentin Tarantino', 'Un grupo de mercenarios se enfrenta a un dictador en un país de África.', '2009-08-21'),
('Steven Spielberg', 'Un arqueólogo busca un artefacto antiguo mientras escapa de los nazis.', '1981-06-12'),
('Martin Scorsese', 'La historia de un estafador en el mundo del crimen organizado.', '1990-12-19'),
('James Cameron', 'Una historia de amor entre dos personajes de diferentes clases sociales a bordo de un famoso transatlántico.', '1997-12-19'),
('Ridley Scott', 'Una misión espacial en la que un grupo de astronautas intenta sobrevivir en un planeta hostil.', '2015-10-02'),
('David Fincher', 'Un grupo de hombres se une para formar una sociedad secreta que busca crear un mundo mejor.', '1999-10-15'),
('The Wachowskis', 'La lucha de los humanos contra las máquinas que controlan su mundo.', '1999-03-31'),
('Francis Ford Coppola', 'La historia de una familia mafiosa en Nueva York a lo largo de varias generaciones.', '1972-03-24'),
('Peter Jackson', 'La aventura de un hobbit y su viaje para destruir un anillo poderoso.', '2001-12-19'),
('Hayao Miyazaki', 'Una joven es transformada en una anciana por una maldición y debe encontrar la forma de revertirla.', '2001-11-20'),
('Nora Ephron', 'Una historia de amor entre dos personas que se conocen a través de una línea telefónica.', '1993-07-16'),
('Lana Wachowski', 'Un grupo de personas intenta cambiar el futuro de la humanidad utilizando la tecnología.', '2012-05-25'),
('Sofia Coppola', 'La historia de una joven que se convierte en la reina de Francia.', '2006-10-13'),
('Robert Zemeckis', 'Un viaje en el tiempo que afecta el futuro de un joven.', '1985-07-03'),
('M. Night Shyamalan', 'Un hombre que puede comunicarse con los muertos y debe resolver un misterio.', '1999-08-06'),
('J.J. Abrams', 'La historia de un grupo de amigos que se enfrentan a criaturas de otro mundo.', '2011-01-14'),
('Tim Burton', 'Un hombre que se convierte en un monstruo por un experimento fallido.', '2012-10-05'),
('Greta Gerwig', 'Una joven busca su identidad mientras navega por la vida en Nueva York.', '2017-12-01'),
('Bong Joon-ho', 'Una historia de clase y lucha entre una familia pobre y una familia rica.', '2019-05-30'),
('Denis Villeneuve', 'Un viaje intergaláctico que cambia la percepción de la humanidad.', '2016-10-21');
