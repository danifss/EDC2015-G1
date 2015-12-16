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
      <xsl:attribute name="Cantina">
        <xsl:value-of select="../@canteen"/>
      </xsl:attribute>
      <xsl:attribute name="Refeição">
        <xsl:value-of select="../@meal"/>
      </xsl:attribute>
           
        <xsl:attribute name="Sopa">
        <xsl:value-of select="item[@name='Sopa']" />
      </xsl:attribute>
       <xsl:attribute name="PratoNormalCarne">
        <xsl:value-of select="item[@name='Prato normal carne']" />
      </xsl:attribute>
      <xsl:attribute name="PratoNormalPeixe">
        <xsl:value-of select="item[@name='Prato normal peixe']" />
      </xsl:attribute>
      <xsl:attribute name="PratoDieta">
        <xsl:value-of select="item[@name='Prato dieta']" />
      </xsl:attribute>
      <xsl:attribute name="PratoVegetariano">
        <xsl:value-of select="item[@name='Prato vegetariano']" />
      </xsl:attribute>
       <xsl:attribute name="PratoOpçao">
        <xsl:value-of select="item[@name='Prato opção']" />
      </xsl:attribute>
      <xsl:attribute name="Salada">
        <xsl:value-of select="item[@name='Salada']" />
      </xsl:attribute>
      <xsl:attribute name="Diversos">
        <xsl:value-of select="item[@name='Diversos']" />
      </xsl:attribute>
      <xsl:attribute name="Sobremesa">
        <xsl:value-of select="item[@name='Sobremesa']" />
      </xsl:attribute>
       <xsl:attribute name="Bebida">
        <xsl:value-of select="item[@name='Bebida']" />
      </xsl:attribute>
    </item>
  </xsl:template>

</xsl:stylesheet>
