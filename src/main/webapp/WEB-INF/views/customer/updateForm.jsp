<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body> 
	<div style="padding: 20px;" align="center">
		<h3>회원정보 수정</h3>
		<hr>
		<form:form id="updateForm" method="post" modelAttribute="customerVO" autocomplete="off">
			<table border="1" style="width: 30%">
				<tr>
					<th></th>
					<td align="right"><small class="txt">* 표시는 필수 항목입니다.</small></td>
				</tr>
				<tr>
					<th width="25%">아이디*</th>
					<td>
						<form:input path="id" readonly="true"/>
					</td>
				</tr>
				<tr>
					<th width="25%">현재 비밀번호*</th>
					<td>
						<form:input path="password" />
						<form:errors path="pwd" class="error"/>
					</td>
				</tr>
				<tr>
					<th width="25%">변경 비밀번호*</th>
					<td>
						<form:input path="password" />
						<form:errors path="pwd" class="error"/>
					</td>
				</tr>
				<tr>
		            <th width="30%">비밀번호 확인*</th>
		            <td>
		                <input type="password" id="confirmPwd"/>
		                <span id="passwordStatus"></span>
		            </td>
		        </tr>
				<tr>
					<th width="25%">이름*</th>
					<td>
						<form:input path="name"/>
						<form:errors path="name" class="error"/>
					</td>
				</tr>
				<tr>
					<th width="25%">전화번호*</th>
					<td>
						<form:input path="phone"/>
						<form:errors path="phone" class="error"/>
					</td>
				</tr>
				<tr>
					<th width="25%">주민번호*</th>
					<td>
						<form:input path="register_num" readonly="true"/>
					</td>
				</tr>
			</table>
			<button id="signupBtn" type="submit">가입</button><br>
		</form:form>
		<br>
		<button id="mainBtn">메인화면으로</button>
	</div>
</body>
</html>