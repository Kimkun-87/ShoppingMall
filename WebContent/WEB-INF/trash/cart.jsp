<!--
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="beans.DataBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/b2b9fa9cfa.js" crossorigin="anonymous?ver=123"></script> 
<link rel="stylesheet" type="text/css" href="css/main.css?ver=111">
<style>
	.title{
		padding-top:120px;
		font-size:32px;
	}
	.table1{
		width:1000px;
	}
	.table1,tr,td{
		border:1px solid #aaa; 
		border-collapse: collapse;
		color:#aaa;
	}
	.table1 a{
		color:#aaa;
	}
	.img1{
		width:80px;
		height:100px;
	}
</style>
</head>
<body>
	<jsp:include page="top.jsp"/>
	<%/*
		DataBean dataBean = (DataBean)session.getAttribute("session");
		if(dataBean == null){
			response.sendRedirect("login");
		}*/
	%>
	<div class="title" style="text-align:center;">show목록보기</div>
	<div style="margin:0 auto; width:1000px;">
		<p>상품 총 개수(&nbsp; ${cnt } &nbsp;)</p>
		<table class="table1">
			<tr>
				<td>번호</td>
				<td>이미지</td>
				<td>상품정보</td>
				<td>가격</td>
				<td>수량</td>
				<td>상품 삭제</td>
			</tr>
			<%int i=0; %>
			<c:forEach var="product_list" items="${list }">
			<%-- <c:out value="${product_list.i_member}"></c:out> --%>
				<c:if test="${product_list.i_member == session.i_member}">
					<tr>
						<td><% out.print(++i); %></td>
						<td><img src="images/${product_list.pic }" class="img1" alt="이미지가 없음"/></td>
						<td>
							${product_list.name }<br/>
							${product_list.colorSize }<br/>
							<form action="cart_colorSize" method="get">
								<input type="hidden" name="i_pi" value="${product_list.i_pi}">
								<select name="colorSize" style="height:23px;">
										<option >[필수]옵션선택</option>
										<option disabled="disabled">------------------------</option>
										<option disabled="disabled">색상-사이즈</option>
										<c:choose> 
											<c:when test="${product_list.category eq 'shoes'}">
												<option value="블랙-250~260">블랙-250~260</option>
												<option value="블랙-260~270">블랙-260~270</option>
												<option value="블랙-270~280">블랙-270~280</option>
												<option value="화이트-250~260">화이트-250~260</option>
												<option value="화이트-260~270">화이트-260~270</option>
												<option value="화이트-270~280">화이트-270~280</option>
												<option value="브라운-250~260">브라운-250~260</option>
												<option value="브라운-260~270">브라운-260~270</option>
												<option value="브라운-270~280">브라운-270~280</option>
											</c:when>
											<c:when test="${product_list.category == 'pants' || product_list.category == 'sale85'}">
												<option value="블랙-28">블랙-28</option>
												<option value="블랙-29">블랙-29</option>
												<option value="블랙-30">블랙-30</option>
												<option value="화이트-28">화이트-28</option>
												<option value="화이트-29">화이트-29</option>
												<option value="화이트-30">화이트-30</option>
												<option value="브라운-28">브라운-28</option>
												<option value="브라운-29">브라운-29</option>
												<option value="브라운-30">브라운-30</option>
											</c:when>
											<c:when test="${product_list.category == 'item'}">
												<option value="블랙">블랙</option>
												<option value="화이트">화이트</option>
												<option value="브라운">브라운</option>
												<option value="블루">블루</option>
												<option value="오렌지">오렌지</option>
											</c:when>
											<c:otherwise>
												<option value="블랙-95">블랙-95</option>
												<option value="블랙-100">블랙-100</option>
												<option value="블랙-105">블랙-105</option>
												<option value="화이트-95">화이트-95</option>
												<option value="화이트-100">화이트-100</option>
												<option value="화이트-105">화이트-105</option>
												<option value="브라운-95">브라운-95</option>
												<option value="브라운-100">브라운-100</option>
												<option value="브라운-105">브라운-105</option>
											</c:otherwise>
										</c:choose>
									</select>
								</form>
						</td>
						<td>${product_list.price }원</td>
						<td>
							<form action="cart_qty" method="get">
								<input type="hidden" name="i_pi" value="${product_list.i_pi }">
								<input type="number" name="qty" value="${product_list.qty }" min="1" max="99" style="width:45px; height:25px;">
								<input type="submit" value="변경">
							</form>
						</td>
						<td>
							<a href="cart_order">주문하기</a>
							<a href="cart_delete?i_pi=${product_list.i_pi}">상품 삭제</a>
						</td>
					</tr>
				</c:if>
			</c:forEach>
		</table>
		<div>
			<a href="cart_total_delete" onclick="return total_delete();">장바구니 비우기</a>
			<a href="">전체 주문하기</a>
		</div>
	</div>
	<jsp:include page="bottom.jsp"/>
</body>
</html>
<script>
	function product_delete(){
		if(confirm("정말 삭제하시겠습니까?")){
			return true;
		}else{
			return false;
		}
	}
	function total_delete(){
		if(confirm("장바구니를 비우시겠습니까?")){
			return true;
		}else{
			return false;
		}
	}
	
</script>
-->