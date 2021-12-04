<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con;
PreparedStatement pst;
ResultSet rs;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Classes assigned for subjects from the master list</h1>
	<div class="panel-body">
				<table id="tbl-course" class="table table-responsive table-bordered">
					<tr>
					
						<th style="padding-left: 10px">Subject Name</th>
						<th style="padding-left: 10px">Subject Duration</th>
						<th style="padding-left: 10px">Class Name</th>
						<th style="padding-left: 10px">Class Duration</th>
					<tbody>
						<%
						Class.forName("com.mysql.jdbc.Driver");
						con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ph2_la", "root", "aadhya.15");
						String query = "SELECT  c.className, c.classDuration, s.subjectName , s.subjectDuration from ph2_la.class c JOIN ph2_la.subject s ON s.id = c.id";
						Statement st = con.createStatement();
						rs = st.executeQuery(query);
						while(rs.next())
						{
							//String id = rs.getString("s.id");
						
					%>

						<tr>
							
							<td style="padding-left: 30px"><%=rs.getString("s.subjectName") %></td>
							<td style="padding-left: 30px"><%=rs.getString("s.subjectDuration") %></td>
							<td style="padding-left: 10px"><%=rs.getString("c.className") %></td>
							<td style="padding-left: 30px"><%=rs.getString("c.classDuration") %></td>
							
						</tr>
						<% } %>

					</tbody>
				</table>
			</div>
</body>
</html>