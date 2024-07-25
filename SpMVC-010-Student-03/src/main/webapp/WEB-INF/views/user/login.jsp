<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="rootPath" />
<link rel="stylesheet" href="${rootPath }/static/css/user/login.css">
<title>Insert title here</title>
<form class="user login" method="POST">
	<fieldset>
		<span>로그인</span>
		<input type="text" placeholder="ID를 입력하세요" name="username" /> <input
			type="password" placeholder="PASSWORD를 입력하세요" name="password" /> <input
			type="button" value="로그인" />
	</fieldset>
</form>
