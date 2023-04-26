<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  
  <xsl:template match="/">
    <html lang="es">
      <head>
        <meta charset="utf-8" />
        <title>Ejercicio XSL Movies</title>
        <meta name="Description" content="Ejercicio peliculas Marcos Lafoz" />
      </head>
      <body>
        <h1><b>LISTADO MOVIES:</b></h1>  
        <br/>
        <ol>
          <xsl:for-each select="movies/movie">
            <li>
              <p><u>Titulo: </u><xsl:value-of select="title"/></p>
              <p><u>Director: </u><xsl:value-of select="director"/></p>
              <p><u>Productor: </u><xsl:value-of select="producer"></xsl:value-of></p>
              <p><b>Actores: </b></p>
              <ul>
                <xsl:for-each select="actor">
                  <xsl:text>&#xa;</xsl:text>
                  <li><xsl:value-of select="."></xsl:value-of></li>
                </xsl:for-each>
              </ul> 
            </li>
          </xsl:for-each>
        </ol>
        <style>* {margin: 0px;}</style>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
