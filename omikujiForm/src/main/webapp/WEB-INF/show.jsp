<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji Result</title>
<style>
    body {
        font-family: Arial, Helvetica, sans-serif;
        background-color: #f2f2f2;
    }

    h1 {
        text-align: center;
        margin-top: 50px;
    }

    div {
        width: 50%;
        margin: 0 auto;
        background-color: dodgerblue;
        color: black;
        padding: 20px;
        border-radius: 4px;
        box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
    }

    p {
        font-size: 24px;
        margin: 0;
        text-align: center;
    }

    a {
        display: block;
        text-align: center;
        margin-top: 20px;
    }
</style>
</head>
<body> 
    <h1>Here's Your Omikuji!</h1>
    <div>
        <p>${message}</p>
    </div>
    <a href="/omikuji">Go Back</a>
</body>
</html>