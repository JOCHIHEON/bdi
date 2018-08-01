<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/bs-3.3.7/bootstrap-3.3.7/dist/css/bootstrap-theme.css"/>
<link rel="stylesheet" href="/bs-3.3.7/bootstrap-3.3.7/dist/css/bootstrap.css"/>
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<table class="table table-hover" border="1px solid">
		<tr>
			<th>이름</th>
			<th>나이</th>
			<th>주소</th>
			<th>아이디</th>
		</tr>
		<tbody id="data">
		</tbody>	
	</table>
</div>
<script>
	// {} []
	var userList = new Array();
	var user = {};
	user['name']="홍길동";
	user['age']=33;
	user['adress']="서울";
	user['id']="hong";
	userList.push(user);
	
	user = {};
	user['name']="김덕배";
	user['age']=24;
	user['adress']="인천";
	user['id']="kim";
	userList.push(user);
	
	user = {};
	user['name']="조치헌";
	user['age']=23;
	user['adress']="신림";
	user['id']="jo";
	userList.push(user);
	
	var html = '';
	for(var i=0;i<userList.length;i++){
		html+='<tr>';
		html+='<td>' + userList[i].name + '</td>';
		html+='<td>' + userList[i].age + '</td>';
		html+='<td>' + userList[i].adress + '</td>';
		html+='<td>' + userList[i].id + '</td>';
		html+='</tr>';
	}
	document.querySelector('#data').innerHTML=html;
</script>
</body>
</html>