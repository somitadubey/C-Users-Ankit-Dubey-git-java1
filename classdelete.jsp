<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%

String classid = request.getParameter("id");

Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ph2_la", "root", "aadhya.15");

pst = con.prepareStatement("delete from class where id = ?");
pst.setString(1, classid);
pst.executeUpdate();

out.println("Record Deleted");

%>