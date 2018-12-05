<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>

<head>
    <meta charset="utf-8">
    <title>Album</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- PAGE settings -->
    <link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
    <link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet" type="text/css">
    <meta name="description" content="Wireframe design of an album page by Pingendo">
    <meta name="keywords" content="Pingendo bootstrap example template wireframe album ">
    <!-- CSS dependencies -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/now-ui-kit.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
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
<div class="navbar navbar-dark bg-info">
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
<div class="text-center bg-dark py-3">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-0">
                <h1 class="text-left">Forum Spring Security</h1>
                <p class="lead text-left">Free open source projects present different java solutions using spring,
                    hibernate and other popular frameworks.</p>
            </div>
        </div>
    </div>
</div>
<div class="row my-3">
    <div class="container w-50">
        <div class="row">
            <div class="col-md-4">
                <form class="">
                    <div class="form-group text-center"><label>Text</label> <input type="text" class="form-control"
                                                                                   placeholder=""></div>
                </form>
            </div>
            <div class="col-md-4">
                <form class="">
                    <div class="form-group text-center"><label>Text</label> <input type="text" class="form-control"
                                                                                   placeholder=""></div>
                </form>
                <div class="row">
                    <div class="col-md-12 text-left"><a class="btn btn-outline-primary w-100" href="#">Outline</a></div>
                </div>
            </div>
            <div class="col-md-4">
                <form class="">
                    <div class="form-group text-center"><label>Text</label> <input type="text" class="form-control"
                                                                                   placeholder=""></div>
                </form>
            </div>
        </div>
    </div>
</div>


<div class="row my-4">
    <div class="container p-0">

        <h1>Credit</h1>
        <table class="table table-striped table-hover">
            <tbody data-link="row" class="rowlink">
            <tr>
                <th>number</th>
                <th>amount of capital</th>
                <th>amount of interest</th>
                <th>installment</th>
                <th>balance of debt</th>
            </tr>
            <tr>
                <td>0</td>
                <td></td>
                <td></td>
                <td></td>
                <td>${credit.amount}</td>
            </tr>
            <c:forEach var="i" items="${credit.periods}">
                <tr onclick="location.href='#';" style="cursor: pointer;">
                    <td>${credit.periods.get(i-1)}</td>
                    <td>${credit.capitalParts.get(i-1)}</td>
                    <td>${credit.interests.get(i-1)}</td>
                    <td>${credit.payment}</td>
                    <td>${credit.debtBalances.get(i-1)}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<div class="row my-4">
    <div class="container p-0">

        <h1>Oferty</h1>
        <table class="table table-striped table-hover">
            <tbody data-link="row" class="rowlink">
            <tr>
                <th>title</th>
                <th>bankName</th>
                <th>margin</th>
                <th>interest</th>
                <th>commission</th>
                <th>rrso</th>
            </tr>
            <c:forEach var="offer" items="${offers}">
                <tr onclick="location.href='#';" style="cursor: pointer;">
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


<footer class="text-muted py-5">
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