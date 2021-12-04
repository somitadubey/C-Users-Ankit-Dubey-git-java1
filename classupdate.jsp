<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<% Class.forName("com.mysql.jdbc.Driver");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../bootstrap/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<title>Batch</title>
</head>
<body>
	<h1>Batch</h1>
	<div class="row">
		<div class="col-sm-4">
			<form method="POST" action="classdata.jsp">
				<%
					Connection con;
					PreparedStatement pst;
					ResultSet rs;
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ph2_la", "root", "aadhya.15");
					
					String classid = request.getParameter("id");
					pst = con.prepareStatement("select * from class where id = ?");
					pst.setString(1, classid);
					rs = pst.executeQuery();
					
					while(rs.next())
						
					{
						
				%>
				<div>
					<label class="form-label"> ID</label> <input type="text"
						id="id" name="id" placeholder="id"
						class="form-control" value="<%= rs.getString("id") %>" required>
				</div>
				<div>
					<label class="form-label">Class Name</label> <input type="text"
						id="className" name="className" placeholder="Class Name"
						class="form-control" value="<%= rs.getString("className") %>"required>
				</div>
				<div>
					<label class="form-label">Class Duration</label> <input type="text"
						id="classDuration" name="classDuration" placeholder="CLass Duration"
						class="form-control" value="<%= rs.getString("classDuration") %>"required>
				</div>
				<div>
					<input type="submit" name="submit" class="btn btn-info"
						value="Class Update"> <input type="reset" name="reset"
						class="btn btn-warning" value="reset">
				</div>
				<% } %>
			</form>
		</div>
		<div class="col-sm-8">
			
		</div>
	</div>
</body>
</html>