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
<title>Subject</title>
</head>
<body>
	<h1>Subject</h1>
	<div class="row">
		<div class="col-sm-4">
			<form method="POST" style="" action="addsubject.jsp">
			
			<div>
					<label class="form-label">Subject ID</label> <input type="text"
						id="id" name="id" placeholder="id"
						class="form-control" required>
				</div>
			
			
				<div>
					<label class="form-label">Subject Name</label> <input type="text"
						id="subjectName" name="subjectName" placeholder="Subject Name"
						class="form-control" required>
				</div>
				<div>
					<label class="form-label">Subject Duration</label> <input type="text"
						id="subjectDuration" name="subjectDuration" placeholder="Subject Duration"
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
						<th>Subject Name</th>
						<th>Subject Duration</th>
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
						String query = "select * from subject";
						Statement st = con.createStatement();
						rs = st.executeQuery(query);
						while(rs.next())
						{
							String id = rs.getString("id");
						
					%>

						<tr>
							<td><%=rs.getString("subjectName") %></td>
							<td><%=rs.getString("subjectDuration") %></td>
							<td><a href="subjectupdate.jsp?id=<%=id %>">Edit</a></td>
							<td><a href="subjectdelete.jsp?id=<%=id %>">Delete</a></td>
						</tr>
						<% } %>

					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>