<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.DataBean" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main page</title>
    <script src="http://kit.fontawesome.com/9eb162ac0d.js" crossorigin="anonymous"></script>
    <script src="js/main.js"></script>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
	<%
		//메시지 
		String msg=(String)request.getAttribute("msg");
		if(msg!=null){
			%><script>alert('<%=msg%>')</script><%
		}
		DataBean dataBean = (DataBean)session.getAttribute("session");
		
	%>
    <!-- 메인화면 상단 광고 바 , 자동 슬라이드로 소식 넘어가게 기능 예정 -->
    <div class="swiper-container">
        <div class="nav_bar">
            <p>타코야킴의 다양한 9월 이벤트 진행</p>
        </div>
    </div>
    <!-- 메인 navbar left-->
    <div class="main_nav">
        <div class="main_nav_inner">
            <div class="main_nav_left">
                <div class="logo">
                    <a href="index.html"><img src="images/logo.png" alt="logo" class="logo_1"></a>
                </div>
                <div class="link">
                    <a href="#">Snoopy x Asiana Air</a>
                    <a href="#">SS SALE 25%</a>
                </div>
            </div>

                <!-- 메인 navbar right -->
            <div class="main_nav_right">
                <div class="main_sign">
                	<%if(dataBean==null){ %>
                		<a href="login" class="log">Login</a>
                	<%}else{ %>
                		<a href="logout" class="log">Logout</a>
                	<%} %>
                    <a href="join" class="join">Join</a>
                </div>
                <div class="main_member">
                    <a href="mypage" class="my">Mypage</a>
                    <a href="cart" class="cart">Cart</a>
                    <a href="order" class="order">order</a>
                </div>
            </div>  
        </div>
    </div>

    <!-- 메인 슬라이드 -->
    <div id="wrap">
        <div id="container">
            <div id="contents">
                <div class="box0">
                    <img src="images/snoopy_banner.jpg" alt="s1">
                </div>

                <div class="box0">
                    <img src="images/ston.jpg" alt="s2">
                </div>

                <div class="box0">
                    <img src="images/ston_2.jpg" alt="s3">
                </div>
            </div>
        </div>
    </div>

</body>
</html>