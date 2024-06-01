<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.hibernate.*,org.hibernate.cfg.*"%>
    
    <%@ page import="com.myexample.mapping.*,java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

SessionFactory sf= new Configuration().configure().buildSessionFactory();
Session r = sf.openSession();

Transaction t  = r.beginTransaction();

Query<Student> q = r.createQuery("from Student",Student.class);

Iterator<Student> i = q.iterate();

while(i.hasNext())
{
	Student ss = (Student)i.next();
	StudentDetails sd = ss.getD();
	out.println(ss.getRollno()+" "+ss.getSname()+" "+ sd.getMobile()+" "+sd.getAddress());
}


%>
</body>
</html>