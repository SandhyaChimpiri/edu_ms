<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>University and College Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f8ff;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .form-container {
        background-color: #ffffff;
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
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 15px;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        width: 100%;
    }
    .form-container button:hover {
        background-color: #0056b3;
    }
    .form-container input:focus {
        border-color: #007bff;
        outline: none;
    }
</style>
</head>
<body>

<div class="form-container">
    <h1>Enter Education Details</h1>
    <form action="save">
        <input type="text" name="uname" placeholder="Enter University Name" required>
        <input type="text" name="cname" placeholder="Enter College Name" required>
        <input type="text" name="yop" placeholder="Enter Year of Passed Out" required>
        <input type="text" name="cgpa" placeholder="Enter CGPA" required>
        <button type="submit">Submit</button>
    </form>
</div>

</body>
</html>
