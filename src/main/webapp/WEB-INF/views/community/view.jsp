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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style type="text/css">
	nav ul li:nth-child(5) a {
		background-color: #14974b;
		color: white;
		font-weight: bold;
	}
	
	#comm_list ul li:first-child a {
	background-color: #e67e22;
	color: white;
}

table {
	
	border-collapse: collapse;
	border-spacing: 0;
	width:95%;
	margin: 10px auto;
	border : 1px solid #ccc;
	
}

tr {
	border : 1px solid #ddd;
}

th {
	text-align: left;
}

td, th{
	
	padding:8px;
	vertical-align: top;
	/* 만약 content가 td의 width보다 작아도 줄바꿈을 하지 마라 */	
	white-space: nowrap;
}

tr {
	background-color: gray;
}

/* tr tag에 content-body 클래스가 있는 친구들한테 */
tr.content-body:nth-child(even) {
	background-color: #ccc;
}
tr.content-body:nth-child(odd) {
	background-color: #fff;
}
tr.content-body:hover {
	background-color: #ddd;
	cursor: pointer;
}
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

<script type="text/javascript">
	$(function() {
		$(".btn_write").click(function(){
			document.location.href = "${rootPath}/community/insert"
		})
		
		
			$(".content-body").click(function(){
		// $(this) : 현재 클릭된 요소, tag 의 모든 정보
		let id = $(this).attr("data-id")
		let auth = $(this).attr("data-auth")
		// alert(id + "\n" + auth)
		document.location.href = "${rootPath}/community/update?id=" + id
		
	})
		
		
		$(function(){
	$("#btn-update").on("click",function(){
		/*
		새 페이지를 만들어 지금 페이지 위에 겹쳐서 보여라
		뒤로가기를 하면 이전페이지로 돌아가기가 되고
		*/
		document.location.href 
			= "${rootPath}/community/update?id=${reviewDTO.re_seq}" 
		
	})
	
	$("#btn-delete").click(function(){
		if(confirm("메모를 삭제합니다!!!")) {
			/*
			현재 페이지를 지우고, 새로운 페이지로 다시 그려라
			뒤로가기를 하면 엉뚱한 페이지(history에 저장된)로 이동
			*/
			let query = "${rootPath}/community/delete?re_seq=${reviewDTO.re_seq}"
			document.location.replace(query)
		}
	})
})
		
		
		
	})
	
	
</script>
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
	
	
		<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
		</tr>
		<c:choose>
			<c:when test="${empty RELIST}">
				<tr><td colspan="6">메모가 없음</td>
			</c:when>
			<c:otherwise>
				<c:forEach items="${RELIST}" 
						var="re" varStatus="index">
						<tr class="content-body" 
								data-id="${re.re_seq}">
							<td>${re.re_seq}</td>
							<td>${re.re_subject}</td>
							<td>${re.re_name}</td>
							<td>${re.re_date}</td>
						</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		
	</table>
	
	<section class="main-container">
<c:forEach items="${NAVER_ITEMS}" var="item">
	<a href="${item.link}" target="_new" class="title">
		<div class="d-box">
			<p class="title">${item.title} </p>
			<c:if test="${item.image != null}">
				<img src="${item.image}">
			</c:if>
			<p>${item.description}</p>
		</div>
	</a>
</c:forEach>
</section>
	
	
	
	<section>
	<%@ include file="/WEB-INF/views/community/pagination.jsp" %>
</section>
	<div>
		<button class="btn_write">글쓰기</button>
	</div>
</div>

<%@ include file="/WEB-INF/views/include/include-footer.jspf" %>
</body>
</html>