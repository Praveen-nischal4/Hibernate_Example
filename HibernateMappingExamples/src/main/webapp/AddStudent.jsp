<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.hibernate.*,org.hibernate.cfg.*"%>
    
    <%@ page import="com.myexample.mapping.*" %>
    
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



Student st = new Student();
st.setRollno(1);
st.setSname("Hermaini");

StudentDetails d = new StudentDetails();
d.setRollno(1);
d.setAddress("Delhi");
d.setMobile("8081256123");
r.save(d);
st.setD(d);
r.save(st);
t.commit();
out.println("Data inserted");
%>
</body>
</html>