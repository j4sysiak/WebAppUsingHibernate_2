<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="pl.jaceksysiak.StudentDao"%>

<jsp:useBean id="student" class="pl.jaceksysiak.Student" />
<jsp:setProperty property="*" name="student" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Registration</title>
</head>
<body>
	<h1>Student Registration</h1>
	<%
	out.print(student.getId());
	out.print(student.getName());
	out.print(student.getEmail());
	out.print(student.getPassword());
	  
	    int i=StudentDao.register(student);
	    if(i>0){
        out.print("Student added successfully...");
	    } else {
           out.print("ERROR ...");
	    }
	%>
</body>
</html>