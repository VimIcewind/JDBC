<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<jsp:plugin type="applet" codebase="dirname" code="MyApplet.class" width="60" height="80">
    <jsp:param name="fontcolor" value="red" />
    <jsp:param name="background" value="black" />

    <jsp:fallback>
        Unable to initialize Java Plugin
    </jsp:fallback>

</jsp:plugin>
</body>
</html>
