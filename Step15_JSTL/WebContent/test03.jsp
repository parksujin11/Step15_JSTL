<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test03.jsp</title>
</head>
<body>
<%
	MemberDto dto1=new MemberDto(1, "김구라", "노량진");
	MemberDto dto2=new MemberDto(2, "해골", "행신동");
	MemberDto dto3=new MemberDto(3, "원숭이", "상도동");
	
	List<MemberDto> members=new ArrayList<>();
	//회원목록을 request 영역에 담기 
	request.setAttribute("members", members);
%>
<h3>회원 목록입니다.</h3>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>주소</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="tmp" items="${members }">
			<tr>
				<td>${tmp.num}</td>
				<td>${tmp.name }</td>
				<td>${tmp.addr }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</body>
</html>