<?xml version="1.0"?>
<xsl:transform version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xi="http://www.w3.org/2001/XInclude">
	<xsl:template match="/config/navit/mapset/xi:include">
		<map type="binfile" enabled="yes" data="/sdcard/navitmap.bin" />
		<map type="binfile" enabled="yes" data="/sdcard/navit/navitmap.bin" />
	</xsl:template>
</xsl:transform>
