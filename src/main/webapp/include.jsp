<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<%-- ��ũ��Ʋ���� ���ٺ��� �����Ҷ� --%>
		<%-- out. ���尴ü�� �̿��ؼ� ��� --%>
		<%-- ǥ���� => ��ũ��Ʋ�� ���ʿ� =�� ���´ٸ� �ڵ����� ó���ϴ� ��� --%>
		<%-- int a; --%>
		<%-- �׼� �±� --%>
		<%-- ��ũ��Ʋ���̳� ���þ �̿��ؼ� �����ϰ� �ۼ��ؾ��ϴ� ��ɵ��� ��� �����ϰ� �̿��� �� �ֵ��� --%>
<%-- 		<jsp:useBean id="limit" class="test.bean" scope="request" />
 --%>		<%-- setProperty�� value�� �ȳ����� request.getParameter(property)���� �ִ´� --%>
		<%-- java bean���� -> action tag�� �̿��� bean ������ ������ �״�� �̿��ϴ� �뵵 --%>
		
		
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