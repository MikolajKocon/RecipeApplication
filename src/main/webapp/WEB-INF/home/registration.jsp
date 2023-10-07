<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<%@ include file="../headers/head.jsp"%>
<body>
<%@ include file="../headers/header.jsp" %>
<section class="dashboard-section">
    <div class="container pt-4 pb-4">
        <div class="border-dashed view-height">
            <div class="container w-25">
                <form class="padding-small text-center" action="${pageContext.request.contextPath}/registration" method="post">
                    <h1 class="text-color-darker">Registration</h1>
                    <div class="form-group">
                        <input type="text" class="form-control" id="name" name="firstName" placeholder="first name">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="surname" name="lastName" placeholder="last name">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="email" name="email" placeholder="email">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="password" name="password" placeholder="password">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="repassword" name="password" placeholder="confirm password">
                    </div>
                    <button class="btn btn-color rounded-0" type="submit">Register</button>
                    <div class="info-container">
                        <div id="error-message" class="alert alert-danger d-none">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
</body>
</html>