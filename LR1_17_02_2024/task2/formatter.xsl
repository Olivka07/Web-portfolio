<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="2.0" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  exclude-result-prefixes="#all" expand-text="yes">
	<xsl:template match="/">
	   <html>
	   	<head>
	   		<title>Задание 2. Графика</title>
	   		<meta name="author" content="Alexander Piryushov" />
	   	</head>
	   	<body>
	   		<svg height="{графика/@высота}" width="{графика/@ширина}">
	   			<xsl:for-each select="графика/эллипс">
	   				<ellipse style="fill:{@заливка};" 
	   				    stroke="{@ободок}"  stroke-width="{@ширина-ободка}" cx="{@cx}" cy="{@cy}" rx="{@rx}" ry="{@ry}"/>
	   			</xsl:for-each>	
	   		</svg>
	   	</body>
	   </html>
	</xsl:template>
</xsl:stylesheet>