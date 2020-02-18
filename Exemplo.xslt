<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <!-- Exemplo de mapeamento de dados -->
    <!-- Campo Estado -->
    <xsl:variable name="status">
        <xsl:value-of select="//Ticket/State" />
    </xsl:variable>
    <xsl:variable name="statusmapping">
        <xsl:choose>
            <xsl:when test="$status='open'">EM ATENDIMENTO</xsl:when>
            <xsl:when test="$status='closed successful'">ENCERRADO</xsl:when>
            <xsl:otherwise>ABERTO</xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <!-- Campo Tipo -->
    <xsl:variable name="type">
        <xsl:value-of select="//Ticket/Type" />
    </xsl:variable>
    <xsl:variable name="typemapping">
        <xsl:choose>
            <xsl:when test="$type=''">incidente</xsl:when>
            <xsl:when test="$type='Incident'">incidente</xsl:when>
            <xsl:when test="$type='ServiceRequest'">requisição</xsl:when>
            <xsl:when test="$type='Unclassified'">incidente</xsl:when>
            <xsl:otherwise>incidente</xsl:otherwise>
        </xsl:choose>
    </xsl:variable>

    <!-- Template Principal -->

    <xsl:template match="RootElement">
    <xsl:copy>
        <status>
            <xsl:value-of select="$statusmapping" />
        </status>
        <tipo>
            <xsl:value-of select="$typemapping" />
        </tipo>
        <fila>
            <xsl:value-of select="//Ticket/Queue" />
        </fila>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
