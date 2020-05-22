<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>create user</title>
</head>
<h1> -- Create User -- </h1>
<body>
<form action="/admin/create" method="post">
    <div>
        <label>Name:
            <input type="text" name="name"><br/>
        </label>
    </div>
    <div>
        <label>Password:
            <input type="password" name="password"><br/>
        </label>
    </div>
    <div>
        <label>E-mail:
            <input type="email" name="email"><br/>
        </label>
    </div>
    <div>
        <label>Role:
            <input type="text" name="role"><br/>
        </label>
    </div>
    <button type="submit">Submit</button>
</form>
</body>
<style>
    div {
        padding: 5px;
    }

    button {
        box-shadow: 0 14px 28px rgba(10, 0, 0, 0.25), 0 10px 10px rgba(10, 0, 0, 0.22);
    }
</style>
<div>
    <button onclick="location.href='..'">Back to main</button>
</div>
</html>