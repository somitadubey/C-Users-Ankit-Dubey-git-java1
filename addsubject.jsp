<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<% 

String id = request.getParameter("id");
String subjectName = request.getParameter("subjectName");
String subjectDuration = request.getParameter("subjectDuration");



Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ph2_la", "root", "aadhya.15");
pst = con.prepareStatement("insert into subject(id,subjectName, subjectDuration) values(?,?,?)");
pst.setString(1,id);
pst.setString(2,subjectName);
pst.setString(3, subjectDuration);
pst.executeUpdate();
out.println("Record Added");
%>