<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Title</title>
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container">
    <form name="user" action="/add" method="get">
        <td align="left" valign="top">
            <table>

                <table>
                    <tr> First Name <br>
                        <input type="text" name="firstName" size="30" maxlength="100">
                    </tr>
                </table>

                <table>
                    <tr> Second Name <br>
                        <input type="text" name="secondName" size="30" maxlength="100">
                    </tr>
                </table>

                <table>
                    <tr> Nickname <br>
                        <input type="text" name="nickname" size="30" maxlength="100">
                    </tr>
                </table>

                <table>
                    <tr> Password <br>
                        <input type="password" name="password" size="30" maxlength="100">
                    </tr>
                </table>

                <table>
                    <tr> Email <br>
                        <input type="email" name="email" size="30" maxlength="255">
                    </tr>
                </table>

                <select name="roles[0].id">
                    <option value="NONE">Select Role</option>
                    <c:forEach items="${listRole}" var="role" varStatus="roleStatus">

                        <option value='<c:out value="${role.id}"/>'><c:out value="${role.name}"></c:out></option>

                    </c:forEach>
                </select>

                <button class="btn btn-sm btn-primary" type="submit">ADD</button>
            </table>
    </form>
</div>

<div class="container">
    <hr>
    <table>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Second Name</th>
            <th>Nickname</th>
            <th>Password</th>
            <th>Email</th>
            <th>Role</th>
            <th>Delete</th>
            <th>Edit</th>
        </tr>
        <c:forEach items="${list}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.firstName}</td>
                <td>${user.secondName}</td>
                <td>${user.nickname}</td>
                <td>${user.password}</td>
                <td>${user.email}</td>
                <td><a href="/delete/${user.id}">Delete</a></td>
                <td><a href="/findbyid/${user.id}">Edit</a></td>
            </tr>
        </c:forEach>
        <tr>

        </tr>
    </table>
</div>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
