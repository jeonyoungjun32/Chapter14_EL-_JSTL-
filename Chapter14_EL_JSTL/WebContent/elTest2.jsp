<!--EL(=표현언어) : 표현식을 대신하여 JSP값들을 좀더 편리하게 출력하기 위해 제공되는 연어 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    %>
    <!-- m1은 MemberBean을 참조 하고 있다 					scope="page"는 이 페이지만 하겠다-->
    <jsp:useBean id="m1" class="sec01.ex01.MemberBean" scope="page"></jsp:useBean>
    
    <!-- jsp:setProperty에 m1을참조하고 name을 호출해서    이순신이라는것을 넣겟다 -->
	<jsp:setProperty name="m1" property="name" name="이순신"/>    
	
	<!-- ArrayList객체를 생성하여 m2가 참조했다   m2로 접근하면 ArrayList를 사용할수 있다-->
	<jsp:useBean id="m2" class="java.util.ArrayList" scope="page"></jsp:useBean>
	
	<!-- ArrayList객체를 생성하여 m3가 참조했다  -->
	<jsp:useBean id="m3" class="java.util.HashMap" scope="page"></jsp:useBean>
	
	<%//HasMap은 많이 쓰기에 중요하다
	///HasMap이면 put써야한다
	m3.put("st1", "hello");
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL(=표현언어)</title>
</head>
<body>
<H1>empty 연산자.  empty = 빈문자열이니?</H1>
${empty m1 }<br>  <!-- 답 : 값이 들어 있기에 false -->
${not empty m1 }  <!-- 답 : true -->

${empty m2 }<br>  <!-- 답 : true -->
${not empty m2 }  <!-- 답 : false -->

${empty m3 }<br>  <!-- 답 : 값이 들어 있기에 false -->
${not empty m3 }  <!-- 답 : true -->

<!-- empty = 빈문자열이니? -->
${empty "hello" }<br>   <!-- hello가 있으니 false -->
${empty "" }<br>		<!-- 답 : true -->
${empty null }<br>		<!-- 답 : true -->

</body>
</html>







