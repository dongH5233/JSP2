<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isErrorPage="true" session="true"%>
<%@ page import="javax.servlet.RequestDispatcher, javax.servlet.http.Cookie" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- ppge -> ���� ������ ��� �����ϰ� �ִ�, �ڱ� �ڽ��̴�. --%>
<%-- request -> ��û --%>
<%-- <% request.getContentType(); %> 
<% request.getParameter("ID"); %> 
<% request.getParameterNames(); %> 
<% request.getParameterValues("Datas"); %> 
<% request.getParameterMap("Datas"); %> 
<% request.getMethod(); %> 
<% request.getHeader("Content-Disposition"); %> 
Referer, User-Agent, Host(localhost:9999)
<% request.getHeaderNames(); %>
<% request.getHeaders("Content-Disposition"); %>; ���� �и�
<% request.setAttribute("key","value");%>
<% request.getAttribute("key");%>
<% request.getCookies(); %>
<% request.getSession(); %>
<% request.getContextPath(); %>
<% request.getInputStream(); %>
<% request.getLocale(); request.getLocales(); %> euc-kr, en, ko-kr
<% request.getCharacterEncoding(); %> �Ϲ������δ� �ڵ����� UTF-8
<% request.getServletPath(); %>
<% request.getServletContext(); %>
<% request.getPathInfo(); %> /A/B/C.jsp
<% request.getParts(); %>
<% request.getParts("file"); %> multipart/form-data
<% 
	Part part = request.getPart("file");
	part.getInputStream();
	part.getContentType(); //MIME Ÿ���� �˾ƺ��ڴ�
	part.getSize(); // ũ��
	part.getHeader("Content-Disposition"); // ���� �پ��ִ� ����� �������ڴ�
	part.getName(); // ������� filename �κ��� ����
	part.write("/a.bmp"); // ������ �����ϰڴ�.
	part.delete(); // ������ �����ϰڴ�.
	part.getSubmittedFileName(); // ����ڰ� ����ϴ� ���ϸ�

%>
<% 	request.getRequestURL(); request.getRequestURI(); %>
<% 
   	RequestDispatcher patcher = request.getRequestDispatcher("/index.jsp");
	patcher.forward(request, response);
	patcher.include(request, response);
%>
<%	request.isSecure(); %> HTTS ���� --%>

<%-- <%	response.setContentType("text/html"); %>
<%	response.setCharacterEncoding("utf-8"); %>
<% 	response.getWriter().append("out ���尴ü�� ���ϴ� �޼���"); %>
<% 	out.append("�ٸ� �ٰ� ����."); %>
<% 	response.getOutputStream(); %> �����ϸ� ������ �����ϰ� ������ �ȴ�? X
<% 	response.sendRedirect("/test.html"); %> �ش� �������� �̵� --%>
<%-- <% 	response.sendError(404,"���� ��ã�Ҿ�"); %>
<% 	response.addCookie(new Cookie("key", "value")); %>
<% 	response.addHeader("key", "value"); %>
<% 	response.setHeader("key", "value"); %>
<% 	response.setIntHeader("key",5); %> Date, Double
<% 	response.setStatus(200); %>  --%>

<%-- <% session.getAttribute("Key"); %>
<% session.getAttributeNames(); %>
<% session.removeAttribute("Key"); %>
<% session.removeValue("Key"); %>
<% session.getId(); %>
<% session.isNew(); %>
<% session.getCreationTime(); %> <!-- ù��° ���ӽð� -->
<% session.getLastAccessedTime(); %> <!-- ������ ���ӽð� -->
<% session.getMaxInactiveInterval(); %>
<% session.setMaxInactiveInterval(1800); %>
<% session.invalidate(); %> <!-- ���ǿ��� ���� ������ ����� ���� -->
 --%>
 
 <%-- <% application.getAttribute("Key"); %>
 <% application.getAttributeNames(); %>
 <% application.setAttribute("Key", "value"); %>
 <% application.removeAttribute("Key"); %>
 <% application.getInitParameter("�ʱ�ȭ �Ķ����"); %>
 <% application.getInitParameterNames(); %>
 <% application.getContext("/test.html"); %> <!-- ��� �ڵ����� -->
 <% application.getContextPath(); %>
 <% application.getMimeType("/index.html"); %>
 <% application.getRequestDispatcher("/index.html"); %>
 <% application.log("�α�"); %>  --%><!-- console.log(); -->
 <%-- �ӵ��� ���� �� ������. System.out�� ��� ����� ���� --%>
 
<%--  <% pageContext.getAttribute("Key"); %>
 <% pageContext.getAttributeNamesInScope(0); %>
 <% pageContext.setAttribute("Key", "value"); %>
 <% pageContext.removeAttribute("Key"); %>
 <% pageContext.getSession(); %> --%>
<%--  <% pageContext.getRequest(); %>
 <% pageContext.getResponse(); %>
 <% pageContext.getPage(); %>
 <% pageContext.getOut(); %>
 <% pageContext.forward(); %>
 <% pageContext.include(); %> --%>
<% pageContext.getServletContext(); %>

</body>
</html>