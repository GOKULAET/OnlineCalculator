<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.2.1.min.js"></script>
</head>
<body>
<h3>Simple Calculator</h3>
<br/>
<style>
#calc{width:300px;height:250px;}
#btn{width:100%;height:40px;font-size:20px;}
</style>
<form Name="calc">
<table id="calc" border=2>
<tr>
<td colspan=5><input id="btn" name="display" onkeypress="return event.charCode >= 48 && event.charCode <= 57" type="text"></td>
<td style="display:none"><input name="M" type="number"></td>
</tr>
<tr>
<td><input id="btn" type=button value="0" OnClick="calc.display.value+='0'"></td>
<td><input id="btn" type=button value="1" OnClick="calc.display.value+='1'"></td>
<td><input id="btn" type=button value="2" OnClick="calc.display.value+='2'"></td>
<td><input id="btn" type=button value="+" OnClick="calc.display.value+='+'"></td>
</tr>
<tr>
<td><input id="btn" type=button value="3" OnClick="calc.display.value+='3'"></td>
<td><input id="btn" type=button value="4" OnClick="calc.display.value+='4'"></td>
<td><input id="btn" type=button value="5" OnClick="calc.display.value+='5'"></td>
<td><input id="btn" type=button value="-" OnClick="calc.display.value+='-'"></td>
</tr>
<tr>OnlineCalculatorOnlineCalculator
<td><input id="btn" type=button value="6" OnClick="calc.display.value+='6'"></td>
<td><input id="btn" type=button value="7" OnClick="calc.display.value+='7'"></td>
<td><input id="btn" type=button value="8" OnClick="calc.display.value+='8'"></td>
<td><input id="btn" type=button value="x" OnClick="calc.display.value+='*'"></td>
</tr>
<tr>
<td><input id="btn" type=button value="9" OnClick="calc.display.value+='9'"></td>
<td><input id="equals" type=button value="=" OnClick="calc.display.value=eval(calc.display.value)"></td>
</tr>
</table>
</form>
<script type="text/javascript">
$("#equals").click(function(){
    $.ajax({url: "/", success: function(result){
        $("#div1").html(result);
    }});
});
</script>
</body>
</html>