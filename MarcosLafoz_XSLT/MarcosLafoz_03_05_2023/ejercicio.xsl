<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <div id="listaFarmacias">
            <div class="titulo">Farmacias Marcos Lafoz</div>
            <xsl:for-each select="resultado/result/equipamiento">
                <div class="FarmaciasBoxArray">
                    <div class="filaTextoFarmacia1">
                        <xsl:value-of select="title" />
                    </div>
                    <div class="filaTextoFarmacia2">
                        <xsl:value-of select="telefonos" />
                    </div>
                    <div class="filaTextoFarmacia2">
                        <xsl:choose>
                            <xsl:when test="not(horario)">
                                <xsl:text>Sin resultados</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="horario" />
                            </xsl:otherwise>
                        </xsl:choose>
                    </div>
                    <div class="filaTextoFarmacia2">
                        <xsl:value-of select="calle" />
                    </div>
                    <div class="filaTextoFarmacia2">
                        <xsl:value-of select="guardia/guardia/horario" />
                    </div>
                    <div class="filaTextoFarmacia2">
                        <xsl:value-of select="guardia/guardia/sector" />
                    </div>
                    <xsl:variable name="urlMaps"
                        select="concat('https://www.google.com/maps/search/?api=1&#38;query=',geometry/coordinates/text())" />

                    <div class="filaTextoFarmacia2">
                        <a class="ubicacionURL">
                            <xsl:attribute name="href"><xsl:value-of select="$urlMaps" /></xsl:attribute>
                            <img src="./locationIcon.png" class="locationIcon" />
                        </a>
                    </div>
                </div>
            </xsl:for-each>
        </div>
    </xsl:template>
</xsl:stylesheet>