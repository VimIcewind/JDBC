<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<html>
<head>
    <title>JSTL x:param 标签</title>
</head>
<body>
<h3>Books Info:</h3>
<c:set var="xmltext">
    <books>
        <book>
            <name>Padam History</name>
            <author>ZARA</author>
            <price>100</price>
        </book>
        <book>
            <name>Great Mistry</name>
            <author>NUHA</author>
            <price>2000</price>
        </book>
    </books>
</c:set>

<c:import url="http://localhost:8080/jstl/x/stylebgcolor.xsl" var="xslt"/>
<x:transform xml="${xmltext}" xslt="${xslt}">
    <x:param name="bgColor" value="grey"/>
</x:transform>

</body>
</html>
