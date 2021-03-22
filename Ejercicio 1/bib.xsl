<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <xsl:text>Nombre y Apellidos: Pablo Gálvez Rodríguez</xsl:text> <xsl:text>&#xA;</xsl:text> 
        <xsl:for-each select="bib/book"> <xsl:text>&#xA;</xsl:text>
            <ul>
                <li>
                    <xsl:value-of select="title"/> (<xsl:value-of select="year"/>) 
                </li>
            </ul>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>