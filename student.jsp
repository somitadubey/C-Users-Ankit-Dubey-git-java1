<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<% 
Class.forName("com.mysql.jdbc.Driver");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../bootstrap/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<title>Student</title>
</head>
<body>
	<h1>Student Registration</h1>
	<div class="row">
		<div class="col-sm-4">
			<form method="POST" style="" action="addstudent.jsp">
			
			
			<div>
					<label class="form-label">Student ID</label> <input type="text"
						id="id" name="id" placeholder="id"
						class="form-control" required>
				</div>
				
				<div>
					<label class="form-label">Student Name</label> <input type="text"
						id="sname" name="studentName" placeholder="Student Name"
						class="form-control" required>
				</div>
				
				<div>
					<label class="form-label">email</label> <input type="email"
						id="mail" name="mail" placeholder="Email"
						class="form-control" required>
				</div>
				<div>
					<label class="form-label">phone</label> <input type="text"
						id="phone" name="phone" placeholder="Phone"
						class="form-control" required>
				</div>
				<div align="left">
					<input type="submit" id="submit" name="submit" value="Add Student" class="btn btn-info">
					<input type="reset" id="reset" name="reset" value="Reset" class="btn btn-warning">
				</div>
			</form>
		</div>
		<div class="col-sm-8">
			<div class="panel-body">
				<table id="tbl-course" class="table table-responsive table-bordered" style="">
					<tr>
						<th>Student Name</th>
						<th>Mail</th>
						<th>Phone</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					<tbody>
						<%
						Connection con;
						PreparedStatement pst;
						ResultSet rs;
						Class.forName("com.mysql.jdbc.Driver");
						con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ph2_la", "root", "aadhya.15");
						String query = "select * from student";
						Statement st = con.createStatement();
						rs = st.executeQuery(query);
						while(rs.next())
						{
							String id = rs.getString("id");
						
					%>

						<tr>
							<td><%=rs.getString("studentName") %></td>
							<td><%=rs.getString("mail") %></td>
							<td><%=rs.getString("phone") %></td>
							<td><a href="studentupdate.jsp?id=<%=id %>">Edit</a></td>
							<td><a href="studentdelete.jsp?id=<%=id %>">Delete</a></td>
						</tr>
						<% } %>

					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>