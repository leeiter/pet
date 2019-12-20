<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>우리 애를 부탁해</title>
<link rel="stylesheet" href="${rootPath}/css/main.css?ver=20191208001"
	type="text/css">



<style>
fieldset {
	width: 70%;
	margin: 20px auto;
	border: 1px solid green;
	border-radius: 10px;
}

legend {
	font-weight: bold;
	font-size: 20px;
}

input, textarea {
	display: inline-block;
	width: 90%;
	padding: 8px;
	margin: 5px;
	border-radius: 20px;
}

input:focus, textarea:focus {
	border: 2px solid blue;
	outline: none;
}

.r-box {
	width: 70%;
	margin: 20 auto;
	border: 1px solid blue;
	padding: 10px;
}

input {
	display: inline-block;
	width: 90%;
	padding: 8px;
	margin: 5px;
}
/*
            css에서 특정한 input box에 속성을 적용할때
            input[type="radio"]
            또는 [type=raio]
        */
input[type="radio"], [type=checkbox] {
	width: 24px;
	height: 24px;
	position: relative;
	top: 6px;
	margin-left: 15px;
}
</style>
</head>
<body>



	<%@ include file="/WEB-INF/views/include/include-header.jspf"%>

	<%@ include file="/WEB-INF/views/include/include-nav.jspf"%>


	<%
		/*
		 html의 form은 default method가 GET인데
		 form:form tag는 default method가 POST
		*/
	%>


	<%
		/*
			spring-form tag lib
			html의 input, form 등의 입력 box용 tag를 확장하여
			spring의 controller와 연동이 쉽게 하여주는 lib
		*/
	%>

	<fieldset>
		<legend>메모작성</legend>
		<form:form modelAttribute="reviewDTO" autocomplete="on"
			class="memo-form">

			<input name="re_seq" type="hidden"
				value='<c:out value="${reviewDTO.re_seq}" default="0"/>'>

			<div class="r-box">
				<label><input type="radio" name="re_cat" value="1">후기</label> 

			</div>


				
<%/* <input type="radio" name="re_cat" value="cat2"> <label>고객센터</label>
<c:if test="${reviewDTO.re_cat == 1 }">
checked="checked"
</c:if>


service() 호출이, 근본 원인(root cause)과 함께, 예외 [Request processing failed;
nested exception is org.mybatis.spring.MyBatisSystemException: nested exception is
org.apache.ibatis.executor.ExecutorException: Error selecting key or setting result to parameter object.
Cause: org.apache.ibatis.reflection.ReflectionException: Could not set property
're_cat' of 'class com.biz.pets.domain.ReviewDTO' with value '33' 
Cause: java.lang.IllegalArgumentException: java.lang.ClassCastException@18e153ea]을(를) 발생시켰습니다.
java.lang.IllegalArgumentException: java.lang.ClassCastException@18e153ea


*/ %>
			<form:input path="re_date" class="in-box" placeholder="작성일자" />
			<br />

			<form:input path="re_name" class="in-box" placeholder="작성자 id" />
			<br />

			<form:input path="re_subject" class="in-box" placeholder="제목을 입력하세요" />
			<br />





			<form:textarea path="re_text" rows="5" placeholder="내용을 입력하세요" />
			<br />
			<button>저장</button>

		</form:form>
	</fieldset>


	<%@ include file="/WEB-INF/views/include/include-footer.jspf"%>
</body>
</html>