<%@page import="java.util.List"%>
<%@page import="model.Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>UserPage</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="resources/css/userPage.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div class="main">
            <div class="header">
                <div class="header_resize">
                    <div class="logo">
                        <h1><a>Net<span>Cracker</span></a> <small>Лабораторная работа</small></h1>
                    </div>
                    <div class="clr"></div>
                    <div class="menu_nav">
                        <ul>
                            <li class="active"><a href="userPage.jsp">ЛК</a></li>
                            <li><a href="#">Услуги</a></li>
                            <li><a href="#">Пакеты услуг</a></li>
                        </ul>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>


            <div class="content">
                <div class="clr"></div>
                <div class="mainbar">
                    <div class="article">
                        <h3>Здравствуйте, <%
                            String login = request.getParameter("login");
                            out.println(login);%> </h3>
                            
                        <form action="addService.jsp" method="POST">
                            <button>Подключить услугу</button>
                        </form>  


                        <h2>Ваши услуги</h2>
                        <form action="addService.jsp" method="POST">
                            <table>
                                <tr>
                                    <th class="checkbox"><input type="checkbox" name="checkbox" /></th>
                                    <th>ID услуги</th>
                                    <th>Название</th>
                                    <th>Цена</th>
                                    <th>Описание</th>
                                </tr>
                                <% List<Service> services1 = dao.ServiceDAO.getServiceList();
                                    for (int i = 0; i < services1.size(); i++) {
                                %>
                                <tr id="${num1.getId()}"> 
                                    <td class="checkbox" ><input type="checkbox" name='<%services1.get(i).getId(); %>' value=""/></td>
                                    <td>  <% out.println(services1.get(i).getId()); %></td>
                                    <td><% out.println(services1.get(i).getName()); %></td>
                                    <td><% out.println(services1.get(i).getPrice()); %></td>
                                    <td><% out.println(services1.get(i).getInfo()); %></td>
                                </tr>
                                <%}%>
                        </form>
                        <div class="clr"></div>
                    </div>

                </div>
            </div>
            <div class="clr"></div>
        </div>
        </div>
        <div class="fbg">

        </div>
    </body>
</html>

