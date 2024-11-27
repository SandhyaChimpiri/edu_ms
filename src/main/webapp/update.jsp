<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .form-container {
        background-color: #fff;
        padding: 20px 30px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        width: 300px;
        text-align: center;
    }
    .form-container h1 {
        margin-bottom: 20px;
        color: #333;
    }
    .form-container input {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
    }
    .form-container button {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 10px 15px;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        width: 100%;
    }
    .form-container button:hover {
        background-color: #45a049;
    }
    .form-container input:focus {
        border-color: #4CAF50;
        outline: none;
    }
</style>
</head>
<body>

<div class="form-container">
    <h1>Update Details</h1>
    <form action="update">
        <input type="text" value="${edu.getId()}" name="id" placeholder="Enter new Id">
        <input type="text" value="${edu.getUname()}" name="uname" placeholder="Enter new University name">
        <input type="text" value="${edu.getCname()}" name="cname" placeholder="Enter new College name">
        <input type="text" value="${edu.getYop()}" name="yop" placeholder="Enter new YOP">
        <input type="text" value="${edu.getCgpa()}" name="cgpa" placeholder="Enter new CGPA">
        <button type="submit">Update</button>
    </form>
</div>

</body>
</html>
