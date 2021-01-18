<%--
  Created by IntelliJ IDEA.
  User: bojan
  Date: 2020-08-05
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p>Nagłówek userAgent to:   <c:out value="${userAgent}" default="default" escapeXml="false"></c:out></p>
</body>
</html>
