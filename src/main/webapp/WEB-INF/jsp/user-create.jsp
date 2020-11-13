<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Create user</title>
</head>
<body>
<div class="add-p">
    <form action="/user-create" method="post">
        <strong>Enter user: </strong>
        <br>
        <input type="text" placeholder="First name" name="firstName">
        <input type="text" placeholder="Last name" name="lastName">
        <button>
            add person
        </button>
    </form>
</div>
</body>
</html>