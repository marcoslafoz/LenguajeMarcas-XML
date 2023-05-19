<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <h1>Ejercicio 4</h1>
        <p>Crea un archivo HTML que muestre una tabla con los títulos de los libros, el nombre del autor y el género.</p>
        <table border="1">
                <tr>
                    <td><b>Libro</b></td>
                    <td><b>Autor</b></td>
                    <td><b>Género</b></td>
                </tr>
                <xsl:for-each select="library/book">
                <xsl:sort select="year"/>
                <tr>
                    <td><xsl:value-of select="title"></xsl:value-of></td>
                    <td><xsl:value-of select="author"></xsl:value-of></td>
                    <td><xsl:value-of select="genre"></xsl:value-of></td>
                </tr>
                </xsl:for-each>
            </table>

    </xsl:template>
</xsl:stylesheet>