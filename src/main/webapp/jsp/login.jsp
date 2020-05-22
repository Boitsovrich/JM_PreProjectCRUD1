<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>Login</title>
    <link href="/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="form-style-2">
    <div class="form-style-2-heading">
        Вход в систему:
    </div>
    <form method="post" action="/">
        <label for="name">User name
            <input class="input-field" type="text" id="name" required placeholder="name" name="name">
        </label>
        <label for="password">Password
            <input class="input-field" type="password" id="password" required placeholder="password" name="password">
        </label>
        <input class="button" type="submit" value="Войти">
    </form>
</div>
</body>
</html>
