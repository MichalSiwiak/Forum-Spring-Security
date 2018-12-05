<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>

<head>
    <!-- PAGE settings -->
    <meta charset="utf-8">
    <title>Album</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="to be completed...">
    <meta name="keywords" content="to be completed...">
    <!-- CSS dependencies -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/now-ui-kit.css">
    <link rel="icon" href="to be completed...">
    <link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet" type="text/css">
    <!-- PAGE scripts -->
    <script src="//code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="//stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
</head>
<body class="bg-light text-dark" style="">
<div class="collapse" id="navbarHeader">
    <div class="container">
        <div class="row">
            <div class="col-md-7 py-4">
                <h4>About</h4>
                <p class="text-info">Free open source projects present different java solutions using spring, hibernate
                    and other popular frameworks.</p>
            </div>
            <div class="col-md-3 offset-md-1 py-4">
                <h4>Contact</h4>
                <ul class="list-unstyled">
                    <li>
                        <a href="https://pl.linkedin.com/in/michalsiwiak" class="text-secondary" target="_blank">Follow
                            on LinkedIn</a>
                    </li>
                    <li>
                        <a href="mailto:info@javacoding.pl" target="_top" class="text-secondary">Email me</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="navbar sticky-top navbar-dark bg-info">
    <div class="container d-flex justify-content-between">
        <a href="#" class="navbar-brand d-flex align-items-center"><i class="icon-home"></i><strong>Home</strong> </a>
        <a href="#" class="navbar-brand d-flex align-items-center"><i class="icon-github-circled"></i><strong>Source
            Code</strong> </a>
        <a href="#" class="navbar-brand d-flex align-items-center"><i
                class="icon-doc-text"></i><strong>Description</strong> </a>
        <a href="#" class="navbar-brand d-flex align-items-center"><i class="icon-vcard"></i><strong>Resume</strong>
        </a>
        <a href="#" class="navbar-brand d-flex align-items-center"><i class="icon-mail-alt"></i><strong>Contact</strong>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader"><span
                class="navbar-toggler-icon"></span></button>
    </div>
</div>
<div class="text-center py-4 bg-secondary"
     style="	background-image: linear-gradient(to left, rgba(0, 0, 0, 0.1), rgba(0, 0, 0, 0.9));	background-position: top left;	background-size: 100%;	background-repeat: repeat;">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-0">
                <h1 class="text-left text-primary">Credit Timetable Generator</h1>
                <p class="lead text-left">The application collects offers of housing loans from the other site using the
                    jsoup library. The user has the option of selecting a home loan and generating a loan schedule using
                    the installment plan. Credit installment is calculated based on the value entered by the user. The
                    user has the option to export the loan repayment schedule to an Excel or PDF file.</p>
            </div>
        </div>
    </div>
</div>
<div class="row my-3">
    <div class="container w-50">
        <div class="row">
            <form:form modelAttribute="credit" method="POST">
                <p>Amount</p>
                <form:input path="amount" type="number" required="true" class="form-control"/>
                <p>Period</p>
                <form:input path="period" type="number" required="true" class="form-control"/>
                <p>Stopa procentowa:</p>
                <form:input id="rateOfInterest" path="rateOfInterest" type="number" min="0.01" max="20" step="0.01"
                            required="true" class="form-control"/>
                <br/> <input type="submit" class="btn btn-primary" value="Calculate"/>
            </form:form>
        </div>
    </div>
</div>
<div class="row my-4">
    <div class="container p-0">
        <h1>Oferty</h1>
        <table class="table table-striped table-hover">
            <tbody class=" text-center">
            <tr>
                <th>title</th>
                <th>bankName</th>
                <th>margin</th>
                <th>interest</th>
                <th>commission</th>
                <th>rrso</th>
            </tr>
            <c:forEach var="offer" items="${offers}">
                <tr style="cursor: pointer;">
                    <td>${offer.title}</td>
                    <td>${offer.bankName}</td>
                    <td>${offer.margin}</td>
                    <td>${offer.interest}</td>
                    <td>${offer.commission}</td>
                    <td>${offer.rrso}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<footer class="py-5 bg-dark text-muted">
    <div class="container">
        <p class="float-right">
            <a href="#">Back to top</a>
        </p>
        <p>© Copyright 2018 javacoding.pl - All rights reserved.<br>Contact: info@javacoding.pl<br>02-619 Warsaw<br><a
                href="https://www.javacoding.pl/">Visit the homepage</a>
        </p>
    </div>
</footer>
</body>
</html>