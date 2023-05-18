<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <h1>Ejercicio 3</h1>
        <p>Crea un archivo HTML que muestre todos los libros publicados después de 1900, <br/>mostrando el título, el autor y el año de publicación.</p>
        <ul>
            <xsl:for-each select="library/book[year > 1900]">
                <xsl:sort select="title" />
                <li>
                    <xsl:value-of select="title"></xsl:value-of>
                    <span> (</span><xsl:value-of select="year"></xsl:value-of><span>)</span>
                </li>
            </xsl:for-each>
        </ul>

    </xsl:template>
</xsl:stylesheet>