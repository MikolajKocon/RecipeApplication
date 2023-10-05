<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%@ include file="../headers/head.jsp" %>
<body>
<%@ include file="../headers/admin-header.jsp" %>

<h1>Welcome, Admin!</h1>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Description</th>
        <th>Created</th>
        <th>Updated</th>
        <th>Preparation Time</th>
        <th>Preparation</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="recipe" items="${recipes}">
        <tr>
            <td>${recipe.id}</td>
            <td>${recipe.name}</td>
            <td>${recipe.description}</td>
            <td>${recipe.created}</td>
            <td>${recipe.updated}</td>
            <td>${recipe.preparationTime}</td>
            <td>${recipe.preparation}</td>
            <td><a href="<c:url value='/admin/edit/${recipe.id}'/>">Edit</a></td>
            <td><a href="<c:url value='/admin/delete/${recipe.id}'/>">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
