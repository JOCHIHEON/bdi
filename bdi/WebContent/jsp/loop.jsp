<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String[] strs = {"a","b","c","d","e","f","g","h","i","j"};
for(int i=1;i<=10;i++){
	out.write(i + strs[i-1] + "<br>");
}
%>
</body>
</html>