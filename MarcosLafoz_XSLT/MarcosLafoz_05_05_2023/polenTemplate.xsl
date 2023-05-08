<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <xsl:for-each select="resultado/result/planta-polen">

            <xsl:variable name="onloadPolen"
                select="concat('colorPolen(&quot;',id/text(),'&quot;',',&quot;',observation/observation-polen/value,'&quot;)')" />

                <div
                class="plantaBox">
                <xsl:attribute name="id"><xsl:value-of select="id" /></xsl:attribute>
                <p class="title">
                    <xsl:value-of select="title"></xsl:value-of>
                </p>
                <p class="description">
                    <xsl:text>Valor: </xsl:text>
                    <span id="polenID">
                        <xsl:value-of select="observation/observation-polen/value"></xsl:value-of>
                    </span>
                </p>
                <div class="imgBox">
                    <img>
                        <xsl:attribute name="onload"><xsl:value-of select="$onloadPolen" /></xsl:attribute>
                        <xsl:attribute name="src"><xsl:value-of select="image" /></xsl:attribute>
                    </img>
                </div>
            </div>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>