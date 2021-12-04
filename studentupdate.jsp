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
			<form method="POST" action="studentdata.jsp">
				<%
					Connection con;
					PreparedStatement pst;
					ResultSet rs;
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ph2_la", "root", "aadhya.15");
					
					String studentid = request.getParameter("id");
					pst = con.prepareStatement("select * from student where id = ?");
					pst.setString(1, studentid);
					rs = pst.executeQuery();
					
					while(rs.next())
						
					{
						
				%>
				<div>
					<label class="form-label">Student ID</label> <input type="text"
						id="id" name="id" placeholder="id"
						class="form-control" value="<%= rs.getString("id") %>" required>
				</div>
				
				<div>
					<label class="form-label">Student Name</label> <input type="text"
						id="studentName" name="studentName" placeholder="studentName"
						class="form-control" value="<%= rs.getString("studentName") %>"required>
				</div>
				
				<div>
					<label class="form-label">Mail</label> <input type="email"
						id="mail" name="mail" placeholder="mail"
						class="form-control" value="<%= rs.getString("mail") %>"required>
				</div>
				
				<div>
					<label class="form-label">Phone</label> <input type="text"
						id="phone" name="phone" placeholder="phone"
						class="form-control" value="<%= rs.getString("phone") %>"required>
				</div>
				<div>
					<input type="submit" name="submit" class="btn btn-info"
						value="Update Student"> <input type="reset" name="reset"
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