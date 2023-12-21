<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<%-- 스크립틀릿을 쓰다보면 불편할떼 --%>
		<%-- out. 내장객체를 이용해서 출력 --%>
		<%-- 표현식 => 스크립틀릿 왼쪽에 =을 적는다면 자동으로 처리하는 기능 --%>
		<%-- int a; --%>
		<%-- 액션 태그 --%>
		<%-- 스크립틀릿이나 지시어를 이용해서 복잡하게 작성해야하는 기능들중 몇개를 간단하게 이용할 수 있도록 --%>
<%-- 		<jsp:useBean id="limit" class="test.bean" scope="request" />
 --%>		<%-- setProperty에 value를 안넣으면 request.getParameter(property)값을 넣는다 --%>
		<%-- java bean문법 -> action tag를 이용한 bean 사용법은 정보를 그대로 이용하는 용도 --%>
		
		
		<table>
			<%for(int y=0; y< 10; y+=1){ %>
				<tr>
					<% for(int x=0;x<5;x+=1){ %>
						<td><%=x*y%></td>
						<%} %>
				</tr>
				<%} %>
		</table>

</body>
</html>