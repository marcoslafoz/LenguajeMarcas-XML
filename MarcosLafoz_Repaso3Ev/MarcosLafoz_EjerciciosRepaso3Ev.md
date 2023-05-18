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
  - `/library/book[year = 1900][1]/author`

## XQuery

- Selecciona todos los autores de libros publicados después de 1900.
  - `for $book in doc("src/books.xml")//book[year > 1900] return $book/author`
- Selecciona el título del libro más antiguo en la biblioteca.
  - `let $antiguo := doc("src/books.xml")//book[not(year > //book/year)] return $antiguo/title`
- Selecciona todos los libros escritos por autores cuyo nombre empieza por la letra "J".
  - `for $book in doc("src/books.xml")//book[starts-with(author, "J")] return $book`
- Selecciona los títulos de todos los libros de ciencia ficción publicados antes de 1920.
  - `for $book in doc("src/books.xml")//book[genre = "Science fiction" and year < 1920] return $book/title`
- Selecciona el nombre del primer autor de un libro publicado en 1900.
  - `let $autor := doc("src/books.xml")//book[year = 1900][1]/author return $autor`

## XSLT

### Soluciones en `index.html`

- Crea una tabla que liste todos los libros y sus autores, ordenados por año de publicación.
- Crea una lista (ul) de todos los títulos de libros en la biblioteca, ordenados alfabéticamente.
- Crea un archivo HTML que muestre todos los libros publicados después de 1900, mostrando el título, el autor y el año de publicación.
- Crea un archivo HTML que muestre una tabla con los títulos de los libros, el nombre del autor y el género.
- Crea una lista de todos los autores que han publicado al menos un libro en la biblioteca, mostrando el nombre del autor y el número de libros que ha publicado.
- A partir de la plantilla que te paso, genera la transformación apropiada para mostrar los libros de la biblioteca en una tarjeta cada uno.
