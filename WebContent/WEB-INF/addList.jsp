<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./gbc" method="post">
		<input type="hidden" name="action" value="add"><br>
		<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비밀번호</td>
				<td><input type="password" name="password" value=""></td>
			</tr>
			<tr>
				<td colspan="4"><textarea rows="5" cols="60" name="content"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4"><button type="submit">확인</button></td>
			</tr>
		</table>
	</form>
	<br>

	<c:forEach items="${gList }" var="guestVo">
		<table border="1">
			<tr>
				<td>${guestVo.no }</td>
				<td>${guestVo.name }</td>
				<td>${guestVo.regDate }</td>
				<td><a href="./gbc?action=deleteForm&no=${guestVo.no }">[삭제]</a></td>
			</tr>
			<tr>
				<td colspan=4 class="text-left">${guestVo.content }</td>
			</tr>
		</table>
	</c:forEach>
	
</body>
</html>