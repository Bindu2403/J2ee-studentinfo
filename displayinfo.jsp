<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Submitted Information</title>
<style>
    /* Add your CSS styling here */
    body {
        font-family: Arial, sans-serif;
    }
    .info-container {
        width: 800px;
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 5px;
        box-shadow: 0px 0px 8px #aaa;
    }
    .info-group {
        margin-bottom: 15px;
    }
</style>
</head>
<body>

<div class="info-container">
    <h2>Your Submitted Information</h2>
    <div class="info-group">
        <strong>Name:</strong> <%= request.getParameter("name") %>
    </div>
    <div class="info-group">
        <strong>Email Address:</strong> <%= request.getParameter("email") %>
    </div>
    <div class="info-group">
        <strong>Gender:</strong> <%= request.getParameter("gender") %>
    </div>
    <div class="info-group">
        <strong>Age:</strong> <%= request.getParameter("age") %>
    </div>
    <div class="info-group">
        <strong>Meal Plan:</strong>
        <ul>
            <% 
                String[] meals = request.getParameterValues("meal");
                if (meals != null) {
                    for (String meal : meals) {
                        out.println("<li>" + meal + "</li>");
                    }
                }
            %>
        </ul>
    </div>
    <div class="info-group">
        <strong>Comments:</strong>
        <p><%= request.getParameter("comments") %></p>
    </div>
</div>

</body>
</html>
