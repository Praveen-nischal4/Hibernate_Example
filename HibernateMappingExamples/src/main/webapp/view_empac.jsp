<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="org.hibernate.*,org.hibernate.cfg.*,java.util.*"%>
    <%@ page import="com.myexample.thirdtable.*" %>
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

Transaction t= r.beginTransaction();

Query<EmployeeEntity> q = r.createQuery("from EmployeeEntity",EmployeeEntity.class);

List<EmployeeEntity> emp = q.getResultList();

for(EmployeeEntity e :emp)
{
	AccountEntity ae =e.getActEnt();
	out.println(e.getEmpid()+" "+e.getEnmae()+" "+e.getEsalary()+" "+ae.getBalance()+" "+ae.getType());
}


%>
</body>
</html>