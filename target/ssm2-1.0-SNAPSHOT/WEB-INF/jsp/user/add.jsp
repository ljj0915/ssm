<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="js/bootstrap1/css/bootstrap.min.css" />
    <script src="js/bootstrap1/js/bootstrap.js"></script>
    <script src="js/bootstrap1/js/bootstrap.min.js"></script>
</head>
<body>
<form method="post" action="insertUser">
    <table class="table table-striped" border="1" width="400">
        <tr>
            <td>userName</td>
            <td>
                <input name="userName" type="text">
            </td>
        </tr>
        <tr>
            <td>password</td>
            <td>
                <input name="password" type="text">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input value="提交" type="submit" class="btn btn-success">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
