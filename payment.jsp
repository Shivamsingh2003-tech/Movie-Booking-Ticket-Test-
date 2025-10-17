<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Choose Payment Method</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f4f4f9;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      height: 100vh;
    }
    h2 {
      margin-bottom: 20px;
    }
    .pay-option {
      display: block;
      width: 250px;
      margin: 10px;
      padding: 15px;
      text-align: center;
      border-radius: 8px;
      font-size: 16px;
      font-weight: bold;
      color: white;
      border: none;
      cursor: pointer;
    }
    .upi { background: #ff5722; }
    .card { background: #007bff; }
    .paypal { background: #003087; }
    .netbanking { background: #28a745; }
    .pay-option:hover { opacity: 0.9; }
  </style>
</head>
<body>
  <h2>💳 Choose Your Payment Method</h2>

  <form action="PaymentServlet" method="post">
    <button class="pay-option upi" type="submit" name="paymentMethod" value="UPI">Pay with UPI</button>
    <button class="pay-option card" type="submit" name="paymentMethod" value="Card">Pay with Card / Razorpay</button>
    <button class="pay-option paypal" type="submit" name="paymentMethod" value="PayPal">Pay with PayPal</button>
    <button class="pay-option netbanking" type="submit" name="paymentMethod" value="NetBanking">Pay with Net Banking</button>
  </form>
</body>
</html>