<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String idCheckVisibleP=(String)session.getAttribute("idCheckVisibleP");
	if(idCheckVisibleP==null){
		idCheckVisibleP="visibility:hidden";
	}
	String passwordCheckVisibleP=(String)session.getAttribute("passwordCheckVisibleP");
	if(passwordCheckVisibleP==null){
		passwordCheckVisibleP="visibility:hidden";
	}
	String storeNameCheckVisible=(String)session.getAttribute("storeNameCheckVisible");
	if(storeNameCheckVisible==null){
		storeNameCheckVisible="visibility:hidden";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Private</title>
</head>
<body>
	<div>
		<a href="privateHome.jsp?CONTENTPAGE=community.jsp&FIXSECTOR=community&FIXSECTORSUB=communityHome"><img alt="Private" width="130" height="130" src="img/daram.png"></a>
		<br>
		<br>		
		<form action="module/producerLoginProcess.jsp" method="post">
			상호명 : <input type="text" name="producerid"><br>
			<p style=<%=storeNameCheckVisible %>>존재하지 않는 상호명 입니다.</p>
			판매자 아이디: <input type="text" name="producerid"><br>
			<p style=<%=idCheckVisibleP %>>존재하지 않는 판매자 아이디 입니다.</p>
			password : <input type="password" name="password"><br>
			<p style=<%=passwordCheckVisibleP %>>비밀번호가 일치하지 않습니다.</p>	
			<input type="submit" value="판매자 로그인">
		</form>
		<div>
			<br>
			등록된 상효명을 잊어버리셨나요? <a href="privateHome.jsp?CONTENTPAGE=findStoreName.jsp&FOOTERIS=display:none" style="text-decoration:underline">판매자 계정 찾기</a>
			<br>
			판매자 계정 아이디를 잊어버리셨나요? <a href="privateHome.jsp?CONTENTPAGE=findProducerId.jsp&FOOTERIS=display:none" style="text-decoration:underline">판매자 계정 찾기</a>
			<br>
			비밀번호를 잊어버리셨나요? <a href="privateHome.jsp?CONTENTPAGE=findProducerPassword.jsp&FOOTERIS=display:none" style="text-decoration:underline">비밀번호 찾기</a>
		</div>
	</div>
</body>
</html>