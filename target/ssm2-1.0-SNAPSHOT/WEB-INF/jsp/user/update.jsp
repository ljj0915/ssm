<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="js/bootstrap1/css/bootstrap.min.css" />
    <script src="js/bootstrap1/js/bootstrap.js"></script>
    <script src="js/bootstrap1/js/bootstrap.min.js"></script>
</head>
<body>
<form method="post" action="${pageContext.servletContext.contextPath}/updateUser" class="table table-striped">
    <table border="1" width="400">
        <tr>
            <td>userId</td>
            <td>
                <input name="userId" type="text" value="${user.userId}">
            </td>
        </tr>
        <tr>
            <td>userName</td>
            <td>
                <input name="userName" type="text" value="${user.userName}">
            </td>
        </tr>
        <tr>
            <td>password</td>
            <td>
                <input name="password" type="text" value="${user.password}">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input value="更改" type="submit" class="btn btn-success">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
