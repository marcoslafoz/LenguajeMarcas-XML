<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
<xsl:key name="authorKey" match="author" use="."/>

  <xsl:template match="/">

    <h1>Ejercicio 5</h1>
    <p>Crea una lista de todos los autores que han publicado al menos un libro en la biblioteca, mostrando el nombre del autor y el número de libros que ha publicado.</p>
    <table border="1">
    <tr>
        <td>Autor</td>
        <td>nLibros</td>
    </tr>
    <xsl:for-each select="//author[generate-id() = generate-id(key('authorKey', .)[1])]">
      <tr>
        <td><xsl:value-of select="."/></td>
        <td><xsl:value-of select="count(key('authorKey', .))"/></td>
      </tr>
    </xsl:for-each>
    </table>

  </xsl:template>

</xsl:stylesheet>