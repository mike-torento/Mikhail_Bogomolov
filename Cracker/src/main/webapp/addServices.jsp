

<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Enumeration paramNames = request.getParameterNames();

            while (paramNames.hasMoreElements()) {
                String paramName = (String) paramNames.nextElement();
                
            }
        %>
    </body>
</html>
