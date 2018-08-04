<%@page import="com.bdi.test.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public String checkSel(String str1,String str2){
		if(str1==null){
			return "";
		}
		if(!str1.equals(str2)){
			return "";
		}
		return "selected";
	}
	/* public String checkSel(String type,String value){
		if(type!=null && type.equals(value)){
			return "selected";
		}
		return "";
	} */
%>
<%
String search = request.getParameter("search");
String type = request.getParameter("type");
out.println("검색할 타입: " + type + " : " + search);
%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/bs-3.3.7/bootstrap-3.3.7/dist/css/bootstrap-theme.css">
<link rel="stylesheet" href="/bs-3.3.7/bootstrap-3.3.7/dist/css/bootstrap.css">
<title>Insert title here</title>
<style>
	table td, th {
		text-align:center;
	}
</style>
</head>
<body>
	<div class = "container">
		<div style="margin:10px">
			<form>
				<!-- <input type = "checkbox" value="uiId" name="type" id="uiId"><label for="uiId">아이디</label>
				<input type = "checkbox" value="uiName" name="type" id="uiName"><label for="uiName">이름</label>
				<input type = "checkbox" value="uiEtc" name="type" id="uiEtc"><label for="uiEtc">비고</label> -->
				<select name="type">
					<option value="uiNo" <%=type!=null?type.equals("uiNo")?"selected":"":""%>>번호</option>
					<option value="uiNo" <%=checkSel(type,"uiNo")%>>번호</option>
					<option value="uiId"<%=checkSel(type,"uiId")%>>아이디</option>
					<option value="uiName"<%=checkSel(type,"uiName")%>>이름</option>
					<option value="uiAge"<%=checkSel(type,"uiAge")%>>나이</option>
					<option value="uiEtc"<%=checkSel(type,"uiEtc")%>>비고란</option>
				</select>
				 : <input type = "text" name="search" value=<%=search!=null?search:""%>>
				<button>검색</button>
			</form>
		</div>
		<table class = "table table-bordered table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이름</th>
					<th>나이</th>
					<th>부서코드</th>
					<th>비고란</th>
				</tr>
			</thead>
			<tbody>
<%
UserDAO udao = new UserDAO();
StringBuilder sb = udao.getTableString(type,search);
out.println(sb.toString());			
%>
			</tbody>
		</table>
	</div>
<%-- <script>
var type = "<%=type%>";
if(type!="null"){
	document.querySelector("select option[value=]" + type + "]").selected = true;
}
</script> --%>
</body>
</html>
