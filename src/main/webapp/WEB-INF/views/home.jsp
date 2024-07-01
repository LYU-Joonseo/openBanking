<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="utf-8" />
<title>은행</title>
</head>
<body>
	<c:if test="${ empty logVO }">
		<h1>게스트님, 안녕하세요</h1>
	</c:if>
	<c:if test="${ not empty logVO }">
	 	<h1>${logVO.name} 님, 안녕하세요.</h1>
 	</c:if>
	<c:if test="${ empty logVO }">
		<a href="${ pageContext.request.contextPath }/signUp">회원가입</a><br>
	</c:if>
	<c:if test="${ empty logVO }">
		<a href="${ pageContext.request.contextPath }/login">로그인</a><br>
	</c:if>
	<c:if test="${ not empty logVO }">
		<a href="${ pageContext.request.contextPath }/logout">로그아웃</a><br>
	</c:if>
	<c:if test="${ not empty logVO }">
		<a href="${ pageContext.request.contextPath }/updateForm">회원정보수정</a><br>
	</c:if>
	<c:if test="${ not empty logVO }">
		<a href="${ pageContext.request.contextPath }/deleteForm">회원탈퇴</a><br><br>
	</c:if>
	<c:if test="${ not empty logVO }">
		<a href="${ pageContext.request.contextPath }/accountOpen">계좌 개설</a><br>
	</c:if>
	<c:if test="${ not empty logVO }">
		<a href="${ pageContext.request.contextPath }/accountList">내 계좌 보기</a><br>
	</c:if>  
	<c:if test="${ not empty logVO }">
		<a href="${ pageContext.request.contextPath }/transfer">계좌 이체</a><br>
	</c:if>
	<c:if test="${ not empty logVO }">
		<a href="${ pageContext.request.contextPath }/accHistory">거래 내역 한 눈에 보기</a><br>
	</c:if>
	<c:if test="${ not empty logVO }">
		<a href="${ pageContext.request.contextPath }/register">상품 등록</a><br>
	</c:if>
</body>
</html>
