

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Страница для ЛК пользователя</h1>
        <%
            String login = request.getParameter("login");
            out.println("Здравствуйте, "+login);
            
            
            %>
    </body>
</html>
