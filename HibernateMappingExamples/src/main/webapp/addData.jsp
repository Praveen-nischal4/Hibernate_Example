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

Account ac = new Account();
ac.setAccount_id(2);
ac.setBalance(95000l);


Employee e = new Employee();
e.setId(2);
e.setEname("Raju");
e.setEaddress("Punjab");

r.save(ac);
e.setAc(ac);
r.save(e);
t.commit();
out.println("Data inserted");

%>
</body>
</html>