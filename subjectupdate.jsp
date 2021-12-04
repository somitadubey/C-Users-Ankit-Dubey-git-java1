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
<title>Course</title>
</head>
<body>
	<h1>Course</h1>
	<div class="row">
		<div class="col-sm-4">
			<form method="POST" style="" action="subjectdata.jsp">
				<%
					Connection con;
					PreparedStatement pst;
					ResultSet rs;
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ph2_la", "root","aadhya.15");
					
					String id = request.getParameter("id");
					pst = con.prepareStatement("select * from subject where id = ?");
					pst.setString(1, id);
					rs = pst.executeQuery();
					
					while(rs.next())
						
					{
						
				%>
				<div>
					<label class="form-label">Subject ID</label> <input type="text"
						id="id" name="id" placeholder="Subject ID"
						class="form-control" value="<%= rs.getString("id") %>" required>
				</div>
				<div>
					<label class="form-label">Subject Name</label> <input type="text"
						id="subjectName" name="subjectName" placeholder="Subject Name"
						class="form-control" value="<%= rs.getString("subjectName") %>"required>
				</div>
				<div>
					<label class="form-label">Subject Duration</label> <input type="text"
						id="subjectDuration" name="subjectDuration" placeholder="Subject Duration"
						class="form-control" value="<%= rs.getString("subjectDuration") %>"required>
				</div>
				<div>
					<input type="submit" name="submit" class="btn btn-info"
						value="Update Subject"> <input type="reset" name="reset"
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