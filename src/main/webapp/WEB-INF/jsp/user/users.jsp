<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="js/bootstrap1/css/bootstrap.min.css" />
    <script src="js/bootstrap1/js/bootstrap.js"></script>
    <script src="js/bootstrap1/js/bootstrap.min.js"></script>
</head>
<body>
<table border="1" width="100%" height="100%" class="table-hover table-striped">
    <a href="toAdd" class="btn btn-primary">添加</a>
    <tr>
        <td>userId</td>
        <td>userName</td>
        <td>password</td>
        <td>操作</td>
    </tr>
    <c:forEach var="user" items="${pageInfo.list}">
        <tr>
            <td>${user.userId}</td>
            <td>${user.userName}</td>
            <td>${user.password}</td>
            <td>
                <a class="btn btn-warning" href="toUpdate/${user.userId}">修改</a>
                <a class="btn btn-danger" href="delete/${user.userId}">删除</a>
            </td>
        </tr>
    </c:forEach>
</table>
</div>
<!-- /.box-body -->
<div class="box-tools pull-right">
    <ul class="pagination">
        <li><a href="${pageContext.request.contextPath}/toList?page=1&size=5" aria-label="Previous">首页</a></li>
        <li><a href="${pageContext.request.contextPath}/toList?page=${pageInfo.pageNum-1}&size=5">上一页</a></li>
        <c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
            <li><a href="${pageContext.request.contextPath}/toList?page=${pageNum}&size=5">${pageNum}</a></li>
        </c:forEach>
        <li><a href="${pageContext.request.contextPath}/toList?page=${pageInfo.pageNum+1}&size=5">下一页</a></li>
        <li><a href="${pageContext.request.contextPath}/toList?page=${pageInfo.pages}&size=5" aria-label="Next">尾页</a></li>
    </ul>
</div>
</div>
</body>
</html>
