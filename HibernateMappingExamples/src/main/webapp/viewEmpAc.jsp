<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.hibernate.*,org.hibernate.cfg.*,java.util.*"%>
    
    <%@ page import="com.myexample.mapping.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 
SessionFactory sf = new Configuration().configure().buildSessionFactory();
Session r = sf.openSession();
Transaction t = r.beginTransaction();

Query<Employee> q = r.createQuery("from Employee",Employee.class);

List<Employee> employees =q.getResultList();

out.println("<table border='2'>");
for(Employee emp :employees)
{
	Account ac = emp.getAc();
	
	out.println("<tr><td>"+emp.getId()+"<td> "+emp.getEname()+"<td> "+emp.getEaddress()+"<td>"+ac.getBalance());
}

out.println("</table>");
%>
</body>
</html>