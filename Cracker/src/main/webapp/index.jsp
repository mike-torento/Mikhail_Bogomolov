<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Авторизация</title>
        <meta charset="UTF-8" />
        <link href="resources/css/style.css" rel="stylesheet" />
    </head>

    <body>

        <form id="loginForm" action="auth.jsp" method="POST">
        <div class="field">
              <label>Имя пользователя:</label>
            <div class="input"><input type="text" name="login" value="" id="login" /></div>
        </div>

        <div class="field">
            <a href="javascript:window.open('register.jsp', 'joe', config='height=270,width=200')" id="forgot">Регистрация</a>
            <label>Пароль:</label>
            <div class="input"><input type="password" name="pass" value="" id="pass" /></div>
        </div>

        <div class="submit">

            <button type="submit">Войти</button>
            <label id="remember"><input name="" type="checkbox" value="" /> Запомнить меня</label>
        </div>

    </form>

</body>
</html>
