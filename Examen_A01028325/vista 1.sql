CREATE VIEW `vista 1` AS
select Libros.titulo as "Titulo", Autores.nombre as "Nombre", Autores.apellido as "Apellido", Libros.fecha_publicacion as "Fecha"
from Biblioteca.Libros 
join Biblioteca.libros_autores
on Libros.id_libro = libros_autores.id_libro
join Biblioteca.Autores
on Autores.id_autor = libros_autores.id_autor
order by Libros.fecha_publicacion ASC;