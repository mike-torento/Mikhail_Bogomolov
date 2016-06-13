
<%@page import="model.User"%>
<%@page import="model.Service"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Подключение услуг</title>
        <link href="resources/css/userPage.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <h1>Выберите услуги для подключения</h1>
        <%
            String login = request.getParameter("login");
            %>
             <form action="addServices.jsp" method="POST">
                            <table>
                                <tr>
                                    <th class="checkbox"><input type="checkbox" name="checkbox" /></th>
                                    <th>ID услуги</th>
                                    <th>Название</th>
                                    <th>Цена</th>
                                    <th>Описание</th>
                                </tr>
                                <%   User u = dao.UserDAO.getUserByLogin(login);
                                    List<Service> services = dao.ServiceDAO.getServicesYouCanConnect(u.getIdUser());
                                    for (int i = 0; i < services.size(); i++) {
                                %>
                                <tr id="${num1.getId()}"> 
                                    <td class="checkbox" ><input type="checkbox" name='<%services.get(i).getId(); %>' value=""/></td>
                                    <td>  <% out.println(services.get(i).getId()); %></td>
                                    <td><% out.println(services.get(i).getName()); %></td>
                                    <td><% out.println(services.get(i).getPrice()); %></td>
                                    <td><% out.println(services.get(i).getInfo()); %></td>
                                </tr>
                                <%}%>
                            </table>
                            <button type="submit">Добавить</button>
                        </form>
            
            
    </body>
</html>
