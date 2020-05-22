<%@ page import="model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.UserDAO" %>
<%@ page import="service.UserService" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>View Users</title>
</head>
<body>

<h1>Users List</h1>

<table border="3" width="40%">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Password</th>
        <th>Email</th>
        <th>Role</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${users}" var="u">
        <tr>
            <td>${u.getId()}</td>
            <td>${u.getName()}</td>
            <td>${u.getPassword()}</td>
            <td>${u.getEmail()}</td>
            <td>${u.getRole()}</td>
            <td><a href="/admin/change?id=${u.getId()}">Edit</a></td>
            <td><a href="/admin/delete?id=${u.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/><a href="/admin/create">
    <button>Add New User</button>
</a>
</body>
<style>
    table, button, input {
        box-shadow: 20px 24px 28px rgba(4, 25, 62, 0.25), 0 10px 10px rgba(29, 16, 16, 0.22);
    }

    h1, a {
        text-shadow: 10px 14px 28px rgba(59, 39, 39, 0.25), 0 10px 10px rgba(54, 26, 26, 0.22);
    }
</style>
</html>