<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<%@ include file="../headers/head.jsp" %>

<body>

<%@ include file="../headers/header.jsp" %>

<div class="content">
    <main>
    <form method="post">
        <h1>Login</h1> <br>
        <div class="form-floating">
            <input type="email" name="email" class="form-control" id="floatingInput" placeholder="Email">
            <label for="floatingInput">Email address</label>
        </div>
        <br>
        <div class="form-floating">
            <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password">
            <label for="floatingPassword">Password</label>
        </div>
        <br>
        <input type="submit" value="OK">
    </form>
    </main>
</div>
</body>
</html>
