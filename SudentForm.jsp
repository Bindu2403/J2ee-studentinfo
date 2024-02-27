<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Information Form</title>
<style>
   
 
    body {
        font-family: Arial, sans-serif;
    }
    .form-container {
        width: 800px;
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 5px;
        box-shadow: 0px 0px 8px #aaa;
    }
    .form-group {
        margin-bottom: 15px;
    }
    label {
        display: block;
        margin-bottom: 5px;
    }
    input[type=text], input[type=email], select {
        width: 100%;
        padding: 10px;
        margin: 5px 0 20px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type=radio], input[type=checkbox] {
        margin-right: 5px;
    }
    input[type=submit] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    
</style>
</head>
<body>

<div class="form-container">
    <h2>Fill Out Your Information Below</h2>
    <form action="displayinfo.jsp" method="post"> 
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="email">Email Address:</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label>Gender:</label>
            <input type="radio" id="male" name="gender" value="male">
            <label for="male">Male</label>
            <input type="radio" id="female" name="gender" value="female">
            <label for="female">Female</label>
        </div>
        <div class="form-group">
            <label for="age">Age:</label>
            <select id="age" name="age">
                <option value="under20">Under 20</option>
                <option value="25to30">25-30</option>
                <option value="over30">Over 30</option>
            </select>
        </div>
        <div class="form-group">
            <label>Meal Plan:</label>
            <input type="checkbox" id="breakfast" name="meal" value="breakfast">
            <label for="breakfast">Breakfast</label>
            <input type="checkbox" id="lunch" name="meal" value="lunch">
            <label for="lunch">Lunch</label>
            <input type="checkbox" id="dinner" name="meal" value="dinner">
            <label for="dinner">Dinner</label>
        </div>
        <div class="form-group">
            <label for="comments">Comments:</label>
            <textarea id="comments" name="comments" rows="4" cols="50"></textarea>
        </div>
        <input type="submit" value="Submit My Information">
    </form> 
</div>

</body>
</html>
