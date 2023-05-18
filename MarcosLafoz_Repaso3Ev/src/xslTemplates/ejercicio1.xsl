<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        
            <h1>Ejercicio1</h1>
            <p>Crea una tabla que liste todos los libros y sus autores, ordenados por año de publicación.</p>
            <table border="1">
                <tr>
                    <td><b>Libro</b></td>
                    <td><b>Autor</b></td>
                    <td><b>Fecha de publicación</b></td>
                </tr>
                <xsl:for-each select="library/book">
                <xsl:sort select="year"/>
                <tr>
                    <td><xsl:value-of select="title"></xsl:value-of></td>
                    <td><xsl:value-of select="author"></xsl:value-of></td>
                    <td><xsl:value-of select="year"></xsl:value-of></td>
                </tr>
                </xsl:for-each>
            </table>

    </xsl:template>
</xsl:stylesheet>