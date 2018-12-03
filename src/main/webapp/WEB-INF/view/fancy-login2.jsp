<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/neon.css">
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

<body>
<div class="collapse bg-dark" id="navbarHeader">
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
<div class="navbar navbar-dark bg-dark">
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
<div class="text-center py-0">
    <div class="container">
        <div class="row my-3 justify-content-center">
            <div class="col-md-0">
                <h1 class="text-left">Forum Spring Security</h1>
                <p class="lead text-left">Free open source projects present different java solutions using spring,
                    hibernate and other popular frameworks.</p>
            </div>
        </div>
    </div>
</div>
<div class="bg-light py-4 text-info" style="	text-shadow: 0px 0px 4px black;	box-shadow: 0px 0px 4px  black;">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4 col-xs-offset-1 col-xs-10 text-center w-100">
                        <form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
                            <!-- Check for logout -->
                            <c:if test="${param.logout != null}">
                                <h6 class="text-info mb-2 mt-2">You have been logged out</h6>
                            </c:if>
                            <div class="form-group text-center"><label class="w-100 text-center">Sign In</label> <input
                                    type="text" name="username" placeholder="username"
                                    class="form-control text-center w-75 d-inline-flex"
                                    placeholder="Enter email"></div>
                            <div class="form-group"><input type="password" name="password" placeholder="password"
                                                           class="form-control text-center d-inline-flex w-75"
                                                           placeholder="Password">
                                <c:if test="${param.error != null}">
                                    <h6 class="text-danger mb-2 mt-2">Invalid username and password</h6>
                                </c:if>
                            </div>
                            <button type="submit" class="btn mb-2 btn-success w-75 btn-lg">Login</button>
                            <a href="${pageContext.request.contextPath}/register/showRegistrationForm"
                               class="btn mb-2 w-75 text-center btn-info btn-lg" role="button" aria-pressed="true">Register
                                New User</a>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                        </form>
                    </div>
                    <div class="col-md-4"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12"></div>
        </div>
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
<pingendo onclick="window.open('https://pingendo.com/', '_blank')"
          style="cursor:pointer;position: fixed;bottom: 20px;right:20px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:220px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">
    Made with Pingendo Free&nbsp;&nbsp;<img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block"
                                            alt="Pingendo logo" height="16"></pingendo>
</body>

</html>