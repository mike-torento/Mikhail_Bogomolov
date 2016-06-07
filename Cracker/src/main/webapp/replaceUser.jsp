<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Long id=new Long(request.getParameter("id"));
            String login = request.getParameter("login");
            String pass = request.getParameter("pass");
            String name = request.getParameter("name");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            User oldUser = dao.UserDAO.getUserByID(id);
            User newUser = new User(login, pass, name, phone, email);
            dao.UserDAO.replaceUser(oldUser.getIdUser(), newUser);
            
            String site = new String("user.jsp");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", site);


        %>
    </body>
</html>
