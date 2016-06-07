<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deleted</title>
    </head>
    <body>
    <center>
        <table width="100%" border="1" align="center">
            <tr bgcolor="#949494">
                <th>Id_User</th>
            </tr>
            <%
                Enumeration paramNames = request.getParameterNames();
                while (paramNames.hasMoreElements()) {
                    String paramName = (String) paramNames.nextElement();
                    dao.UserDAO.deleteUser(new Long(paramName));
                    

                }

                String site = new String("user.jsp");
                response.setStatus(response.SC_MOVED_TEMPORARILY);
                response.setHeader("Location", site);
            %>
        </table>
    </center>
</body>
</html>
