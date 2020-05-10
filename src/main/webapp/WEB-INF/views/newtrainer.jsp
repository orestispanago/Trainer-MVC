<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Trainer</title>
    </head>
    <body>
        <h1>Register a new Trainer</h1>
        <fmt:formatDate value="${now}" pattern="dd/MM/yyyy" var="myDate" />
        <form:form method="POST" action="new" modelAttribute="trainer">
            <form:input type="hidden" path="id" id="id"/>
            First Name: <form:input path="firstName" /><br />
            Last Name: <form:input path="lastName" /><br />
            Subject : <form:input path="subject" /><br />
            <input type="submit">
        </form:form>
        <div id="msg">${message}</div>
        <div id="list"><a href="<c:url value='/${listurl}' />">Back to the list of Trainers</a></div>
    </body>
</html>
