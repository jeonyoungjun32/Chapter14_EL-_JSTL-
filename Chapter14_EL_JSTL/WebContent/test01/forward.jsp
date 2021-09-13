<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
   	request.setCharacterEncoding("UTF-8");
    
    //address 안에 대구시달서구가 들어가있다!!! request에 총 5개 가  들어 가있다 
    request.setAttribute("address", "대구시 달서구");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward</title>
</head>
<body>
	<!-- 책-519p 내장객체 requestScope:request영역에 존재하는 객체를 참조할 때 사용 -->
	<!-- memberForm에 있는것들을  member2에 보내서 처리하겠다 -->
	<jsp:forward page="memeber2.jsp"></jsp:forward> <!-- forward = 이동시킨후 처리하겠다라는 뜻 -->
</body>
</html>