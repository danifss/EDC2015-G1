﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/result">
    <result>
          <xsl:for-each select="menus/menu">
            <menu>
              <xsl:attribute   name ="canteen">
                <xsl:value-of select="@canteen"/>
              </xsl:attribute>
              <xsl:attribute name="meal">
                <xsl:value-of select="@meal"/>
              </xsl:attribute>
              <xsl:for-each select="items">
                <items>
                  <xsl:attribute name="Sopa">
                    <xsl:value-of select="item[@name='Sopa']" />
                  </xsl:attribute>
                  <xsl:attribute name="Carne">
                    <xsl:value-of select="item[@name='Prato carne']" />
                  </xsl:attribute>
                  <xsl:attribute name="Peixe">
                    <xsl:value-of select="item[@name='Prato peixe']" />
                  </xsl:attribute>
                  <xsl:attribute name="Dieta">
                    <xsl:value-of select="item[@name='Prato dieta']" />
                  </xsl:attribute>
                  <xsl:attribute name="Salada">
                    <xsl:value-of select="item[@name='Buffet de saladas']" />
                  </xsl:attribute>
                  <xsl:attribute name="Diversos">
                    <xsl:value-of select="item[@name='Diversos']" />
                  </xsl:attribute>
                  <xsl:attribute name="Sobremesa">
                    <xsl:value-of select="item[@name='Sobremesa']" />
                  </xsl:attribute>
                  <xsl:attribute name="Bebidas">
                    <xsl:value-of select="item[@name='Bebidas']" />
                  </xsl:attribute>
                </items>
              </xsl:for-each>
            </menu>
          </xsl:for-each>
    </result>
  </xsl:template>
</xsl:stylesheet>