<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<c:out value="Hello" default="�⺻��"/>;
	<c:out value="Hello2"></c:out>;
	<c:out value="Hello2"></c:out>;
	<%-- <c:set var="i" value="0" scope="page"></c:out>;
	<c:set target="limit" property="x" ></c:out>;
	<jsp:useBean id="limit" class="com.jsp.test.bean" scope="request" /> --%>
	
	<c:if test="${i} <10">�Ǻ��Ŀ� ����  if</c:if>
	<c:if test="${i lt 10}" var="i" scope="page">�Ǻ��Ŀ� ���� if</c:if>
	<c:catch var="error">	
	<c:choose var="i">
		<c:when test="${i eq 0 }">${i}���϶�</c:when>
		<c:when test="${i eq 2 }">${i}���϶�</c:when>
		<c:otherwise>�ƹ��͵� �ƴҶ�</c:otherwise>
	</c:choose>
	</c:catch>
	
	<c:forEach var="j" begin="0" end="10" step="2">
		${j}
	</c:forEach>
	<%int[] z=new int[4]; z[0]=1; z[1]=2;z[2]=3;z[3]=4;%>
	<c:forEach var="p" items="${z}">
		${p}
	</c:forEach>
	<c:forTokens var="j" items="Hello;My;Hero" delims=";">
		${j}
	</c:forTokens>
	
	<%-- GET, Post�� �����ߴµ� Post�� ���Ȼ��� ������ ���� --%>
	<c:url var="naver" value="https://www.naver.com/" method="get">
		<c:param name="id" value="���̵�"></c:param>
	</c:url>
	
	<c:import url="/include.jsp" var="in">
		<c:param name="id" value="��"/>
	</c:import>
	<a href="${name}">abc</a>
	
	<%-- <c:redirect url="https://www,naver.com/"/	> --%>
</body>
</html>