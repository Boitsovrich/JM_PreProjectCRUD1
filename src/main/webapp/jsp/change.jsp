<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>changeUser</title>
</head>
<h1> -- Change User -- </h1>
<body>
<% Long id = Long.parseLong(request.getParameter("id")); %>
<form method="post" action="/admin/change">
    <div>
        <label>ID: <%=id%>
            <input type="hidden" name="id" value="<%=id%>"><br/>
        </label>
    </div>
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