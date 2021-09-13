<!-- JSTL : 변수 삭제 방법 -->

<!-- JSTL(JSP Standard Tag Library) 언어
- JSP페이지에서 자주 사용하는 자바코드를 대체하기 위해 만든 코드
- JSTL 사용하기 위해
1. https://tomcat.apache.org/download-taglibs.cgi 로 접속하여 JAB파일을 다운받아
WEB-INF안의 lib폴더에 넣는다.
 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page isELIgnored="false"%>

<!-- 2.페이지 지시자에 taglib(라이브러리)를 사용하겠다. 
    라이브러리의 존재 위치 :uri 써야한다
    c는 태그 앞에 붙는 접두어-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
request.setCharacterEncoding("UTF-8"); //한글 처리
%>

<!-- var = 변수 ,  value = 값  	scope = 이페이지에서만 -->
<<c:set var="id" value="hong" scope="page"/>
<<c:set var="pwd" value="1234" scope="page"/>

<!-- value속성에 표현언어(EL) 사용해서 초기화 가능    -->
<<c:set var="name" value="${'홍길동' }" scope="page"/>
<<c:set var="age" value="${22 }" scope="page"/>
<<c:set var="height" value="${177}" scope="page"/>

<!-- 추가 : 변수 삭제-->
<c:remove var="name"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력창</title>
</head>
<body>
	<h1>책 510p 다운을 하고 WEB-INF안에 lib에 3개다운한 것을 넣는다</h1>
	<h3>이름을 삭제 했다</h3>
	<table style="" border="1">
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>나이</th>
			<th>키</th>
		</tr>

	<c:choose> <!-- switch문 -->
		<c:when test="${empty id  }"> <!-- 아이디가 비어있으면 -->
			<tr>
				<td colspan="5">아이디를 입력하세요!</td>
			</tr>
		</c:when>
		
		<c:when test="${empty name  }"> <!-- name이 비어있으면 -->
			<tr>
				<td colspan="5">이름을 입력하세요!</td>
			</tr>
		</c:when>
		
	<c:otherwise>	<!-- default  : 위의 조건이 다 거짓이면 -->	
	<!-- name이 비어있지 않으면 -->
		<!-- EL언어로 출력 -->
		<tr>
			<%-- <td><%=이건표현식 %></td> --%>
			<td>${id }</td>
			<td>${pwd }</td>
			<td>${name }</td>
			<td>${age }</td>
			<td>${height }</td>
		</tr>
	</c:otherwise>
	</c:choose>
	</table>

</body>
</html>