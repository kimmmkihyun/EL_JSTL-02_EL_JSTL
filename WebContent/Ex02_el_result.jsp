<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex02_el_result.jsp<br>

<%
	request.setCharacterEncoding("UTF-8");
	/* HttpServletRequest request = new HttpServletRequest(); */
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String age = request.getParameter("age");
%>

아이디 : <%=id %> <br>
이름 : <%=name %> <br>
비밀번호 : <%=password %> <br>
나이 : <%=age %> <br><br><br><br>	 


아이디2 : ${ param.id } <br>
이름2 : ${ param.name } <br>
비밀번호2 : ${ param.password } <br>
나이2 : ${ param.age } <br><br><br><br>


아이디3 : ${ param["id"] } <br>
이름3 : ${ param["name"] } <br>
비밀번호3 : ${ param['password'] } <br>
나이3 : ${ param["age"] } <br><br><br><br>

주소 : <%=request.getParameter("addr") %><br>
주소2 : ${ param.addr } <br>
주소3 : ${ param['addr'] } <br>


<hr>

id비교1 : <%=id == "hong"%><br>
id비교2 : <%=id.equals("hong") %><br>

id비교3 : <%=id == ""%><br>
id비교4 : <%=id.equals("") %><br>

id비교5 : ${ param.id == "hong" }<br>
id비교6 : ${ param.id eq "hong" }<br>
id비교7 : ${ param.id.equals("hong") }<br>

비밀번호비교 : ${ param.password == "1234" }<br>
나이비교 : <%=age.equals("30") %>


<!-- 
el을 통해서 넘어온 값을 출력할 때는 넘어오는 값이 없으면 공백으로 나오고 
request객체를 활용해서 넘어온 값을
가져올 때는 값이 없으면 null로 나온다

param으로 넘어오는 값은   ==,eq,equals 다 비교 가능하다

-->