<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/castles">
        <html>
            <head>
                <title>Замки</title>
                <style>
                    table { border-collapse: collapse; width: 100%; }
                    th, td { border: 1px solid black; padding: 8px; text-align: left; }
                </style>
            </head>
            <body>
                <h1>Список Замков</h1>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Название</th>
                        <th>Изображение</th>
                        <th>Описание</th>
                        <th>Информация</th>
                    </tr>
                    <xsl:apply-templates select="castle"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="castle">
        <tr>
            <td><xsl:value-of select="id"/></td>
            <td><xsl:value-of select="name"/></td>
            <td><img src="{image}" alt="{name}"/></td>
            <td><xsl:value-of select="description"/></td>
            <td><xsl:value-of select="info"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>



