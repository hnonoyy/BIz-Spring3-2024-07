<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath }" var="rootPath" />
<body>
	<section class="main">
		<h2>학생정보</h2>
		<table class="student list">
			<thead>
				<tr>
					<th>학번</th>
					<th>이름</th>
					<th>학과</th>
					<th>학년</th>
					<th>전화번호</th>
					<th>주소</th>
				</tr> 
			</thead>
			<tbody>
			
			</tbody>
		</table>
		<div>
			<a href="${rootPath}/insert">학생정보 등록</a>
		</div>
	</section>
	
</body>
