<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    isELIgnored="false"%>
    <!--  isELIgnored="false" 을 꼭 써야한다 ㅅㅂ -->
    
    
     EL언어를 사용하여 포함관계에서 bean 사용 실습
    
    
<%
   //post방식으로 보냈기 때문에 한글 인코딩 설정
   request.setCharacterEncoding("UTF-8");
%>
<!-- MemberBean객체를 생성하여 참조변수  m이 참조한다 -->
<jsp:useBean id="m" class="sec01.ex02.MemberBean"/>
<jsp:setProperty property="*" name="m"/>
<!-- '가입일'과 '주소'만 기본값으로 채워져 잇음(나머지는 사죵자가 입력한 값으로 채워져잇음) -->

<jsp:useBean id="addr"class="sec01.ex02.Address"/>
<jsp:setProperty property="city" name="addr" value="대구시"/>
<jsp:setProperty property="sipcode" name="addr" value="07654"/>

<%
m.setAddr(addr);
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
      
      <tr>
      	<td>${m.id }</td>
      	<td>${m.pwd }</td>
      	<td>${m.name }</td>
      	<td>${m.email }</td>
      </tr>
      
      <!-- 1. 자바코드 이용하는 방법(불편하다) -->
      <td><%=m.getAddr().getCiry() %></td>  <!-- 거주 도시 -->
      <td><%=m.getAddr().getZipcode() %></td> <!-- 우편번호임 -->
      
      
      <tr>
      	<td>${m.id }</td>
      	<td>${m.pwd }</td>
      	<td>${m.name }</td>
      	<td>${m.email }</td>
      </tr>
      
      <!-- 2. EL언어 : 부모bean이름, 자식속성이름, 자식멤버변수-->
      <td>${m.addr.city }</td>  <!-- 거주 도시 -->
      <td>${m.addr.zipcode }</td> <!-- 우편번호임 -->
      <td>${m.joinDate }</td>
      
   </table>
</body>
</html>