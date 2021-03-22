<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
        <xsl:template match="/">
        <th>Nombre y Apellidos: Pablo Gálvez Rodríguez</th>
            <xsl:for-each select="ies/ciclos/ciclo">
            <xsl:sort select="nombre"  order="descending"/>
                    <ol>
                        <xsl:for-each select="nombre">
                        <xsl:value-of select="."/> </xsl:for-each> (<xsl:value-of select="grado"/>)
                    </ol>
            </xsl:for-each>
        </xsl:template>
</xsl:stylesheet>