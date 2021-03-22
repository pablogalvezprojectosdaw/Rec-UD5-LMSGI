<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <xsl:text>Nombre y Apellidos: Pablo Gálvez Rodríguez</xsl:text>
        <xsl:text>&#xA;</xsl:text>
        <xsl:for-each select="bib/libro">
            <xsl:text>&#xA;</xsl:text>
            <xsl:choose>
                <xsl:when test="precio &lt; 100">
                    <xsl:value-of select="titulo"/>
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>