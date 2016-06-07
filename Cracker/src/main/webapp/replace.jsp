<%@page import="model.User"%>
<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="resources/css/style.css" rel="stylesheet" />
    </head>
    <body>
        <style>
            .vyrovnyat {
                text-align: center;
                margin-top: 10em;  

        </style>
        <%
            String s = request.getParameter("user");
            User u = dao.UserDAO.getUserByID(new Long(s));
            
        %>
         <center>
        <form  action="replaceUser.jsp" method="POST" class="vyrovnyat">

        
    
                <input type="hidden" name="id" value="<%=u.getIdUser()%>" id="id" />
            
            <div class="field">
                <label>Логин:</label>
                <div class="input"><input type="text" name="login" value="<%=u.getLogin() %>" id="login" /></div>
            </div>

            <div class="field">
                <label>Пароль:</label>
                <div class="input"><input type="password" name="pass" value="<%=u.getPass() %>" id="pass" /></div>
            </div>

            <div class="field">
                <label>Имя:</label>
                <div class="input"><input type="text" name="name" value="<%=u.getName()%>" id="name" /></div>
            </div>

            <div class="field">
                <label>Телефон:</label>
                <div class="input"><input type="text" name="phone" value="<%=u.getPhone()%>" id="phone" /></div>
            </div>

            <div class="field">
                <label>Email:</label>
                <div class="input"><input type="text" name="email" value="<%=u.getEmail()%>" id="email" /></div>
            </div>

            <br>

            <button type="submit">Сохранить</button></a


        </form>
         </center>
        
    </body>
</html>
