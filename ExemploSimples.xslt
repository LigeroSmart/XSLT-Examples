<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:template match="RootElement">
    <xsl:copy>
        <Usuario>XYZ</Usuario>
        <Sistema>LigeroSmart</Sistema>
        <fila><xsl:value-of select="//Ticket/Queue" /></fila>
        <severity><xsl:value-of select="//Ticket/Priority" /></severity>
        <NumeroChamado><xsl:value-of select="//Ticket/TicketNumber" /></NumeroChamado>
    </xsl:copy>
    </xsl:template>
</xsl:stylesheet>