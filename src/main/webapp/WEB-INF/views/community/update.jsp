<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" /> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
	table{
		width:70%;
		margin:20px auto;
		border-top: 2px solid #252525;
		border-bottom: 1px solid #ccc;
	}
	
	table th {
		text-align : left;
		background-color : #f7f7f7;
		color : #3b3b3b;
	}
	
	table th, table td {
		padding:15px 0 16px 16px;
		border-bottom: 1px solid #ccc;
	}
	
	caption {
		font-size: 25px;
		padding:10px;
		font-weight: bold;
		color: blue;
	}
	
	div.btn-box {
		width:70%;
		margin:5px auto;
		
		display: flex;
		justify-content: center;
		align-items: center;
	}
	
	a.btn {
		border-radius: 3px;
		padding:5px 11px;
		color: #fff;
		display: inline-block;
		background-color: #6b9ab8;
		border : 1px solid #56819d;
		vertical-align: middle;
		text-decoration: none;
		margin:10px;
	}
	
	a.btn:hover {
		/* border:1px solid blue; */
		box-shadow: 5px 5px 8px rgba(80,80,80,0.8)
	}
</style>
<script>

</script>

</head>
<body>


<table>
	<caption>후기</caption>

	<tr>
	<th>번호</th><td>${reviewDTO.re_seq}</td>
	<th>작성일자</th><td>${reviewDTO.re_date}</td>
	</tr>

	<tr>
	<th>작성자</th><td>${reviewDTO.re_name}</td>
	</tr>

	<tr>
	<th>제목</th><td colspan="3">${reviewDTO.re_subject}</td>
	</tr>
	
	<tr>
	<th>세부내용</th><td colspan="3">${reviewDTO.re_text}</td>
	</tr>

</table>

<br/><br/>
<div class="btn-box">
	<a href="javascript:void(0)" 
			class="btn" id="btn-update">수정</a>
	<a href="javascript:void(0)" 
			class="btn" id="btn-delete">삭제</a>
</div>

</body>
</html>