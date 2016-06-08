<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            String login = request.getParameter("login");
            String pass = request.getParameter("pass");
            if (controllers.UserController.authorization(login, pass)) {
                if (controllers.UserController.adminPermission(login, pass)) {
                    String site = new String("user.jsp");
                    response.setStatus(response.SC_MOVED_TEMPORARILY);
                    response.setHeader("Location", site);
                } else { %>
                            <jsp:forward page="userPage.jsp"> 
                                <jsp:param name="login" value='<%= login %>' /> 
                            </jsp:forward> 
        <%
//                        String site = new String("test.jsp");
//                         response.setStatus(response.SC_MOVED_TEMPORARILY);
//                        response.setHeader("Location", site);

                }
            } else {
                out.println("<h2>Такого пользователя не существует!</h2>");
                out.println("<br><a href=\"index.jsp\">Попробовать снова<a>");
            }


        %>


    </body>
</html>
