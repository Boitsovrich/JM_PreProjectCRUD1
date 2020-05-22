<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>user</title>
</head>
<h2>No user</h2>
<body>
<div>
    <table>
        <tr>
            <p>Hello <%= request.getParameter("name") %>, вы не зарегестрированы.</p>
        </tr>
    </table>
</div>


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
    <button onclick="location.href='..'">Back</button>
</div>
</html>