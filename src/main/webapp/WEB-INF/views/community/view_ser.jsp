<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>우리 애를 부탁해</title>
<link rel="stylesheet" href="${rootPath}/css/main.css?ver=20191208001" type="text/css" >
<link rel="stylesheet" href="${rootPath}/css/community.css?ver=220191208011"  type="text/css" >
<style type="text/css">
	nav ul li:nth-child(5) a {
		background-color: #14974b;
		color: white;
		font-weight: bold;
	}
	
	#comm_list ul li:last-child a {
	background-color: #e67e22;
	color: white;
}
</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/include-header.jspf" %>

<%@ include file="/WEB-INF/views/include/include-nav.jspf" %>

<div id="community">
	<div id="comm_list">
		<ul>
			<li><a href="${rootPath}/community/view">후기</a></li>
			<li><a href="${rootPath}/community/view_ser">고객센터</a></li>
		</ul>
	</div>
	
	<div id="comm_table">
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
			</tr>
			<tr>
				<td class="cen">1</td>
				<td><a href="#">고객 문의 입니다</a></td>
				<td class="cen">홍길동</td>
				<td class="cen">2019-12-08</td>
			</tr>
			<tr>
				<td class="cen">2</td>
				<td>고객 문의 입니다</td>
				<td class="cen">홍길동</td>
				<td class="cen">2019-12-08</td>
			</tr>
			<tr>
				<td class="cen">3</td>
				<td>고객 문의 입니다</td>
				<td class="cen">홍길동</td>
				<td class="cen">2019-12-08</td>
			</tr>
			<tr>
				<td class="cen">4</td>
				<td>고객 문의 입니다</td>
				<td class="cen">홍길동</td>
				<td class="cen">2019-12-08</td>
			</tr>
			<tr>
				<td class="cen">5</td>
				<td>고객 문의 입니다</td>
				<td class="cen">홍길동</td>
				<td class="cen">2019-12-08</td>
			</tr>
		</table>
	</div>
	
	<div>
		<button class="btn_write">글쓰기</button>
	</div>
</div>

<%@ include file="/WEB-INF/views/include/include-footer.jspf" %>
</body>
</html>