<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="r1"></div>
<script>
	/* var r1Obj=document.getElementById('r2');
	r1Obj.innerHTML = 'adsf';
	function abc(p1,p2,p3){
		alert(p1+','+ p2 +','+ p3);
	}
	abc(); */
	function Obj(){
		this.a = 3;	// public
		var b = 4; 	// static
		
		this.getAdd = function() {
			return this.a + b;
		}
	}
	/* var o = new Obj();
	alert(o.getAdd()); */
	function Calc(a,b){
		var add = function(){
			return a+b;
		}
		var substract = function(){
			return a-b;
		}
		var multiple = function(){
			return a*b;
		}
		var divide = function(){
			return a/b;
		}
		
		this.cal = function(op){
			if(op==='+'){
				return add();
			}
			else if(op==='-'){
				return substract();
			}
			else if(op==='*'){
				return multiple();
			}
			else if(op==='/'){
				return divide();
			}else{
				alert('제대로 된 연산자가 아닙니다.');
				return null;
			}
		}
	}
	var c = new Calc(4,2)
	alert(c.cal('--'));
</script>
</body>
</html>