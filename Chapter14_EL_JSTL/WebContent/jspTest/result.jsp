<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과창</title>
</head>
<body>
   <!-- if절 -->
   <c:if test="${empty param.userID }">
      아이디를 입력하세요<br/>
      <a href="login.jsp">로그인 창</a>
   </c:if>
   
   <c:if test="${not empty param.userID }">
      환영합니다. <c:out value="${param.userID }"/>님!!
   </c:if>
</body>
</html>