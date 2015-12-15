<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/result">
    <itens>
      <xsl:apply-templates select="/result/menus/menu/items" />
    </itens>
  </xsl:template>
  
  
  <xsl:template match="items">
    <item>
      <xsl:attribute name="cantina">
        <xsl:value-of select="../@canteen"/>
      </xsl:attribute>
      
      <xsl:attribute name="sopa">
        <xsl:value-of select="item[@name='Sopa']" />
      </xsl:attribute>
    </item>
  </xsl:template>

</xsl:stylesheet>
