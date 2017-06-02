<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Online Calculator</title>
</head>
<body>
<h3>Online Calculator</h3>
<form action="./OnlineCalculator" method="get">
  <br>Enter First number<br><input type="text"  name="number1" >
  <br>Enter Second number<br><input type="text"  name="number2" ><br>
  <input type="radio"  value="addition" name="operator">Addition
  <input type="radio" value="subtraction" name="operator">Subtraction
  <input type="radio"  value="multiplication" name="operator">Multipication
  <input type="radio" value="division" name="operator">Division<br><br>
  <input type="submit" value="Submit">
</form><br>
<b>${result}</b>
</body>
</html>