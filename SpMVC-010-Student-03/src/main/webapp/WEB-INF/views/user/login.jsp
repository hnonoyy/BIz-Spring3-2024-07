<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="rootPath" />
<link rel="stylesheet" href="${rootPath }/static/css/user/login.css">
<title>Insert title here</title>
<form class="user login" method="POST">
	<fieldset>
		<span>로그인</span>
		<c:if test="${not empty MSG }">
			<h4>${MSG }</h4>
		</c:if>
		<input type="text" placeholder="ID를 입력하세요" name="username" /> 
		<input type="password" placeholder="PASSWORD를 입력하세요" name="password" /> 
		<button>로그인</button>
	</fieldset>
</form>
