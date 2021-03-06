<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match="/book_shop">
		<html>
			<head>
				<title>XSL tutorial</title>
			</head>
		</html>
		<body>
			<h1>Khóa học lập trình PHP</h1>
			<h3>Cách nhúng XSL vào XML</h3>
			<xsl:for-each select="book">
				<xsl:sort select="pages" order="descending" data-type="number" />
				<ul>
					<li>Tên khóa học: <xsl:value-of select="title" /></li>
					<li>Tác giả: <xsl:value-of select="author" /></li>
					<li>Số trang: <xsl:value-of select="pages" /></li>
					<xsl:if test="weight &gt; 400">
						<li>
							Trọng lượng: <xsl:value-of select="weight" />
										 <xsl:value-of select="weight/@units" />
						</li>
					</xsl:if>
					<li>
						Chú ý
						<xsl:choose>
							<xsl:when test="weight/@units = 'gram'">
								Vận chuyển miễn phí
							</xsl:when>
							<xsl:otherwise>
								Vận chuyển có phí
							</xsl:otherwise>
						</xsl:choose>
					</li>
				</ul>
				<hr />
			</xsl:for-each>
		
			
		</body>
	
	</xsl:template>
	
	<xsl:template match="book">
		
	</xsl:template>
	
	
</xsl:stylesheet>