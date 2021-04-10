<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8" indent="yes" />
  
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
