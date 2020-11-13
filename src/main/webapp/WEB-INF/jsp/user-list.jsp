<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, java.text.*" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>all persons!</title>
</head>
<body>
<div class="information">
    <table>
        <tr>
            <td>ID</td>
            <td>First Name</td>
            <td>Last Name</td>
            <td>Options</td>
        </tr>
        <c:forEach var="user" items="${users}">
            <tr>
                <td>${user.id}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>
                    <a type="button"
                       href="${pageContext.request.contextPath}/user-delete/${user.id}">Delete</a>
                    <br>
                    <a href="/user-update/${user.id}">Update</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
<p><a href="/user-create">Create user</a></p>
</body>
</html>