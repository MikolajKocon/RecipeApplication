<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../headers/head.jsp" %>
<body>
<%@ include file="../headers/admin-header.jsp" %>
<h1>Add Recipe</h1>

<form method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" /><br/>

    <label for="description">Description:</label>
    <input type="text" id="description" name="description" /><br/>

    <label for="preparationTime">Preparation Time:</label>
    <input type="text" id="preparationTime" name="preparationTime" /><br/>

    <label for="preparation">Preparation:</label>
    <textarea id="preparation" name="preparation"></textarea><br/>

    <button type="submit">Save Recipe</button>
</form>

</body>
</html>
