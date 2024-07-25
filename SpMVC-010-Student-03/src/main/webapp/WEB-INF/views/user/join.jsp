<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="rootPath" />
<link rel="stylesheet" href="${rootPath}/static/css/user/join.css">
<form class="user join">
	<fieldset>
		<legend>회원가입</legend>
			<input type="text" placeholder="USER NAME" />
			<span>*</span>
			<input type="password" placeholder="PASSWORD" />
			<span>*</span>
			<input type="text" placeholder="본명" />
			<span>*</span>
			<input type="text" placeholder="별명" />
			<span>*</span>
			<input type="button" value="회원가입" />
	</fieldset>
</form>
