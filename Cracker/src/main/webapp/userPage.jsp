<%@page import="java.sql.SQLException"%>
<%@page import="Model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String login = request.getParameter("login");
            String pass = request.getParameter("pass");
            try {
                User user = Controllers.UserController.authorization(login,pass);
                if (user!=null)
                out.println(user);  
                else out.println("Такого пользователя не существует");
            } catch (SQLException ex) {
                out.println("Такого пользователя не существует");
            }%>







    </body>
</html>
