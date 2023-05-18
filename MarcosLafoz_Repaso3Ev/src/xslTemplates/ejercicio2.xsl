<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <h1>Ejercicio 2</h1>
        <p>Crea una lista (ul) de todos los títulos de libros en la biblioteca, ordenados alfabéticamente.</p>
        <ul>
            <xsl:for-each select="library/book">
                <xsl:sort select="title" />
                <li>
                    <xsl:value-of select="title"></xsl:value-of>
                </li>
            </xsl:for-each>
        </ul>

    </xsl:template>
</xsl:stylesheet>