<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="Model.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Админ панель</title>
        <link rel="stylesheet" href="resources/css/user.css" type="text/css" media="screen" charset="utf-8" />

    </head>
    <body>
        <div id="header">

            <div class="col w5 last right bottomlast">
                <p class="last">Вы вошли как <span class="strong">Admin,</span> <a href="">Выйти</a></p>
            </div>
            <div class="clear"></div>
        </div>
        
        //кнопка добавить
        <form action="register.jsp" method="GET">
            <button>Добавить</button>
        </form>

        <form action="user.jsp" method="GET">
            <button type="submit">Добавить</button>
        </form>
        

       
        <div id="table" class="help">
            <h1>Пользователи:</h1>
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

                        <jsp:useBean id="obj" scope="page" class="DAO.UserDAO" />
                        <c:forEach var="num" items="${obj.getUserList()}">

                            <tr id="id_1">
                                <td class="checkbox" ><input type="checkbox" name="${num.getIdUser()}" /></td>
                                <td> ${num.getIdUser()}</td>
                                <td>${num.getLogin()}</td>
                                <td>${num.getPass()}</td>
                                <td>${num.getName()}</td>
                                <td>${num.getPhone()}</td>
                                <td>${num.getEmail()}</td>
                            </tr>

                        </c:forEach>
                    </table>
                </div>							
            </div>
            <div class="clear"></div>
        </div>
        <div id="footer">
            <p class="last">Администраторская панель <a href=""></a></p>
        </div>
    </body>
</html>