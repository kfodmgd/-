<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
 <html>
 <body>
 <h2>Ассортимент</h2>
 <table border="1">
 <tr>
 <th>Тип</th>
 <th>Вид</th>
 <th>Название</th>
 </tr>

 <xsl:for-each select="collection/tea"><!--где будем выполнять сортировку-->
 <xsl:sort select="color" order="ascending"/>
 
 <tr>
 <td><xsl:value-of select="type"/></td><!--заполнение таблицы+параллельное создание ячеек под необхожимые данные-->
 
 
<xsl:choose>
<xsl:when test="color='Красный'">
<td bgcolor="red"><xsl:value-of select="color"/></td>
</xsl:when>

<xsl:when test="color='Зелёный'">
<td bgcolor="green"><xsl:value-of select="color"/></td>
</xsl:when>

<xsl:when test="color='Белый'">
<td bgcolor="grey"><xsl:value-of select="color"/></td>
</xsl:when>

<xsl:when test="color='Жёлтый'">
<td bgcolor="yellow"><xsl:value-of select="color"/></td>
</xsl:when>

<xsl:when test="color='Чёрный'">
<td bgcolor="Maroon"><xsl:value-of select="color"/></td>
</xsl:when>

<xsl:otherwise>
<td><xsl:value-of select="color"/></td>
</xsl:otherwise>
</xsl:choose>


 <td><xsl:value-of select="name"/></td>
 </tr>
 </xsl:for-each>
 </table>
 </body>
 </html>
</xsl:template>
</xsl:stylesheet>