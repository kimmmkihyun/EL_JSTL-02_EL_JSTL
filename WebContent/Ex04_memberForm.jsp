<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex04_memberForm.jsp<br>

<form action="Ex04_member_result.jsp" method="post">
	<table border="1">
		
		<tr>
			<td>이름</td>
			<td> <input type="text" name="name" value="길동"> </td>
		</tr>
		
		<tr>
			<td>나이</td>
			<td> <input type="text" name="age" value="30"> </td>
		</tr>	
		
		<tr>
			<td>몸무게</td>
			<td> <input type="text" name="weight" value="70"> </td>
		</tr>
		
		<tr>
			<td>키</td>
			<td> <input type="text" name="height" value="175"> </td>
		</tr>
		
		<tr>
			<td>성별</td>
			<td> 남<input type="radio" name="gender" value="남"> 
				 여<input type="radio" name="gender" value="여"> 
			</td>
		</tr>	
	
		<tr>
			<td colspan="2">
				<input type="submit" value="전송하기">
			</td>
		</tr>
	</table>
</form>

<%
	//jsp 내장객체를 이용한 설정방법
	pageContext.setAttribute("pname","페이지네임"); //pname=페이지네임 , pageContext는 현재의 페이지(form)에서만 사용가능
	request.setAttribute("rname","리퀘스트네임"); //rname=리퀘스트네임 , request는 요청한 쪽의 정보가 담기기 때문에 현재 페이지에서는 요청한 것이 없기때문에 null
	session.setAttribute("sname","세션네임"); //sname=세션네임 , 하나의 브라우저안에서는 사용가능
	application.setAttribute("aname","어플리케이션네임"); //aname=어플리케이션네임 , 프로젝트 안에서는 언제든 사용가능
%>





