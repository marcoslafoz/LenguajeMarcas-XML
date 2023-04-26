<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <table>
          <xsl:for-each select="//equipamiento">
            <tr>
              <td>
                <xsl:value-of select="title" />
              </td>
              <td>
                <xsl:value-of select="geometry/coordinates" />
              </td>
              <xsl:variable name="lat">
                <xsl:value-of select='substring-after(geometry/coordinates,",")' />
              </xsl:variable>
              <xsl:variable name="long">
                <xsl:value-of select='substring-before(geometry/coordinates,",")' />
              </xsl:variable>
              <td>
                <xsl:value-of disable-output-escaping="yes"
                  select="concat('https://www.google.com/maps/search/?api=1&#38;query=',$lat,',',$long)" />
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>