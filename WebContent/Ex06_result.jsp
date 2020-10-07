<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
Ex06_result.jsp<br>
<% request.setCharacterEncoding("UTF-8"); %>

이름 : ${ param.name } <br>
국어 : ${ param.kor } <br>
영어 : ${ param.eng } <br>
수학 : ${ param.math } <br>

<c:set var="avg" value="${ (param.kor+param.eng+param.math) / 3 }"/>

평균 : ${ avg } <br>

<c:if test="${ avg>=90 }">
	A학점
</c:if>

<c:if test="${ avg>=80 and avg<90 }">
	B학점
</c:if>

<c:if test="${ avg>=70 and avg<80 }">
	C학점
</c:if>

<c:if test="${ avg>=60 and avg<70 }">
	D학점
</c:if>

<c:if test="${ avg<60 }">
	F학점
</c:if>