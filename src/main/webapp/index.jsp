<!-- HTML�� �ּ�  -->
<%-- JSP�� �ּ� --%>
<%-- JSP�� ���� ������ 2�ܰ� --%>
<%-- 1. �ڹ� ������ ���� �ڵ�� �����ϴ� �ܰ� --%>
<%-- 2. ������ JVM ������ �����ؼ� HTML�� ����� �ܰ� --%>
<%-- JSP ������ ������ ������ %�� �̿��ؼ� �˷��ش�. --%>
<%-- �ڹ� �������� �Ϲ����� �ڵ尡 �ƴ� Ư���� ������ �ڵ嵵 ���� --%>
<%-- Ư���� ������ �ڵ带 �ۼ��ϱ� ���� JSP Ư�� ���� --%>
<%-- ���þ� ������ �׳� % �տ� %@ --%>
<%-- 1. page ���� => �������� ������ �˷��ִ� ���� --%>
<%-- 2. include ���� --%>
<%-- 3. taglib ���� --%>
<%-- ��ũ��Ʋ���� java�� �ۼ��Ǿ� �־� --%>
<%-- javascript, ecmascript, groovy, ruby, jython --%>
<%@ page language="java"%>
<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.util.Scanner, java.io.InputStream"  %>
<%--@ extends = "test.java" --%>
<%@ page buffer="8kb" %>
<%@ page autoFlush="true" %>
<%@ page errorPage="/error.html" %> 
<%@ page isErrorPage="true" %>
<%-- exception. --%>
<%@ page session="true" %>
<%-- session.setMaxInactiveInterval(1800); --%>
<%-- ��ũ��Ʋ�� --%>
<%-- �ڹٸ� ����ϱ� ���� ���� --%>
<%-- <% for(int i=0;i<5;i+=1); %> --%>
<%-- �ڹ�(language) ������ �ۼ��� �� �ִ� ���� --%>
<%-- ��ũ��Ʋ���� HTML�� �������� �����ص� �Ǵ� HTML�� ��ũ��Ʋ���� ���ԵǾ �������� ���� --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- �׼� �±��� URL�� ������ �±� ��κп� ����� ������ �༮ --%>
	<%--
	<jsp:forward page="/include.jsp">  �ش� �������� �̵��� </jsp:forward>--%>
	<%-- �ڹٺ� ��ü�� �����ϵ����ϴ� ������ �ִ�. --%>
	<%-- �ڹٺ� ��ü�� �����ϵ����ϴ� ������ �ִ� --%>
	<%-- scope ���� --%>
	<%-- 1. page --%>
	<%-- 2. request --%>
	<%-- 3. session --%>
	<%-- 4. application --%>
	<%-- �׼� �±׵� ������ �� ���� --%>
	<%-- taglib�̱� ������ --%>
	<%-- ǥ���� -> ����¥�� ������ �ڵ����� String ���� ���� --%>
	<%-- ���� �ƴ� �ܼ� �� ����� ���� ��� --%>
	<%-- ǥ�����(EL)--%>
	<%-- ${} ���̿� ���� ���� �׳� ����ϴ� ���--%>
	<%-- �ڹٺ� ��ü ������ ǥ�� --%>
	<%-- ǥ�� ���� �޼��� camel-case�� �˾Ƽ� �������ش� --%>
	<%-- �ε�ȣ�� ���� ���ο� ������ --%>
	${1 eq 2} <%-- equal --%>
	<%-- ${1 ne 2} --%> <%-- not equal --%>
	${1 gt 2} <%-- greater then > --%>
	${1 ge 2} <%-- greater equal >=--%>
	${1 lt 2} <%-- lesser then  <= --%>
	${1 le 2} <%-- lesser equal <= --%>
	${empty limit} <%-- �ش� ��ü�� ������ ���� --%>
	<%-- and, or, not, instanceof --%>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%-- 	<jsp:useBean id="limit" class="test.bean" scope="requset" />
 --%>	<jsp:setProperty name="limit" property="x" value="10" />
	<jsp:getProperty name="limit" property="x"/>
	${limit.x}
	<jsp:include page="/include.jsp">
		<jsp:param name="y" value="5" value="%=5"/>
	</jsp:include>
	
	<%-- fn�� Ư���� �༮ -> ǥ�� ���� ���Ǳ� ���ؼ� ������� taglib --%>
<%-- 	${fn:length([1,2,3])}
 --%>	${fn:toUpperCase("Hello Disney")}
	${fn:toLowerCase("Hello Disney")}
	${fn:substring("Hello Disney",3,7)}
	${fn:replace("Hello Disney","Hello","Goodbye")}
	
	<fmt:formatDate value="date" pattern="YY-MM-DD" />
	<fmt:parseDate value="2023-11-25" pattern="YYYY-MM-DD" var="date" />
	<%-- formatNumber, parseNumber --%>
	
	<img src="<%="HTML���� ���̿� ��ũ��Ʋ���� �־" %>" alt="" />
	<ol>
	<%--@ include file="/include.jsp" --%>
		<% for(int i = 0; i< 10; i += 1){ %>
			<li><%=i %></li>
			<!-- out.append(getListItem("A")); -->
		<%} %>
	</ol>
</body>
</html>
