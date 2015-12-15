<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">

  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/result">
    <result>
      <xsl:for-each select="menus">
        <menus>
          <zona>
            <xsl:attribute name="zona">
              <xsl:value-of select="@zone"/>
            </xsl:attribute>
          </zona>
          <type>
            <xsl:attribute name="type">
              <xsl:value-of select="@type"/>
            </xsl:attribute>
          </type>
          <xsl:for-each select="menu">
            <menu>
              <xsl:attribute name="canteen">
                <xsl:value-of select="@canteen"/>
              </xsl:attribute>
            </menu>
          </xsl:for-each>
        </menus>
      </xsl:for-each>
    </result>
  </xsl:template>

</xsl:stylesheet>
