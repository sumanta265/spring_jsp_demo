<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table {
  width:50%;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}
#t01 tr:nth-child(even) {
  background-color: #eee;
}
#t01 tr:nth-child(odd) {
 background-color: #fff;
}
#t01 th {
  background-color: black;
  color: white;
}
</style>
</head>
<body>

 <h1>Student details</h1>
    
    <br/><br/>
    <div>
      <table >
        <tr>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Email</th>
          <th>Address</th>
          <th>City</th>
          <th>Zip</th>
        </tr>
        <c:forEach  items="${student}" var ="student">
        <tr>
          <td>${student.fname}</td>
          <td>${student.lname}</td>
          <td>${student.email}</td>
          <td>${student.address}</td>
          <td>${student.city }</td>
          <td>${student.zip }</td>
        </tr>
        </c:forEach>
      </table>
    </div>



</body>
</html>