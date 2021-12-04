<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align: center"><b>Welcome to Learner Academy</b></h1>
<h1 style="text-align: center"><b>Login Page</b></h1>
	<div class="row" style="border: 10px solid black; background-color: lightyellow; padding-top: 50px; padding-right: 30px;
	padding-bottom: 50px; padding-left: 520px">
			<form method="POST" action="LoginVerify">
				<div align="left">
					<label class="form-label">UserName</label> 
					<input type="text" id="uname" name="uname" placeholder="UserName" size="30px" required>
				</div>
				<br/>
				<div align="left" style="padding-left: 10px">
					<label class="form-label">Password</label> 
					<input type="password" id="password" name="password" placeholder="Password" size="30px" required>
				</div>
				<br/>
				<div align="left" style="padding-left: 90px">
					<input type="submit" id="submit" name="submit" value="submit" class="btn btn-info">
					<input type="reset" id="reset" name="reset" value="reset" class="btn btn-warning">
				</div>
			</form>
	</div>
</body>
</html>