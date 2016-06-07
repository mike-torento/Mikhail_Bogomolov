<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="model.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Админ панель</title>
        <link rel="stylesheet" href="resources/css/user.css" type="text/css" media="screen" charset="utf-8" />
        <script src="https://code.jquery.com/jquery-2.2.4.js"></script> 
    </head>
    <body>
        <div id="header">

            <div class="col w5 last right bottomlast">
                <p class="last">Вы вошли как <span class="strong"> <%= request.getParameter("login")%> ,</span> <a href="index.jsp">Выйти</a></p>
            </div>
            <div class="clear"></div>
        </div>
        <h1>Пользователи:</h1>

        <form action="register.jsp" method="POST">
            <button>Добавить</button>
        </form>  
        
        <script>
            function userChecked() {
                var cboxes = document.getElementsByName('user');
                var len = cboxes.length;
                var data = "";
                for (var i = 0; i < len; i++) { 
                    if (cboxes[i].checked) {
                        data = (cboxes[i].value);

                    }

                }

                location.href = "replace.jsp?user=" + data;
            }

        </script>
        
        <form action="deleteUser.jsp" method="POST">
            <div id="table" class="help">



                <div class="col w10 last">
                    <div class="content">
                        <table>
                            <tr>
                                <th class="checkbox"><input type="checkbox" name="checkbox" /></th>
                                <th>ID пользователя</th>
                                <th>Логин</th>
                                <th>Пароль</th>
                                <th>Имя</th>
                                <th>Телефон</th>
                                <th>Email</th>
                            </tr>

                            <jsp:useBean id="obj" scope="page" class="dao.UserDAO" />
                            <c:forEach var="num" items="${obj.getUserList()}">

                                <tr id="${num.getIdUser()}">
                                    <td class="checkbox" ><input type="checkbox" name="user" value="${num.getIdUser()}" id="${num.getIdUser()}"/></td>
                                    <td> ${num.getIdUser()}</td>
                                    <td>${num.getLogin()}</td>
                                    <td>${num.getPass()}</td>
                                    <td>${num.getName()}</td>
                                    <td>${num.getPhone()}</td>
                                    <td>${num.getEmail()}</td>
                                </tr>

                            </c:forEach>



                            <button type="button" onclick="userChecked()">Изменить</button>
                            <button type="submit">Удалить</button>

                        </table>

                    </div>							
                </div>
                <div class="clear"></div>
            </div>
        </form>      




        <div id="footer">
            <p class="last">Администраторская панель <a href=""></a></p>
        </div>
    </body>
</html>