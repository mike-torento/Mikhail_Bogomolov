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

        <%
            String[] idString = request.getParameterValues("user");
            if (idString==null){
                out.println("<h2>Выберите элементы для удаления!</h2>");
                out.println("<br><a href=\"user.jsp\">Вернуться<a>");
            }
            else {
                    for (int i = 0; i < idString.length; i++) {
                        dao.UserDAO.deleteUser(new Long(idString[i]));
                    }
                    String site = new String("user.jsp");
                    response.setStatus(response.SC_MOVED_TEMPORARILY);
                    response.setHeader("Location", site);
                }
                
                

            
            
//            Enumeration paramNames = request.getParameterNames();
//                if (!paramNames.hasMoreElements()) {
//                    out.println("<h2>Выберите элементы для удаления!</h2>");
//                    out.println("<br><a href=\"user.jsp\">Вернуться<a>");
//                } else {
//                    while (paramNames.hasMoreElements()) {
//                        String paramName = (String) paramNames.nextElement();
//                        dao.UserDAO.deleteUser(new Long(paramName));
//                    }
//                    String site = new String("user.jsp");
//                    response.setStatus(response.SC_MOVED_TEMPORARILY);
//                    response.setHeader("Location", site);
//                }

        %>
        
    </center>
</body>
</html>
