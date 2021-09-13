<!-- jstlTest폴더의 memeber2.jsp와 비교 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    isELIgnored="false"%>
    <!--  isELIgnored="false" 을 꼭 써야한다 ㅅㅂ -->
    
    <!-- 이 코드가 있어야 밑에 new MemberBean을 쓸수 있다 -->
    <%@page import="sec01.ex01.MemberBean"%>
    
<%
   //post방식으로 보냈기 때문에 한글 인코딩 설정
   request.setCharacterEncoding("UTF-8");
%>
<!-- MemberBean객체를 생성하여 참조변수  m이 참조한다 -->
<jsp:useBean id="m1" class="sec01.ex01.MemberBean"/>

<!-- m을 참조하는곳에 뭐를 ? id를!! -->
<%-- <jsp:setProperty property="id" name="m" param="id"/> --%>

<!--property="*"을 하면 위 코드가 밑에 꺼 처럼 한번에 할 수 있다
사용자가 입력하여 전송된 파라미터 앖들이 m1이 참조하는 각 멤버변수에 자동으로 값이 셋팅!! -->
<jsp:setProperty property="*" name="m1" /> <!-- 많이 쓴다잉!! -->

<!--(기본값은null이고 기본값이 채워진 ArrayList객체 생성) 하여 참조변수 membersList가 참조 한다!! -->
<jsp:useBean id="membersList" class="java.util.ArrayList"/>

<!-- 추가 : (기본값은null이고 기본값이 채워진 HashMap객체 생성) 하여 참조변수 membersMap가 참조 한다!! -->
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

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 출력</title>
</head>
<body>
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
      <tr> <!-- 2번째 회원정보 출력(사용자가 입력한것)-->
     		<td>${membersMap.membersList[0].id }</td>
			<td>${membersMap.membersList[0].pwd }</td>
			<td>${membersMap.membersList[0].name }</td>
			<td>${membersMap.membersList[0].email }</td>
      </tr>
      
    <tr> <!-- 3번째 회원정보 출력(손흥민) -->
         <td>${membersMap.membersList[1].id}</td>
         <td>${membersMap.membersList[1].pwd}</td>
         <td>${membersMap.membersList[1].name}</td>
         <td>${membersMap.membersList[1].email}</td>
      </tr>
   </table>
</body>
</html>