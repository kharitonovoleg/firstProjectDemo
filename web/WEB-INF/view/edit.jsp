<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Title</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>


<form name="user" action="/edit" method="post">
    <%--<td align="left" valign="top">--%>
    <%--<table>--%>

    <%--<table>--%>
    <%--<tr> Nickname <br>--%>
    <%--<input type="text" name="nickname" size="30" maxlength="100" value="${user.nickname}">--%>
    <%--</tr>--%>
    <%--</table>--%>

    <%--<table>--%>
    <%--<tr> First Name <br>--%>
    <%--<input type="text" name="firstName" size="30" maxlength="100" value="${user.firstName}">--%>
    <%--</tr>--%>
    <%--</table>--%>

    <%--<table>--%>
    <%--<tr> Second Name <br>--%>
    <%--<input type="text" name="secondName" size="30" maxlength="100" value="${user.secondName}">--%>
    <%--</tr>--%>
    <%--</table>--%>

    <%--<table>--%>
    <%--<tr> Password <br>--%>
    <%--<input type="password" name="password" size="30" maxlength="100" value="${user.password}">--%>
    <%--</tr>--%>
    <%--</table>--%>

    <%--<table>--%>
    <%--<tr> Email <br>--%>
    <%--<input type="email" name="email" size="30" maxlength="255" value="${user.email}">--%>
    <%--</tr>--%>
    <%--</table>--%>

    <%--<button class="btn btn-sm btn-primary" type="submit">EDIT</button>--%>
    <%--</table>--%>

    <input type="text" hidden="true" name="id" value="${user.id}"><br/>


    <tr> First Name</tr><br/>
    <input type="text" name="firstName" value="${user.firstName}"><br/>

    <tr> Second Name</tr><br/>
    <input type="text" name="secondName" value="${user.secondName}"><br/>

    <tr> Nickname</tr><br/>
    <input type="text" name="nickname" value="${user.nickname}"><br/>

    <tr> Password</tr><br/>
    <input type="password" name="password" value="${user.password}"><br/>

    <tr> Email</tr><br/>
    <input type="email" name="email" value="${user.email}"><br/>

    <button class="btn btn-sm btn-primary" type="submit">Edit</button>
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
