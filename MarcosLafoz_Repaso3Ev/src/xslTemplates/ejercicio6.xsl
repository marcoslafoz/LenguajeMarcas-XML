<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
<xsl:key name="authorKey" match="author" use="."/>

  <xsl:template match="/">

    <h1>Ejercicio 6</h1>
    <p>A partir de la plantilla que te paso, genera la <br/>transformación apropiada para mostrar los libros de la biblioteca en una tarjeta cada uno.</p>

    <xsl:for-each select="library/book">
      <div class="card">
        <div class="card-header">
          <img src="https://via.placeholder.com/150x200" alt="Book Cover"></img>
        </div>
        <div class="card-body">
          <h2 class="card-title">
            <xsl:value-of select="title"></xsl:value-of>
          </h2>
          <p class="card-author">
            <xsl:value-of select="author"></xsl:value-of>
          </p>
          <p class="card-description">Descripcion</p>
          <p class="card-publisher">
            <xsl:value-of select="publisher"></xsl:value-of>
          </p>
          <p class="card-year">
            <xsl:value-of select="year"></xsl:value-of>
          </p>
        </div>
      </div>
    </xsl:for-each>

  </xsl:template>

</xsl:stylesheet>