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
	<h1>Master list of all the classes:</h1>
	<div class="panel-body">
				<table id="tbl-course" class="table table-responsive table-bordered">
					<tr>
						<th>CLass ID</th>
						<th style="padding-left: 10px">Class Name</th>
						<th style="padding-left: 10px">Class Duration</th>
						
					<tbody>
						<%
						Class.forName("com.mysql.jdbc.Driver");
						con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ph2_la", "root", "aadhya.15");
						String query = "SELECT c.id, c.className, c.classDuration FROM ph2_la.class c";
						Statement st = con.createStatement();
						rs = st.executeQuery(query);
						while(rs.next())
						{
							//String id = rs.getString("s.id");
						
					%>

						<tr>
							<td style="padding-left: 30px"><%=rs.getString("c.id") %></td>
							<td style="padding-left: 10px"><%=rs.getString("c.className") %></td>
							<td style="padding-left: 30px"><%=rs.getString("c.classDuration") %></td>
							
						</tr>
						<% } %>

					</tbody>
				</table>
			</div>
</body>
</html>