<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../headers/head.jsp" %>
<%@ include file="../headers/header.jsp" %>

<div>
    <h2>Recipes</h2>
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
                </div>
            </li>
        </c:forEach>
    </ul>
</div>
