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
SessionFactory sf = new Configuration().configure().buildSessionFactory();
Session r =sf.openSession();

Transaction t = r.beginTransaction();

/*
Query<Student> q = r.createQuery("from Student",Student.class);

List<Student> students = q.getResultList();

for(Student st :students)
{
	StudentDetails sd = st.getD();
	out.println(st.getRollno()+" "+st.getSname()+" "+sd.getAddress()+" "+sd.getMobile());
}
*/
//bidrectional approach

Query<StudentDetails> q = r.createQuery("from StudentDetails",StudentDetails.class);

List<StudentDetails> studentdetails = q.getResultList();

for(StudentDetails st :studentdetails)
{
	Student sd = st.getE();
	out.println(sd.getRollno()+" "+sd.getSname()+" "+st.getAddress()+" "+st.getMobile());
}

t.commit();
%>
</body>
</html>