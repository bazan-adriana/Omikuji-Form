<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji Form</title>
<link rel="stylesheet" type="text/css" href="/CSS/style.css">
</head>
<body>
	<h1>Send an Omikuji!</h1>
    <form action="/omikuji/show" method="post">
        <label for="number">Pick any number from 5 to 25:</label>
        <input type="number" id="number" name="number" min="5" max="25" required><br>
        
        <label for="city">Enter the name of any city:</label>
        <input type="text" id="city" name="city" required><br>
        
        <label for="person">Enter the name of any real person:</label>
        <input type="text" id="person" name="person" required><br>
        
        <label for="profession">Enter professional endeavor or hobby:</label>
        <input type="text" id="profession" name="activity" required><br>
        
        <label for="living-thing">Enter any type of living thing:</label>
        <input type="text" id="living-thing" name="livingThing" required><br>
        
        <label for="nice-message">Say something nice to someone:</label>
        <textarea id="nice-message" name="message" required></textarea><br>
        
        <input type="submit" value="Send"/>
    </form>
</body>
</html>