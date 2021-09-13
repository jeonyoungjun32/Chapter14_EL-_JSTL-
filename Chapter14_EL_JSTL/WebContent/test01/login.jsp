<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="result.jsp">
		아이디 : <input type="text" size="20"><br>
		비밀번호 : <input type="password" size="21"><br>
		<input type="submit" value="로그인"><br>
		<input type="reset" value="다시입력"><br><br>
		
		<h1>1번은 호원가입에 오류가 뜨고 있다</h1>
		<!-- a태그를 이용해 다른 서블릿이나 jsp를 요청(이동)하는 방법 3가지 --> 
		<!-- 1. 단점 : 컨텍스트이름(Chapter14_EL 와 JSTL)이 바뀌면 일일이 찾아서 수정해야 함 -->
		<a href="http://localhost:8090/Chapter14_EL_JSTL/test01/memberForm.jsp">회원가입</a>
		
		<!-- 2. 표현식을 이용 : getContextPath()메서드를 이용해 컨텍스트 이름을 가져오는법
			단점 : 자바코드 사용하므로 화면 작업이 복작해짐-->
		<a href="<%=request.getContextPath() %>/test01/memberForm.jsp">회원가입</a>
		
		<!-- ★★★★★★★★★★★★★★		이제 이 방법을 많이 쓴다 	★★★★★★★★★★★-->
		<!-- 3. EL언어 사용 : 내장객체 pageContext : pageContext를 참조할때 쓴다 -->
		<a href="${pageContext.request.contextPath }/test01/memberForm.jsp">회원가입</a>
	
	</form>
</body>
</html>