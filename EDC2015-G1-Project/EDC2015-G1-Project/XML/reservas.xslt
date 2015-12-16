<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/reservas">
    <reservas>
      <xsl:for-each select="reserva">
        <reserva>
          <xsl:attribute name="ID">
            <xsl:value-of select="id"/>
          </xsl:attribute>
          <xsl:attribute name="Username">
            <xsl:value-of select="userId"/>
          </xsl:attribute>
          <xsl:attribute name="Cantina">
            <xsl:value-of select="cantina"/>
          </xsl:attribute>
          <xsl:attribute name="Refeicao">
            <xsl:value-of select="meal"/>
          </xsl:attribute>
          <xsl:attribute name="Data">
            <xsl:value-of select="date"/>
          </xsl:attribute>
          <xsl:attribute name="Dia">
            <xsl:value-of select="weekDay"/>
          </xsl:attribute>
          <xsl:attribute name="Lugares">
            <xsl:value-of select="numberSeats"/>
          </xsl:attribute>
        </reserva>
      </xsl:for-each>
    </reservas>
  </xsl:template>
  
  
<!--
  <xsl:template match="/reservas">
    <reservas>
      <xsl:for-each select="Santiago">
        <Santiago>
          <Almoco>
            <xsl:for-each select="Almoco/reserva">
              <reserva>
                <xsl:attribute name="Id">
                  <xsl:value-of select="userId"/>
                </xsl:attribute>
                <xsl:attribute name="Data">
                  <xsl:value-of select="date"/>
                </xsl:attribute>
                <xsl:attribute name="Dia">
                  <xsl:value-of select="weekDay"/>
                </xsl:attribute>
                <xsl:attribute name="Lugares">
                  <xsl:value-of select="numberSeats"/>
                </xsl:attribute>
              </reserva>
            </xsl:for-each>
          </Almoco>
          <Jantar>
            <xsl:for-each select="Jantar/reserva">
              <reserva>
                <xsl:attribute name="Id">
                  <xsl:value-of select="userId"/>
                </xsl:attribute>
                <xsl:attribute name="Data">
                  <xsl:value-of select="date"/>
                </xsl:attribute>
                <xsl:attribute name="Dia">
                  <xsl:value-of select="weekDay"/>
                </xsl:attribute>
                <xsl:attribute name="Lugares">
                  <xsl:value-of select="numberSeats"/>
                </xsl:attribute>
              </reserva>
            </xsl:for-each>
          </Jantar>
        </Santiago>
      </xsl:for-each>

      <xsl:for-each select="Crasto">
        <Crasto>
          <Almoco>
            <xsl:for-each select="Almoco/reserva">
              <reserva>
                <xsl:attribute name="Id">
                  <xsl:value-of select="userId"/>
                </xsl:attribute>
                <xsl:attribute name="Data">
                  <xsl:value-of select="date"/>
                </xsl:attribute>
                <xsl:attribute name="Dia">
                  <xsl:value-of select="weekDay"/>
                </xsl:attribute>
                <xsl:attribute name="Lugares">
                  <xsl:value-of select="numberSeats"/>
                </xsl:attribute>
              </reserva>
            </xsl:for-each>
          </Almoco>
          <Jantar>
            <xsl:for-each select="Jantar/reserva">
              <reserva>
                <xsl:attribute name="Id">
                  <xsl:value-of select="userId"/>
                </xsl:attribute>
                <xsl:attribute name="Data">
                  <xsl:value-of select="date"/>
                </xsl:attribute>
                <xsl:attribute name="Dia">
                  <xsl:value-of select="weekDay"/>
                </xsl:attribute>
                <xsl:attribute name="Lugares">
                  <xsl:value-of select="numberSeats"/>
                </xsl:attribute>
              </reserva>
            </xsl:for-each>
          </Jantar>
        </Crasto>
      </xsl:for-each>

      <xsl:for-each select="SnackBar">
        <SnackBar>
          <Almoco>
            <xsl:for-each select="Almoco/reserva">
              <reserva>
                <xsl:attribute name="Id">
                  <xsl:value-of select="userId"/>
                </xsl:attribute>
                <xsl:attribute name="Data">
                  <xsl:value-of select="date"/>
                </xsl:attribute>
                <xsl:attribute name="Dia">
                  <xsl:value-of select="weekDay"/>
                </xsl:attribute>
                <xsl:attribute name="Lugares">
                  <xsl:value-of select="numberSeats"/>
                </xsl:attribute>
              </reserva>
            </xsl:for-each>
          </Almoco>
          <Jantar>
            <xsl:for-each select="Jantar/reserva">
              <reserva>
                <xsl:attribute name="Id">
                  <xsl:value-of select="userId"/>
                </xsl:attribute>
                <xsl:attribute name="Data">
                  <xsl:value-of select="date"/>
                </xsl:attribute>
                <xsl:attribute name="Dia">
                  <xsl:value-of select="weekDay"/>
                </xsl:attribute>
                <xsl:attribute name="Lugares">
                  <xsl:value-of select="numberSeats"/>
                </xsl:attribute>
              </reserva>
            </xsl:for-each>
          </Jantar>
        </SnackBar>
      </xsl:for-each>

      <xsl:for-each select="Restaurante">
        <Restaurante>
          <Almoco>
            <xsl:for-each select="Almoco/reserva">
              <reserva>
                <xsl:attribute name="Id">
                  <xsl:value-of select="userId"/>
                </xsl:attribute>
                <xsl:attribute name="Data">
                  <xsl:value-of select="date"/>
                </xsl:attribute>
                <xsl:attribute name="Dia">
                  <xsl:value-of select="weekDay"/>
                </xsl:attribute>
                <xsl:attribute name="Lugares">
                  <xsl:value-of select="numberSeats"/>
                </xsl:attribute>
              </reserva>
            </xsl:for-each>
          </Almoco>
          <Jantar>
            <xsl:for-each select="Jantar/reserva">
              <reserva>
                <xsl:attribute name="Id">
                  <xsl:value-of select="userId"/>
                </xsl:attribute>
                <xsl:attribute name="Data">
                  <xsl:value-of select="date"/>
                </xsl:attribute>
                <xsl:attribute name="Dia">
                  <xsl:value-of select="weekDay"/>
                </xsl:attribute>
                <xsl:attribute name="Lugares">
                  <xsl:value-of select="numberSeats"/>
                </xsl:attribute>
              </reserva>
            </xsl:for-each>
          </Jantar>
        </Restaurante>
      </xsl:for-each>

      <xsl:for-each select="ESTGA">
        <ESTGA>
          <Almoco>
            <xsl:for-each select="Almoco/reserva">
              <reserva>
                <xsl:attribute name="Id">
                  <xsl:value-of select="userId"/>
                </xsl:attribute>
                <xsl:attribute name="Data">
                  <xsl:value-of select="date"/>
                </xsl:attribute>
                <xsl:attribute name="Dia">
                  <xsl:value-of select="weekDay"/>
                </xsl:attribute>
                <xsl:attribute name="Lugares">
                  <xsl:value-of select="numberSeats"/>
                </xsl:attribute>
              </reserva>
            </xsl:for-each>
          </Almoco>
          <Jantar>
            <xsl:for-each select="Jantar/reserva">
              <reserva>
                <xsl:attribute name="Id">
                  <xsl:value-of select="userId"/>
                </xsl:attribute>
                <xsl:attribute name="Data">
                  <xsl:value-of select="date"/>
                </xsl:attribute>
                <xsl:attribute name="Dia">
                  <xsl:value-of select="weekDay"/>
                </xsl:attribute>
                <xsl:attribute name="Lugares">
                  <xsl:value-of select="numberSeats"/>
                </xsl:attribute>
              </reserva>
            </xsl:for-each>
          </Jantar>
        </ESTGA>
      </xsl:for-each>

      <xsl:for-each select="ESAN">
        <ESAN>
          <Almoco>
            <xsl:for-each select="Almoco/reserva">
              <reserva>
                <xsl:attribute name="Id">
                  <xsl:value-of select="userId"/>
                </xsl:attribute>
                <xsl:attribute name="Data">
                  <xsl:value-of select="date"/>
                </xsl:attribute>
                <xsl:attribute name="Dia">
                  <xsl:value-of select="weekDay"/>
                </xsl:attribute>
                <xsl:attribute name="Lugares">
                  <xsl:value-of select="numberSeats"/>
                </xsl:attribute>
              </reserva>
            </xsl:for-each>
          </Almoco>
          <Jantar>
            <xsl:for-each select="Jantar/reserva">
              <reserva>
                <xsl:attribute name="Id">
                  <xsl:value-of select="userId"/>
                </xsl:attribute>
                <xsl:attribute name="Data">
                  <xsl:value-of select="date"/>
                </xsl:attribute>
                <xsl:attribute name="Dia">
                  <xsl:value-of select="weekDay"/>
                </xsl:attribute>
                <xsl:attribute name="Lugares">
                  <xsl:value-of select="numberSeats"/>
                </xsl:attribute>
              </reserva>
            </xsl:for-each>
          </Jantar>
        </ESAN>
      </xsl:for-each>
    </reservas>
      
  </xsl:template>
-->
</xsl:stylesheet>
