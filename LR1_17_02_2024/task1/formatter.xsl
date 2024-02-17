<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="2.0" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  exclude-result-prefixes="#all" expand-text="yes">
	<xsl:template match="/">
	   <html>
	   	<head>
	   		<title>Задание 1. Формула</title>
	   		<meta name="author" content="Alexander Piryushov" />
	   	</head>
	   	<body>
	   		<math>
	   			<xsl:apply-templates/>
	   		</math>
	   	</body>
	   </html>
	</xsl:template>
	
	<xsl:template match="операнд">
		<mi><xsl:apply-templates/></mi>
	</xsl:template>
	
	<xsl:template match="оператор">
		<mo><xsl:apply-templates/></mo>
	</xsl:template>
	
	<xsl:template match="число">
		<mn><xsl:apply-templates/></mn>
	</xsl:template>
	
	<xsl:template match="низверх">
		<munderover>
			<xsl:apply-templates select="строка[1]"/>
			<mrow>
				<xsl:apply-templates select="строка[2]"/>
			</mrow>
			<mrow>
				<xsl:apply-templates select="строка[3]"/>
			</mrow>
		</munderover>
	</xsl:template>
	
	<xsl:template match="низ">
		<msub>
			<xsl:apply-templates/>
		</msub>
	</xsl:template>
	
	<xsl:template match="верх">
		<msup>
			<mrow>
				<xsl:apply-templates select="строка[1]"/>
			</mrow>
			<mrow>
				<xsl:apply-templates select="строка[2]"/>
			</mrow>
		</msup>
	</xsl:template>
	
	<xsl:template match="дробь">
		<mfrac>
			<xsl:apply-templates/>
		</mfrac>
	</xsl:template>
	
	<xsl:template match="корень">
		<msqrt>
			<xsl:apply-templates/>
		</msqrt>
	</xsl:template>
	
	
 </xsl:stylesheet>