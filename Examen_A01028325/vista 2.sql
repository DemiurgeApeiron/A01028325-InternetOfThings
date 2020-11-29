CREATE VIEW `vista 2` AS

select Libros.titulo as "Titulo", Tags.tag as "Tag", Libros.precio as "$"
from Biblioteca.Libros 
join Biblioteca.libros_tags
on Libros.id_libro = libros_tags.id_libro
join Biblioteca.Tags
on Tags.id_tag = libros_tags.id_tag
order by Libros.precio DESC;