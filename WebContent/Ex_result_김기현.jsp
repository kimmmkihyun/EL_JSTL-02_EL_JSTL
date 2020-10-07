<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
Ex_result_김기현.jsp<br>


<% 
	request.setCharacterEncoding("UTF-8");
	String[] bookstore =  request.getParameterValues("bookstore");
	
	String str = "";
	for(int i=0;i<bookstore.length;i++) {
		str += bookstore[i]+" ";
	}
		System.out.println(str);
	
%>

<jsp:useBean id="bb" class="myPkg.Bookbean"/>
<jsp:setProperty property="*" name="bb"/>



제목1 : <%=request.getParameter("title") %><br>
제목2 : <%=bb.getTitle() %><br>
제목3 : <%out.print(bb.getTitle()); %><br>
<br>
저자1 : ${ param.author } <br>
저자2 : <%=request.getParameter("author") %><br>
저자3 : <jsp:getProperty property="author" name="bb"/><br>
<br>
출판사1 : ${ bb.publisher }<br>
출판사2 : <%=bb.getPublisher() %><br>
출판사3 : ${ param.publisher }<br>
<br>
가격1 : ${ param.price }<br>
가격2 : ${ param['price'] }<br>
가격3 : <%out.print(bb.getPrice()); %><br>
<br>
입고일1 : <%=request.getParameter("buy") %><br>
입고일2 : <jsp:getProperty property="buy" name="bb"/><br>
입고일3 : ${ param.buy }<br>
<br>
배송비1 : <jsp:getProperty property="kind" name="bb"/><br>
배송비2 : ${ param['kind'] }<br>
배송비3 : <%=bb.getKind() %><br>
<br>
구입가능 서점1 : <jsp:getProperty property="bookstore" name="bb"/><br>
구입가능 서점2 : <%=bb.getBookstore() %> <br>
구입가능 서점3 : <c:out value="${ param.bookstore }"/> <br>
구입가능 서점4 : 
<c:forEach var="bstore" items="${ bb.bookstore }" varStatus="status">
	<c:out value="${ bstore }"/>
	<c:if test="${ not status.last }">
		,
	</c:if>
</c:forEach>
<br>
구입가능 서점5 : 
<c:forEach var="i" begin="0" end="${ fn:length(paramValues.bookstore) - 1 }" step="1" varStatus="status">
	<c:out value="${ paramValues.bookstore[i] }"/>
	<c:if test="${ not status.last }"> 
		,
	</c:if>
</c:forEach>
<br>

<br> 
보유수량1 : ${ bb.count }<br>
보유수량2 : ${ param["count"] }<br>
보유수량3 : <%=request.getParameter("count") %><br> 





