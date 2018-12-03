<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>

<head></head>

<body>
<meta charset="utf-8">
<title>Album</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- PAGE settings -->
<link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
<link href="resources/css/home.css" rel="stylesheet" type="text/css">
<meta name="description" content="Wireframe design of an album page by Pingendo">
<meta name="keywords" content="Pingendo bootstrap example template wireframe album ">
<!-- CSS dependencies -->
<link rel="stylesheet" href="resources/css/neon.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
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
<div class="navbar border-info navbar-dark bg-primary"
     style="	background-image: linear-gradient(to bottom, rgba(0,0,0,0.2), rgba(0,0,0,0.8));	background-position: top left;	background-size: 100%;	background-repeat: repeat;	box-shadow: 0px 0px 4px  black;">
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
<div class="row my-4">
    <div class="container">
        <h3>Contact us</h3>
        <form:form modelAttribute="mail" method="POST">
            <fieldset class="form-group my-3">
                <form:input path="to" class="form-control w-25" id="Input Email" placeholder="Email"/></fieldset>
            <form:input path="subject" type="text" class="form-control w-50" id="Topic" placeholder="Topic"/>
            <fieldset class="form-group my-3">
                <form:textarea path="content" type="message" class="form-control w-100" id="Input Message"
                               placeholder="Message"
                               style="margin-top: 0px; margin-bottom: 0px; height: 202px;"/></fieldset>
            <button type="submit" class="btn btn-outline-primary">Submit</button>
        </form:form>

        <div>
            ${ok}
            <c:if test="${param.ok != null}">
                <h6 class="text-info mb-2 mt-2">You have been logged out</h6>
            </c:if>
        </div>

    </div>
</div>
<pingendo onclick="window.open('https://pingendo.com/', '_blank')"
          style="cursor:pointer;position: fixed;bottom: 20px;right:20px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:220px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">
    Made with Pingendo Free&nbsp;&nbsp;<img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block"
                                            alt="Pingendo logo" height="16"></pingendo>
</body>

</html>