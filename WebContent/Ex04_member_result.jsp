<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex04_member_result.jsp<br>

<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="mb" class="myPkg.MemberBean"/> 
<jsp:setProperty property="*" name="mb"/>

이름1 : <jsp:getProperty property="name" name="mb"/> <br>
이름2 : ${ param.name }<br> <!-- el 출력을 할 때는 위의 useBean객체 만들 필요 없다 -->
이름3 : ${ mb.name }<br>  <!-- MemberBean객체를 생성해서 만든 mb의 name을 출력할 때 이방법도 사용가능 -->
이름4 : <%=mb.getName() %><br>
<!-- 1,3,4는 useBean객체를 활용 2는 객체를 만들지 않는 el활용 -->

나이1 : <jsp:getProperty property="age" name="mb"/> <br>
나이2 : ${ param.age } <br> 	
나이3 : ${ mb.age }<br>
나이4 : <%=mb.getAge() %><br>

몸무게1 : <jsp:getProperty property="weight" name="mb"/> <br>
몸무게2 : ${ param.weight } <br>
몸무게3 : ${ mb.weight } <br>
몸무게4 :	<%=mb.getWeight() %><br>

키1 : <jsp:getProperty property="height" name="mb"/> <br>
키2 : ${ param.height } <br>
키3 : ${ mb.height } <br>
키4 : <%=mb.getHeight() %> <br>

성별1 : <jsp:getProperty property="gender" name="mb"/> <br>
성별2 : ${ param.gender } <br>
성별3 : ${ mb.gender } <br>  
성별4 : <%=mb.getGender() %><br>

<hr>

pname : <%=pageContext.getAttribute("pname") %> <br>
rname : <%=request.getAttribute("rname") %> <br>
sname : <%=session.getAttribute("sname") %> <br>
aname : <%=application.getAttribute("aname") %> <br>

myname : ${ initParam.myname } <br>  
friendName : ${ initParam.friendName } <br>
aname : ${ applicationScope.aname } <br>
myname : ${ applicationScope.myname } <br>
aname : ${ initParam.aname } <br>

초기화 파라미터<br>
<%
Enumeration<String> initEnum = application.getInitParameterNames();
while(initEnum.hasMoreElements()) {
	String initName = initEnum.nextElement();
%>
		<%=initName %> : <%=application.getInitParameter(initName) %>	<br>
<%	
} //while

/* 
application 내장객체를 활용할 때는  application.getAttribute("aname")으로 
el을 활용할 경우 ${ applicationScope.aname } 식으로
web.xml에 변수설정을 한경우 ${ initParam.myname } , 위와 같은 식으로 가져온다
application내장객체를 web.xml식으로 , web.xml를 application내장객체로 가져오는 방법은 안된다 
*/

%> 


