<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
            <xsl:text>Nombre y Apellidos: Pablo Gálvez Rodríguez</xsl:text>
                <table border="4">
                    <xsl:for-each select="bib/libro">
                        <xsl:sort select="precio" order="descending"/>
                        <xsl:choose>
                            <xsl:when test="precio &gt; 100">
                                <tr>
                                    <td>
                                        <xsl:value-of select="precio"/>
                                    </td>
                                    <td bgcolor="#FF0000">
                                        <xsl:value-of select="titulo"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="@anio"/>
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:when test="precio &lt; 100">
                                <tr>
                                    <td>
                                        <xsl:value-of select="precio"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="titulo"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="@anio"/>
                                    </td>
                                </tr>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>