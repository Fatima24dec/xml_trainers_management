<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
 
  <body>
  <h2>trainers information</h2>
 
  <table border="1">
    <tr bgcolor="#00ff80">
<th style="text-align:left">name</th>
<th style="text-align:left">email</th>
<th style="text-align:left">course</th>
<th style="text-align:left">action</th>
</tr>

<xsl:for-each select="trainers/trainer">
<tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="email"/></td>
 <td><xsl:value-of select="course"/></td>
 
<td>
<form action="Delete.php" method="post">
<input type ="hidden" name ="index" value = "{position()-1 }" />
<input type = "submit" value= "delete"/>
 </form>
 </td>
    </tr>
</xsl:for-each>
</table>

<form action="insert.php" method="post">
<h2>add new trainer</h2>
<input type= "text" name = "name"  value= "Enter the name"/>
<input type= "email" name = "email" value= "Enter the email"/>
<input type= "text" name = "course" value=" Enter the course"/>
<input type= "submit" value="add"/>
</form>
 </body>
</html>
</xsl:template>
</xsl:stylesheet>