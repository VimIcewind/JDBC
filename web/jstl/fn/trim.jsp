<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Using JSTL Functions</title>
</head>
<body>

<c:set var="string1" value="This is first String         "/>
<p>String (1) Length : ${fn:length(string1)}</p>

<c:set var="string2" value="${fn:trim(string1)}" />
<p>String (2) Length : ${fn:length(string2)}</p>
<p>Final string : ${string2}</p>

</body>
</html>
