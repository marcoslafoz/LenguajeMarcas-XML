# MarcosLafoz_EjerciciosRepaso3Ev

## Xpath

- Selecciona todos los autores de libros publicados después de 1900.
  - `/library/book[year > 1900]/author`
- Selecciona el título del libro más antiguo en la biblioteca.
  - `/library/book[not(../book/year > year)]/title`
- Selecciona todos los libros escritos por autores cuyo nombre empieza por la letra "J".
  - `/library/book[starts-with(author, 'J')]/title`
- Selecciona los títulos de todos los libros de ciencia ficción publicados antes de 1920.
  - `/library/book[genre = 'Science fiction' and year < 1920]/title`
- Selecciona el nombre del primer autor de un libro publicado en 1900.
  - `min(//book[number(substring(year,1,4))>1900]/year)`

## XQuery

- Encuentra todos los libros publicados por el editor "Macmillan Publishers".
  - `for $book in //book[publisher="Macmillan Publishers"]/title return $book`
- Encuentra el número total de libros en la biblioteca.
  - `let $total := //book return count($total)`
- Encuentra los nombres de todos los autores que han escrito más de un libro en la biblioteca.
  - `for $author in distinct-values(/library/book/author) where count(/library/book[author = $author]) > 1 return $author`
- Encuentra los títulos de los libros cuyo género es "Horror" o "Mystery".
  - `for $book in //book[genre = ("Horror", "Mystery")]/title return $book`
- Encuentra todos los autores que han publicado un libro después de 1920.
  - `for $author in /library/book[number(substring(year, 1,4))>1920]/author return $author`

## XSLT

### Soluciones en `index.html`

- Crea una tabla que liste todos los libros y sus autores, ordenados por año de publicación.
- Crea una lista (ul) de todos los títulos de libros en la biblioteca, ordenados alfabéticamente.
- Crea un archivo HTML que muestre todos los libros publicados después de 1900, mostrando el título, el autor y el año de publicación.
- Crea un archivo HTML que muestre una tabla con los títulos de los libros, el nombre del autor y el género.
- Crea una lista de todos los autores que han publicado al menos un libro en la biblioteca, mostrando el nombre del autor y el número de libros que ha publicado.
- A partir de la plantilla que te paso, genera la transformación apropiada para mostrar los libros de la biblioteca en una tarjeta cada uno.
