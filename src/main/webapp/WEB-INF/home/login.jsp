<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>

<%@ include file="../headers/head.jsp" %>

<body>

<%@ include file="../headers/header.jsp" %>

<div class="content">
    <main>
        <form method="post" id="loginForm">
            <h1>Login</h1> <br>
            <div class="form-floating">
                <input type="email" name="email" class="form-control" id="email" placeholder="Email">
                <label for="email">Email address</label>
            </div>
            <br>
            <div class="form-floating">
                <input type="password" name="password" class="form-control" id="password" placeholder="Password">
                <label for="password">Password</label>
            </div>
            <br>
            <input type="submit" value="OK">
        </form>
        <div id="error-message" class="error-message d-none"></div>
    </main>
</div>

<script src="../js/loginValidation.js"></script>

</body>
</html>
