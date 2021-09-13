<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    isELIgnored="false"%>
    <!--  isELIgnored="false" 을 꼭 써야한다 ㅅㅂ -->
<%
   //post방식으로 보냈기 때문에 한글 인코딩 설정
   request.setCharacterEncoding("UTF-8");
%>
<!-- MemberBean객체를 생성하여 참조변수  m이 참조한다 -->
<jsp:useBean id="m" class="sec01.ex01.MemberBean"/>

<!-- m을 참조하는곳에 뭐를 ? id를!! -->
<%-- <jsp:setProperty property="id" name="m" param="id"/> --%>

<!--property="*"을 하면 위 코드가 밑에 꺼 처럼 한번에 할 수 있다
사용자가 입력하여 전송된 파라미터 앖들이 m이 참조하는 각 멤버변수에 자동으로 값이 셋팅!! -->
<jsp:setProperty property="*" name="m" /> <!-- 많이 쓴다잉!! -->

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
     	 <tr> <!-- 자바의 표현식으로 출력 -->
         <td><%=m.getId() %></td>
         <td><%=m.getPwd() %></td>
         <td><%=m.getName() %></td>
         <td><%=m.getEmail() %></td>
      </tr> 
      <tr> <!-- 2.EL언어로 출력  -->
         <td>${m.id}</td>
         <td>${m.pwd}</td>
         <td>${m.name}</td>
         <td>${m.email}</td>
      </tr>
   </table>
</body>
</html>