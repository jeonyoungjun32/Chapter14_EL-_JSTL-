<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    
    isELIgnored="false"%>
    
<%
   //post방식으로 보냈기 때문에 한글 인코딩 설정
   request.setCharacterEncoding("UTF-8");

   //1.이전방식(자바의 표현식으로 출력하기 위해서 반드시 getParameter()로 값을 얻어와야 함)
   /* String id = request.getParameter("id");
   String pwd = request.getParameter("pwd");
   String name = request.getParameter("name");
   String email = request.getParameter("email"); */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward에서 처리할라고 memeber2에 왔다</title>
</head>
<body>
   <table style="0 auto;" border="1">
      <tr>
         <th>아이디</th>
         <th>비밀번호</th>
         <th>이름</th>
         <th>이메일</th>
         <th>주소</th>
      </tr>
      <%-- <tr> <!-- 자바의 표현식으로 출력 -->
         <td><%=id %></td>
         <td><%=pwd %></td>
         <td><%=name %></td>
         <td><%=email %></td>
      </tr> --%>
      <tr> <!-- 2.EL언어로 출력 
      JSP책 513p 내장객체 param : 파라미터 값을 얻어올 때 사용
      request.getParameter()메서드를 호출한 것과 같음 -->
         <td>${param.id}</td>
         <td>${param.pwd}</td>
         <td>${param.name}</td>
         <td>${param.email}</td>
         
         <!-- 책-519p 내장객체 requestScope:request영역에 존재하는 객체를 참조할 때 사용 -->
         <td>${requestScope.address}</td> <!-- 바로 출력 할수 있다  --> <!-- 원래라면  request.getParameter 써서 주소값을 가지고 와야하는데  -->
      </tr>
      
  	
   </table>
</body>
</html>