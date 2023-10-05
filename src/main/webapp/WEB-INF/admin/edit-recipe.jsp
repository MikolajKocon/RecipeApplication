<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="recipe.recipeapplication.models.Recipe" %>
<!DOCTYPE html>
<html>
<%@ include file="../headers/head.jsp" %>
<body>
<%@ include file="../headers/admin-header.jsp" %>
<h1>Edit Recipe</h1>

<form action="<c:url value='/admin/save' />" method="post">
    <input type="hidden" name="id" value="${Recipe.id}" />

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${recipe.name}" /><br/>

    <label for="description">Description:</label>
    <input type="text" id="description" name="description" value="${recipe.description}" /><br/>

    <label for="preparationTime">Preparation Time:</label>
    <input type="text" id="preparationTime" name="preparationTime" value="${recipe.preparationTime}" /><br/>

    <label for="preparation">Preparation:</label>
    <textarea id="preparation" name="preparation">${recipe.preparation}</textarea><br/>

    <button type="submit">Save Changes</button>
</form>

</body>
</html>
