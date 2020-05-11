<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
              crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Update Trainer</title>
    </head>
    <body>
        <h1>Update a Trainer</h1>

        <%
            String updateUrlFINAL = request.getContextPath() + "/" + request.getAttribute("updateurl");
            session.setAttribute("updateUrlFINAL", updateUrlFINAL);
        %>
        <div class="container-fluid" id="navbarid"></div>
        <div id="includedContent"></div>
        <h1>Trainers</h1>
        <div class="container">
            <h2>Edit trainer</h2>
            <form:form method="POST" action="${updateUrlFINAL}" modelAttribute="trainer">
                <form:input type="hidden" path="id" id="id"/>
                <div class="form-group row">
                    <label for="inputfirstname" class="col-sm-2 col-form-label">First name</label>
                    <div class="col-sm-10">
                        <form:input type="firstname" class="form-control" id="inputfirstname" path="firstName"  />
                        <form:errors path="firstName" cssStyle="color: #ff0000;"/><form:errors path="firstName" cssStyle="color: #ff0000;"/>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputlastname" class="col-sm-2 col-form-label">Last name</label>
                    <div class="col-sm-10">
                        <form:input type="lastname" class="form-control" id="inputlastname" path="lastName" />
                        <form:errors path="lastName" cssStyle="color: #ff0000;"/>
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputsubject" class="col-sm-2 col-form-label">Subject</label>
                    <div class="col-sm-10">
                        <form:input type="subject" class="form-control" id="inputsubject" path="subject" />
                        <form:errors path="subject" cssStyle="color: #ff0000;"/>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-10">
                        <button type="submit" class="btn btn-success">Done</button>
                    </div>
                </div>
            </form:form>

        </div>
        <div id="msg">${message}</div>
        <div id="list"><a href="<c:url value='/${listurl}' />">Back to the list of Trainers</a></div>
    </body>
</html>
