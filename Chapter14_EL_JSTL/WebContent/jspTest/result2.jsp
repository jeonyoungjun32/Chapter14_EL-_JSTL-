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
      <c:if test="${(param.userID == 'admin') and (param.userPW == '1234') }">
         관리자로 로그인 되었습니다.
         <form>
            <input type="button" value="회원정보 조회하기">
            <input type="button" value="회원정보 수정하기">
            <input type="button" value="회원정보 삭제하기">
         </form>
      </c:if>
      <c:if test="${param.userID == 'admin' && param.userPW != '1234' }">
         관리자 비밀번호가 아닙니다.<br/>
         <a href="login.jsp">로그인</a>창으로 돌아가기
      </c:if>
      <c:if test="${param.userID != 'admin' }">
         환영합니다. <c:out value="${param.userID }"/>님!!<br/>
         <a href="login.jsp">로그인</a>창으로 돌아가기
      </c:if>
   </c:if>
</body>
</html>