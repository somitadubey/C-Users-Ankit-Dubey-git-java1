<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>

<%
String teacherId = request.getParameter("id");
String teacherName = request.getParameter("teacherName");
String teacherQualification = request.getParameter("teacherQualification");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ph2_la", "root", "aadhya.15");
pst = con.prepareStatement("update teacher set teacherName = ? , teacherQualification = ? where id = ?");
pst.setString(1, teacherName);
pst.setString(2, teacherQualification);
pst.setString(3, teacherId);
pst.executeUpdate();
out.println("Record Updated");
%>