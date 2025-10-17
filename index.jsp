<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDate" %>
<!DOCTYPE html>
<html>
<head>
    <title>Movie Ticket Booking</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f7;
            padding: 50px;
        }
        .container {
            max-width: 500px;
            margin: auto;
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #00796b;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="date"],
        input[type="number"],
        select {
            width: 100%;
            padding: 8px;
            margin-top: 6px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button {
            margin-top: 25px;
            width: 100%;
            padding: 12px;
            background-color: #00796b;
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #004d40;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Book Your Movie Tickets</h2>
    <form action="BookingTicketServlet" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" placeholder="Enter your full name" required>

        <label for="movie">Movie:</label>
        <select id="movie" name="movie" required>
            <option value="" disabled selected>Select a movie</option>
            <option value="Kooli">Kooli</option>
            <option value="Inception">Inception</option>
            <option value="Avengers">Avengers</option>
            <option value="Interstellar">Interstellar</option>
            <option value="The Matrix">The Matrix</option>
        </select>

        <label for="date">Date:</label>
        <input type="date" id="date" name="date" 
               required min="<%= LocalDate.now().toString() %>">

        <label for="tickets">Number of Tickets:</label>
        <input type="number" id="tickets" name="tickets" min="1" max="10" required>

        <button type="submit">Proceed to Payment</button>
    </form>
</div>

</body>
</html>