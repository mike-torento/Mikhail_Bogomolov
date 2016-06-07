
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Регистрация нового пользователя</title>
          <link href="resources/css/style.css" rel="stylesheet" />
    </head>
    <body>
     <form action="addUser.jsp" method="POST">
        <div class="field">
              <label>Логин:</label>
            <div class="input"><input type="text" name="login" value="" id="login" /></div>
        </div>

        <div class="field">
            <label>Пароль:</label>
            <div class="input"><input type="password" name="pass" value="" id="pass" /></div>
        </div>
         <div class="field">
              <label>Имя:</label>
            <div class="input"><input type="text" name="name" value="" id="name" /></div>
        </div>
         
         <div class="field">
              <label>Телефон:</label>
            <div class="input"><input type="text" name="phone" value="" id="phone" /></div>
        </div>
         
         <div class="field">
              <label>Email:</label>
            <div class="input"><input type="text" name="email" value="" id="email" /></div>
        </div>
         
         <br>

         <button type="submit">Зарегестрировать</button></a


    </form>
        
        
        
    </body>
</html>
