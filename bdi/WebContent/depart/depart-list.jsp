<%@page import="com.bdi.test.DepartService"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
DepartService ds = DepartService.getDS();
List<Map<String,String>> departList = ds.getdepartList();
%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="/bs-3.3.7/bootstrap-3.3.7/dist/css/bootstrap-theme.css" />
<link rel="stylesheet"
	href="/bs-3.3.7/bootstrap-3.3.7/dist/css/bootstrap.css" />
<title>Insert title here</title>
<style>
	table td, th{
		text-align:center;
	}
</style>
</head>
<body>
<div class="container">
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th>departName</th>
				<th>departCode</th>
				<th>departCnt</th>
				<th>departEtc</th>
			</tr>
		</thead>
		<tbody>
<%
for(int i=0;i<departList.size();i++){
	Map<String,String> depart = departList.get(i);
%>
				<tr>
				<td><%=depart.get("name") %></td>
				<td><%=depart.get("code") %></td>
				<td><%=depart.get("cnt")%></td>
				<td><%=depart.get("etc")%></td>
			</tr>
<%
}
%>
		</tbody>
	</table>
</div>
</body>
</html>