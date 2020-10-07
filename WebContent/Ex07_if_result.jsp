<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
Ex07_if_result.jsp<br>

<% request.setCharacterEncoding("UTF-8"); %>

선택한 음식 : ${ param.food } <br>


<c:if test="${ param.food eq '피자' }">
<font color="red">${ param.food }</font>
</c:if>

<c:if test="${ param.food eq '짜장면' }">
<span style="color:orange">${ param.food }</span> 
</c:if>

<c:if test="${ param.food == '떡볶이' }">
<font color="green">${ param.food }</font> 
</c:if>

<c:if test="${ not (param.food eq '피자' || param.food eq '짜장면' || param.food eq '떡볶이') }">
<font color="blue">${ param.food }</font> 
</c:if>

<!-- else가 없기 때문에 몇가지 경우의 수 이외에 설정을 할 때는 not을 활용해서 if문을 만든다 -->

<hr>

<!-- switch case -->

<c:choose>
	<c:when test="${ param.food eq '피자' }">
		<font color="red">${ param.food }</font>
	</c:when>
	
	<c:when test="${ param.food eq '짜장면' }">
		<span style="color:orange">${ param.food }</span> 
	</c:when>
	
	<c:when test="${ param.food eq '떡볶이' }">
		<span style="color:green">${ param.food }</span> 
	</c:when>
	
	<!-- default -->
	<c:otherwise>
		<span style="color:blue">${ param.food }</span> 
	</c:otherwise>
	
	
</c:choose>
