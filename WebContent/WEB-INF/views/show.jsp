<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>show목록보기</h1>
<c:forEach var="obj" items="${list }">
	${obj.id}, ${obj.name }, ${obj.pw }<br/>
</c:forEach>
총${cnt }개입니다<br/>
</body>
</html>