<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- HTML output -->
<xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />

<!-- import script from script file -->
<xsl:import href="script.xsl"/>

<xsl:template match="/">
  <html>
  <body>
  <table border="1">
    <tr bgcolor="#efefef">
      <th>Stop Name</th>
      <th>Route Numbers</th>
      <th>Longitude</th>
      <th>Lattitude</th>
    </tr>
    <xsl:for-each select="london-transit-data/stop">
    <tr>
      <td><xsl:value-of select="@name"/></td>
      <td><xsl:value-of select="routes"/></td>
      <td><xsl:value-of select="location/@longitude"/></td>
      <td><xsl:value-of select="location/@lattitude"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>