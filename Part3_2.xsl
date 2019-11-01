<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Leaders per Tour</h2>
                <table border="1">
                    <tr bgcolor="#0066ff">
                        <th>Tour Names</th>
                        <th>Number of Leaders</th>
                    </tr>
                    <xsl:for-each select=".//tour">
                    <tr>
                        <td><xsl:value-of select="@tour_name"></xsl:value-of> 
                        </td>
                        <td><xsl:value-of select="count(leader)"></xsl:value-of></td>
                    </tr>
                    </xsl:for-each>
               </table>
            </body>
        </html>
        
    </xsl:template>
</xsl:stylesheet>