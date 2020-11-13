<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, java.text.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update user: </title>
</head>
<body>
<div>
<form:form action="${pageContext.request.contextPath}/user-update" method="post" modelAttribute="user">
    <form:hidden path="id" />
        <fieldset>
            <form:label path="firstName">First Name</form:label>
            <form:input path="firstName" type="text" maxlength="70" class="form-control"
                 required="required" />
        </fieldset>

            <fieldset>
                    <form:label path="lastName">Last Name</form:label>
                    <form:input path="lastName" type="text" maxlength="70"
                        class="form-control" required="required" />
                </fieldset>
        <button type="submit">Update</button>
    </form:form>
</div>
</body>
</html>