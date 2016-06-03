<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:t="http://www.tei-c.org/ns/1.0"
	version="1.0">

	<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
	<xsl:strip-space elements="*"/>
	
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
	
	<xsl:template match="t:keywords[@scheme='LCSH']">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
			<xsl:element name="term" namespace="http://www.tei-c.org/ns/1.0">
				<xsl:value-of select="'Civil War Letters'"/>
			</xsl:element>
		</xsl:copy>
		
	</xsl:template>
	
</xsl:stylesheet>