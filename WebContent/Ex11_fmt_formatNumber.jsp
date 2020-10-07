<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
Ex11_fmt_formatNumber.jsp<br>

<c:set var="price" value="98765"/>
<c:out value="${ price }"></c:out>
<br>
통화 : <fmt:formatNumber value="${ price }" type="currency" currencySymbol="원"/>
<br>

퍼센트 : <fmt:formatNumber value="${ price }" type="percent"/>
<br>

숫자 : <fmt:formatNumber value="${ price }" type="number"/>
<br>

패턴1 : <fmt:formatNumber value="${ price }" pattern="000,000.00"/>
<br>

패턴2 : <fmt:formatNumber value="${ price }" pattern="###,###.00"/>
<br>

패턴3 : <fmt:formatNumber value="12345678.9276" pattern="###,###.00"/>
<br>
<!-- .  뒤에 0이 2개이므로 두자리까지 반올림을 해서 출력한다 -->

패턴4 : <fmt:parseNumber value="12345678.9276" var="pn" integerOnly="true"/>
${ pn }
<!-- 버림의 개념 소수점 빼고 정수만 => integerOnly=true가 있기 때문  -->
<br>

now = 오늘날짜
<c:set var="now" value="<%= new Date() %>"/>
now1 : ${ now } <br>

now2 : <fmt:formatDate value="${ now }" type="date" dateStyle="full"/>  <br>

now3 : <fmt:formatDate value="${ now }" type="date" dateStyle="short"/>  <br>

now4 : <fmt:formatDate value="${ now }" type="date"/>  <br>


now5 : <fmt:formatDate value="${ now }" type="time" timeStyle="full"/>  <br>

now6 : <fmt:formatDate value="${ now }" type="time" timeStyle="short"/>  <br>

now7 : <fmt:formatDate value="${ now }" type="time"/>  <br>

now8 : <fmt:formatDate value="${ now }" type="both" dateStyle="medium" timeStyle="medium"/>  <br>
<!-- 기본 형태 -->
