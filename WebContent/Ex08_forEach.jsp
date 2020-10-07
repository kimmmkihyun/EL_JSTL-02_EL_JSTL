<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
Ex08_forEach.jsp<br>

<%
	String[] movieList = {"반도","결백","독전","국제시장"};

	pageContext.setAttribute("pcmovieList",movieList);
	
	for(int i=0;i<movieList.length;i++){
		out.print(movieList[i]+" ");
	}
	out.println("<br>");
	
	for( String movie : movieList) {
		out.print(movie +" ");
	}
	out.println("<br>");

%>
<%--  형식
<c:forEach var="변수" items="반복할 대상">

</c:forEach>
 --%>
<!-- 확장for문에 해당하는 코작성 작업 -->
movieList1 : 
<c:forEach var="movie" items="<%=movieList %>">
	${ movie } 
</c:forEach>
<br>

<!-- pageContext를 통해 설정을 해줘야 el코드로 반복문을 출력할 수 있다 -->
movieList2 : 
<c:forEach var="movie" items="${ pcmovieList }">
	${ movie } 
</c:forEach>
<br>

<!-- jstl 코드로 변수설정해서 el코드로 반복문 출력할 수 있다 -->
movieList3 : 
<c:set var="setmovieList" value="<%=movieList %>"/>
<c:forEach var="movie" items="${ setmovieList }">
	${ movie } 
</c:forEach>
<br>

************************************************<br>

<!-- el코드를 이용해서 배열의 방의 개수 구하는 법 -->
length() : ${ fn:length(pcmovieList) } / ${ fn:length(setmovieList) } / <%=movieList.length %><br>
<br><br>

<table border="1">
	<tr>
		<th>index</th>
		<th>count</th>
		<th>title</th>
	</tr>
	
	<!-- index는 배열의 방번호에 접근해서 출력하고 count는 1부터 시작해서 갯수를 출력한다 -->
	<c:forEach var="movie" items="${ pcmovieList }" varStatus="status">
		<tr>
			<td>${ status.index }</td>
			<td>${ status.count }</td>
			<td>${ movie }</td> 
		</tr>	
	</c:forEach>
</table>
	<br>	
=========================================================<br>
<!-- for(int i=0;i<movieList.length;i++) {   } 방식 
이 방식에 index는 i값과 같은 값이 출력됨  반복한 상태를 기억하고 있는 변수가 status  -->
<c:forEach var="i" begin="1" end="10" step="2" varStatus="status">
	${ i } / ${ status.count } / ${ status.index } / ${ status.begin } / ${status.end } / ${ status.first } / ${ status.last }<br>
</c:forEach>

<br><br>

3단<br>
<c:forEach var="i" begin="1" end="9">
3 * ${i} = ${ 3 * i }<br>
</c:forEach>
<br>

<c:forEach var="i" begin="1" end="10">
	<c:set var="total" value="${ total + i }"/>
</c:forEach>
1~10 합계 : ${ total }<br>






