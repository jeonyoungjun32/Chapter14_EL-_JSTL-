<!-- c:set테크로 긴 속성이름을 짧은 변수로 대체하는 방법 -->

<!-- test01폴더의 memeber5.jsp와 비교 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    isELIgnored="false"%>
    <!--  isELIgnored="false" 을 꼭 써야한다 ㅅㅂ -->
    
    <!-- 이 코드가 있어야 밑에 new MemberBean을 쓸수 있다 -->
    <%@page import="sec01.ex01.MemberBean"%>
    
     <!-- 이걸 꼭 넣어야 JSTL 쓸수 있다 시발것 -->
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%
   //post방식으로 보냈기 때문에 한글 인코딩 설정
   request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="m1" class="sec01.ex01.MemberBean"/>
<jsp:setProperty property="*" name="m1" /> <!-- 많이 쓴다잉!! -->

<jsp:useBean id="membersList" class="java.util.ArrayList"/>

<jsp:useBean id="membersMap" class="java.util.HashMap"/>

<%
//key=id, pwd, name
//값 park, 4321,등등
//ArrayList객체도 키와 값을 쓸수있다
membersMap.put("id", "park");  //"String", "String" 을 넣었다 
membersMap.put("pwd", "4321");
membersMap.put("name", "박지성");
membersMap.put("email", "park@test.com");



MemberBean m2 =  new MemberBean("son","1234","손흥민","son@test.com");
membersList.add(m1);
membersList.add(m2);


//키 : ArrayList  값 : ArrayList  넣어서 해보자 
membersMap.put("membersList", membersList); //값을 ArrayList로 넣었다 
%>
<!-- c:set테그로 긴 속성이름을 짧은 변수로 대체하는 방법 -->
<<c:set var="memberList2" value="${membersMap.membersList }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력</title>
</head>
<body>
<h1>c:set테그로 긴 속성이름을 짧은 변수로 대체하는 방법 </h1>
   <table style="0 auto;" border="1">
      <tr>
         <th>아이디</th>
         <th>비밀번호</th>
         <th>이름</th>
         <th>이메일</th>
      </tr>
      <!-- ArrayList로 출력 해보자!! -->
     	 <tr> <!-- 1번째 회원정보 출력 (박지성)-->
			<td>${membersMap.id }</td>
			<td>${membersMap.pwd }</td>
			<td>${membersMap.name }</td>
			<td>${membersMap.email }</td>
      </tr>
      
<!-- c:forEach테크 :반복문  		  2까지 	  1씩 증가  -->
    <c:forEach var="i" begin="0" end="2" step="1">  
	      <tr> 
				<td>${memberList2[i].id }</td>
				<td>${memberList2[i].pwd }</td>
				<td>${memberList2[i].name }</td>
				<td>${memberList2[i].email }</td>
	      </tr>
	</c:forEach>      
   </table>
</body>
</html>