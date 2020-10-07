<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
Ex09_result.jsp<br>

<% request.setCharacterEncoding("UTF-8"); 
	
%>
<jsp:useBean id="sb" class="myPkg.StudentBean"></jsp:useBean>
<jsp:setProperty property="*" name="sb"/>

이름1 : <%=request.getParameter("name") %> <br>
이름2 : ${ param.name } <br>
이름3 : <%=sb.getName() %><br>

<c:if test="${ param.name == '' }">
입력한 이름 없음1<br>
</c:if>

<c:if test="${ sb.name == null }">
입력한 이름 없음2<br>
</c:if>

<c:if test="${ sb.name == '홍길동' }">
	<c:set var="msg" value="홍길동님 로그인 했습니다."/><br>
</c:if>

<c:if test="${ sb.name != '홍길동' }">
	<c:set var="msg" value="아무개님 로그인 했습니다."/><br>
</c:if>

before  :  ${ msg }  /  <c:out value="${ msg }"/> <br>
<c:remove var="msg"/> <!-- 변수를지우고 싶을 때 쓰는 태그 -->
--------------------------------------<br>
after  :  ${ msg }  /  <c:out value="${ msg }"/> <br>


<c:if test="${ sb.age >= 20 }">
<c:out value="성인입니다"/>
</c:if>

<c:if test="${ sb.age < 20 }">
미성년입니다
</c:if>

<br><br>
<c:remove var="msg"/> <!-- 변수를지우고 싶을 때 쓰는 태그 -->

성별 : ${ sb.gender } <br>

<!-- radio 타입은 공백을 비교할 때 무조건 null로 비교해야 한다!!!!!!!!! -->

<c:if test="${ param.gender eq null }">
	선택성별 없음1 <br>
</c:if>

<c:if test="${ sb.gender eq null }">
	선택성별 없음2 <br>
</c:if>

<br>

<c:choose>
	<c:when test="${ sb.gender eq '남' }">
		<c:out value="남자입니다."/>
	</c:when>
	
	<c:when test="${ sb.gender eq '여' }">
	여자입니다.
	</c:when>
	
	<c:otherwise>
	선택안함.
	</c:otherwise>

</c:choose>
<br>

점수 : ${ param.jumsu } <br>

<c:choose>
	<c:when test="${ param.jumsu >= 90 }">
		A학점
	</c:when>
	
	<c:when test="${ param.jumsu >= 80 }">
		B학점
	</c:when>
	
	<c:when test="${ param.jumsu >= 70 }">
		C학점
	</c:when>
	
	<c:when test="${ param.jumsu >= 60 }">
		D학점
	</c:when>
	
	<c:otherwise>
		F학점
	</c:otherwise>
</c:choose>

<br>

취미1 : ${ param.hobby } <br>
취미2 : ${ paramValues.hobby } <br> <!-- hobby 배열의 0번째방 주소가 출력된다 -->

선택한 취미 갯수 : ${ fn:length(paramValues.hobby) }<br>

확장 for문 취미3 : 
<c:forEach var="hby" items="${ paramValues.hobby }" varStatus="status">
	<c:out value="${ hby }"/>
	
	<c:if test="${not status.last }">
	,
	</c:if>	
</c:forEach>
<br>

확장 for문 취미4 : 
<c:forEach var="hby" items="${ sb.hobby }" varStatus="status">
	<c:out value="${ hby }"/>
	
	<c:if test="${not status.last }">
	,
	</c:if>
</c:forEach>
<br>

취미5 : 
<c:forEach var="i" begin="0" end="${ fn:length(paramValues.hobby) - 1 }" step="1" varStatus="status">
	${ paramValues.hobby[i] }
	<c:if test="${ not status.last }">
		,
	</c:if>
</c:forEach>
<br>

취미6 : 
<c:forEach var="i" begin="0" end="${ fn:length(sb.hobby) - 1 }" step="1" varStatus="status">
	${ paramValues.hobby[i] }
	<c:if test="${ not status.last }">
		,
	</c:if>
</c:forEach>























 