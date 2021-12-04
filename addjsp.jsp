<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<% 

String id = request.getParameter("id");
String teacherName = request.getParameter("teacherName");
String teacherQualification = request.getParameter("teacherQhalification");



Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ph2_la", "root", "aadhya.15");
pst = con.prepareStatement("insert into teacher(id,teacherName, teacherQualification) values(?,?,?)");
pst.setString(1,id);
pst.setString(2,teacherName);
pst.setString(3, teacherQualification);
pst.executeUpdate();
out.println("Record Added");
%>