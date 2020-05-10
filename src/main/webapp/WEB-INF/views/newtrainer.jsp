<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
              crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>New Trainer</title>
    </head>
    <body>
        <h1>Register a new Trainer</h1>

        <div class="container">
            <h2>Add trainer</h2>
            <form method="POST" action="new" modelAttribute="trainer">
                <div class="form-group row">
                    <label for="inputfirstname" class="col-sm-2 col-form-label">First name</label>
                    <div class="col-sm-10">
                        <input type="firstname" class="form-control" id="inputfirstname" placeholder="First name" path="firstName">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputlastname" class="col-sm-2 col-form-label">Last name</label>
                    <div class="col-sm-10">
                        <input type="lastname" class="form-control" id="inputlastname" placeholder="Last name" path="lastName">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="inputsubject" class="col-sm-2 col-form-label">Subject</label>
                    <div class="col-sm-10">
                        <input type="subject" class="form-control" id="inputsubject" placeholder="Subject" path="subject">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-10">
                        <button type="submit" class="btn btn-success">Add</button>
                    </div>
                </div>
            </form>
        </div>

        <div id="msg">${message}</div>
        <div id="list"><a href="<c:url value='/${listurl}' />">Back to the list of Trainers</a></div>
    </body>
</html>
