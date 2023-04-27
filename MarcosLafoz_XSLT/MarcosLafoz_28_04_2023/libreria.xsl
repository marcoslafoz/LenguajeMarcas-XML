<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" />
    <xsl:template match="/">

        <html lang="es">

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                <meta charset="utf-8" />
                <title>Ejercicio XSL Librerias</title>
                <meta name="Description" content="Ejercicio Librerias Marcos Lafoz" />
                <style>
                    * {
                        margin: 0px;
                    }

                    .productos {
                        background-color: #00ff00;
                        font-weight: bold;
                    }

                    .tipo {
                        background-color: #ffff00;
                        font-weight: bold;
                        text-align: center;
                    }

                    .contenido {
                        background-color: #00ffff;
                        color: blue;
                    }

                    .rightAlign{
                        text-align: right;
                    }
                </style>
            </head>

            <body>
                <table border="1">
                    <tr class="productos">
                        <td colspan="6">
                            <center>PRODUCTOS</center>
                        </td>
                    </tr>
                    <tr class="tipo">
                        <td>Categoria</td>
                        <td>Titulo</td>
                        <td>Autor</td>
                        <td>Precio</td>
                        <td>Cantidad</td>
                        <td>Total</td>
                    </tr>

                    <xsl:key name="categorias" match="categoria" use="@codigo"/>

                    <xsl:for-each select="libreria/libros/producto">

                        <xsl:variable name="categoriaVar" select="producto/@cat/text()"/>

                        <tr class="contenido">
                            <td><xsl:value-of select="key('categorias', @cat)/@Descripcion"/></td>
                            <td><xsl:value-of select="titulo"/></td>
                            <td><xsl:value-of select="autor"/></td>
                            <td class="rightAlign"><xsl:value-of select="precio"/></td>
                            <td class="rightAlign"><xsl:value-of select="cantidad"/></td>
                            <td class="rightAlign"><xsl:value-of select="cantidad*precio"/></td>
                        </tr>

                    </xsl:for-each>

                </table>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>