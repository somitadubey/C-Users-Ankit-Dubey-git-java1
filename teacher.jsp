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
<title>Teacher</title>
</head>
<body>
	<h1>Teacher</h1>
	<div class="row">
		<div class="col-sm-4">
			<form method="POST" style="" action="addjsp.jsp">
			
			
			<div>
					<label class="form-label">ID</label> <input type="text"
						id="id" name="id" placeholder="ID"
						class="form-control" required>
				</div>
			
				<div>
					<label class="form-label">Teacher Name</label> <input type="text"
						id="teacherName" name="teacherName" placeholder="Teacher Name"
						class="form-control" required>
				</div>
				<div>
					<label class="form-label">Teacher Qualification</label> <input type="text"
						id="teacherQualification" name="teacherQualification" placeholder="Teacher Qualification"
						class="form-control" required>
				</div>
				<div>
					<input type="submit" name="submit" class="btn btn-info"
						value="submit"> <input type="reset" name="reset"
						class="btn btn-warning" value="reset">
				</div>
			</form>
		</div>
		<div class="col-sm-8">
			<div class="panel-body">
				<table id="tbl-course" class="table table-responsive table-bordered"
					style="">
					<tr>
						<th>Teacher Name</th>
						<th>Teacher Qualification</th>
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
						String query = "select * from teacher";
						Statement st = con.createStatement();
						rs = st.executeQuery(query);
						while(rs.next())
						{
							String id = rs.getString("id");
						
					%>

						<tr>
							<td><%=rs.getString("teacherName") %></td>
							<td><%=rs.getString("teacherQualification") %></td>
							<td><a href="teacherupdate.jsp?id=<%=id %>">Edit</a></td>
							<td><a href="teacherdelete.jsp?id=<%=id %>">Delete</a></td>
						</tr>
						<% } %>

					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>