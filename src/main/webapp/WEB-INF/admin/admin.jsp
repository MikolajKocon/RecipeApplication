<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<%@ include file="../headers/head.jsp" %>
<body>
<%@ include file="../headers/admin-header.jsp" %>

<h1>Welcome, Admin!</h1>

<ul>
    <c:forEach var="recipe" items="${recipes}">
        <li>
            <div>
                <h3>${recipe.name}</h3>
                <p>Description: ${recipe.description}</p>
                <p>Created: ${recipe.created}</p>
                <p>Updated: ${recipe.updated}</p>
                <p>Preparation Time: ${recipe.preparationTime}</p>
                <p>Preparation: ${recipe.preparation}</p>
                <p>Created By: ${recipe.user.firstName} ${recipe.user.lastName}</p>
                <a href="<c:url value='/admin/edit/${recipe.id}'/>">Edit</a>
                <a href="<c:url value='/admin/delete/${recipe.id}'/>">Delete</a>
            </div>
        </li>
    </c:forEach>
</ul>

</body>
</html>
