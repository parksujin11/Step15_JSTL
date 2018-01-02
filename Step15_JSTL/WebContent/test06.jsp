<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test06.jsp</title>
</head>
<body>
<% request.setAttribute("jumsu", 95); %>
<h3>다중 if 문을 taglib로 구성해 보기</h3>

<c:choose>
	<c:when test="${jumsu ge 90 }">
		<p>점수는 ${jumsu } 이고 성적은 A 입니다.</p>
	</c:when>
	<c:when test="${jumsu ge 80 }">
		<p>점수는 ${jumsu } 이고 성적은 B 입니다.</p>
	</c:when>
	<c:when test="${jumsu ge 70 }">
		<p>점수는 ${jumsu } 이고 성적은 C 입니다.</p>
	</c:when>
	<c:when test="${jumsu ge 60 }">
		<p>점수는 ${jumsu } 이고 성적은 D 입니다.</p>
	</c:when>
	<c:otherwise>
		<p>점수는 ${jumsu } 이고 성적은 F 입니다.</p>
	</c:otherwise>
</c:choose>
</body>
</html>