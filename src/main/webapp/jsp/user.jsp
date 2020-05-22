<%@ page import="model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Users</title>
</head>
<body>

<h1>Users</h1>

<table border="3" width="40%">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Role</th>
    </tr>
    <%User user = (User) request.getAttribute("user");%>
        <tr>
            <td><%=user.getId()%></td>
            <td><%=user.getName()%></td>
            <td><%=user.getEmail()%></td>
            <td><%=user.getRole()%></td>
        </tr>
</table>

</body>
<style>
    table, button, input {
        box-shadow: 20px 24px 28px rgba(4, 25, 62, 0.25), 0 10px 10px rgba(29, 16, 16, 0.22);
    }

    h1, a {
        text-shadow: 10px 14px 28px rgba(59, 39, 39, 0.25), 0 10px 10px rgba(54, 26, 26, 0.22);
    }
</style>
<div>
    <button onclick="location.href='..'">Back</button>
</div>
</html>