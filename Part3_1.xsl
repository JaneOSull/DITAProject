<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:strip-space elements="*"/>
    
    <xsl:template match="/">
        <html>
            <body>
                <h2>Customers per Trip</h2>
            <table border="1">
                <tr bgcolor="#ffff00">
                    <th>Trip Names</th>
                    <th>Number of Customers</th>
                    
                </tr>
                <xsl:for-each select=".//trip">
                               <tr>
                                   <td><xsl:value-of select="@trip_name"/></td>
                                   <td><xsl:value-of select="count(customer)"/></td>
                               </tr>
               </xsl:for-each>
           
            </table>
            </body>
        </html>
       
    </xsl:template>
</xsl:stylesheet>