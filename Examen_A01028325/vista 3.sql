CREATE VIEW `vista 3` AS

select Libros.titulo as "Titulo", Autores.nombre as "Nombre", Autores.apellido as "Apellido", Tags.tag as "Tag"
from Biblioteca.Libros
join Biblioteca.libros_tags
on Libros.id_libro = libros_tags.id_libro
join Biblioteca.Tags
on Tags.id_tag = libros_tags.id_tag
join Biblioteca.libros_autores
on Libros.id_libro = libros_autores.id_libro
join Biblioteca.Autores
on Autores.id_autor = libros_autores.id_autor;
