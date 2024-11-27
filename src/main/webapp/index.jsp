<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Index Page</title>
<style>
    /* General body styling */
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        height: 100vh;
        color: #333;
    }

    /* Container for the buttons */
    .button-container {
        display: flex;
        flex-direction: column;
        gap: 20px;
        text-align: center;
    }

    /* Styling for the buttons */
    button {
        padding: 15px 30px;
        font-size: 16px;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
        width: 200px; /* Fixed button width for consistency */
    }

    /* Button color and hover effect */
    .save-btn {
        background-color: #3498db;
    }

    .save-btn:hover {
        background-color: #2980b9;
        transform: scale(1.05); /* Slight scaling effect on hover */
    }

    .view-btn {
        background-color: #2ecc71;
    }

    .view-btn:hover {
        background-color: #27ae60;
        transform: scale(1.05); /* Slight scaling effect on hover */
    }

    /* Mobile responsive design */
    @media (max-width: 768px) {
        .button-container {
            width: 100%;
            padding: 20px;
        }

        button {
            font-size: 14px;
            padding: 12px 25px;
        }
    }
</style>
</head>
<body>

<div class="button-container">
    <a href="savepage">
        <button class="save-btn">Save Education</button>
    </a>
    <a href="alledu">
        <button class="view-btn">View All Educations</button>
    </a>
</div>

</body>
</html>