<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<% 

String id = request.getParameter("id");
String studentName = request.getParameter("studentName");
String mail = request.getParameter("mail");
String phone = request.getParameter("phone");


Connection con;
PreparedStatement pst;

Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ph2_la", "root", "aadhya.15");
pst = con.prepareStatement("insert into student(id,studentName, mail,phone) values(?,?,?,?)");
pst.setString(1,id);
pst.setString(2,studentName);
pst.setString(3, mail);
pst.setString(4,phone);
pst.executeUpdate();
out.println("Record Added");
%>