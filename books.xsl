<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <head>
            <style>
                body { font-family: Arial, sans-serif; }
                h2 { text-align: center; margin-top: 30px; }
                table { border-collapse: collapse; width: 80%; margin: 20px auto; }
                th, td { border: 1px solid black; padding: 10px; text-align: center; }
                th { background-color: #f2f2f2; font-weight: bold; }
            </style>
        </head>
        <body>
            <h2>Book Information Table</h2>
            <table>
                <tr>
                    <th>Title</th>
                    <th>Author</th>
                    <th>ISBN</th>
                    <th>Publisher</th>
                    <th>Edition</th>
                    <th>Price</th>
                </tr>
                <xsl:for-each select="bookstore/book">
                <tr>
                    <td><xsl:value-of select="title"/></td>
                    <td><xsl:value-of select="author"/></td>
                    <td><xsl:value-of select="isbn"/></td>
                    <td><xsl:value-of select="publisher"/></td>
                    <td><xsl:value-of select="edition"/></td>
                    <td><xsl:value-of select="price"/></td>
                </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>