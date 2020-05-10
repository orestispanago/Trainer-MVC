<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
              crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Trainers' List</title>
    </head>
    <body>
        <h1>Trainers' List</h1>
        <div class="container-fluid" id="navbarid">
        </div>
        <div id="includedContent"></div>
        <!--<h1>Trainers</h1>-->
        <div class="container">
            <table class="table table-hover">
                <thead class="bg-primary text-white">
                    <tr>
                        <th>First name</th>
                        <th>Last name</th>
                        <th>Subject</th>
                        <th class="text-right"> Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${trainers}" var="trainer">
                        <tr>
                            <td>${trainer.firstName}</td>
                            <td>${trainer.lastName}</td>
                            <td>${trainer.subject}</td>
                            <td align="right">
                                <a href="<c:url value='${editurl}/${trainer.id}' />" class="btn btn-warning">
                                    <span class="fa fa-pencil"></span> Update
                                </a>
                                <a href="<c:url value='${deleteurl}/${trainer.id}' />" class="btn btn-danger">
                                    <span class="fa fa-trash"></span> Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>

                </tbody>

            </table>
            <a href="new" class="btn btn-success">
                <span class="fa fa-plus"></span> Add
            </a>
        </div>

        <div id="msg">${msg}</div>
    </body>
</html>
