<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f9f9f9;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        min-height: 100vh;
    }
    .container {
        width: 80%;
        background: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
    }
    .add-btn {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px 15px;
        border-radius: 4px;
        cursor: pointer;
        text-decoration: none;
        display: inline-block;
        margin-bottom: 20px;
    }
    .add-btn:hover {
        background-color: #0056b3;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    table th, table td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: center;
    }
    table th {
        background-color: #007bff;
        color: white;
    }
    table tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    table tr:hover {
        background-color: #f1f1f1;
    }
    .action-buttons {
        display: flex;
        justify-content: space-around;
    }
    .update-btn, .delete-btn {
        padding: 5px 10px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        color: white;
        font-size: 14px;
    }
    .update-btn {
        background-color: #28a745;
    }
    .update-btn:hover {
        background-color: #218838;
    }
    .delete-btn {
        background-color: #dc3545;
    }
    .delete-btn:hover {
        background-color: #c82333;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Education List</h1>
    <a href="save.jsp"><button class="add-btn">Add Education</button></a>
    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>University Name</th>
                <th>College Name</th>
                <th>YOP</th>
                <th>CGPA</th>
                <th colspan="2">Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="u" items="${edu}">
                <tr>
                    <td>${u.getId()}</td>
                    <td>${u.getUname()}</td>
                    <td>${u.getCname()}</td>
                    <td>${u.getYop()}</td>
                    <td>${u.getCgpa()}</td>
                    <td class="action-buttons">
                        <a href="updatepage?id=${u.getId()}"><button class="update-btn">Update</button></a>
                        <a href="delete?id=${u.getId()}"><button class="delete-btn">Delete</button></a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
