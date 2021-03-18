<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>Gimedini</title>
	
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>

<style>

 body { margin:0; padding:0; font-family:'맑은 고딕', verdana; }
 a { color:#05f; text-decoration:none; }
 a:hover { text-decoration:underline; }
 
 h1, h2, h3, h4, h5, h6 { margin:0; padding:0; }
 ul, lo, li { margin:0; padding:0; list-style:none; }

 /* ---------- */
 
 div#root { width:900px; margin:0 auto; }
 header#header { }
 nav#nav { }
 section#container { }
  section#content { float:right; width:700px; }
  aside#aside { float:left; width:180px; }
  section#container::after { content:""; display:block; clear:both; } 
 footer#footer { background:#eee; padding:20px; }
 
 /* ---------- */
 
 header#header div#header_box { text-align:center; padding:30px 0; }
 header#header div#header_box h1 { font-size:50px; }
 header#header div#header_box h1 a { color:#000; }
 
 nav#nav div#nav_box { font-size:14px; padding:10px; text-align:right; }
 nav#nav div#nav_box li { display:inline-block; margin:0 10px; }
 nav#nav div#nav_box li a { color:#333; }
 
 section#container { }
 
 aside#aside h3 { font-size:22px; margin-bottom:20px; text-align:center; }
 aside#aside li { font-size:16px; text-align:center; }
 aside#aside li a { color:#000; display:block; padding:10px 0; }
 aside#aside li a:hover { text-decoration:none; background:#eee; }
 
 aside#aside li { position:relative; }
 aside#aside li:hover { background:#eee; }   
 aside#aside li > ul.low { display:none; position:absolute; top:0; left:180px;  }
 aside#aside li:hover > ul.low { display:block; }
 aside#aside li:hover > ul.low li a { background:#eee; border:1px solid #eee; }
 aside#aside li:hover > ul.low li a:hover { background:#fff;}
 aside#aside li > ul.low li { width:180px; }
 
 footer#footer { margin-top:100px; border-radius:50px 50px 0 0; }
 footer#footer div#footer_box { padding:0 20px; }
 
</style>

<style>
/*  section#content ul li { display:inline-block; margin:10px; }
 section#content div.goodsThumb img { width:200px; height:200px; }
 section#content div.goodsName { padding:10px 0; text-align:center; }
 section#content div.goodsName a { color:#000; } */
 section#content ul li { border:5px solid #eee; padding:10px 20px; margin-bottom:20px; }
 section#content .orderList span { font-size:20px; font-weight:bold; display:inline-block; width:90px; margin-right:10px; }
</style>
</head>
<body>




<div id="root">
	<header id="header">
		<div id="header_box">
			<%@ include file="../include/header.jsp" %>
		</div>
	</header>

	<nav id="nav">
		<div id="nav_box">
			<%@ include file="../include/nav.jsp" %>
		</div>
	</nav>

	<section id="container">
		<div id="container_box">

<section id="content">
	<form role="form" method="post" autocomplete="off">

		<div class="input_area">
			<label for="userName">닉네임</label>
			<input type="text" id="userName" name="userName" value="${member.userName }" disabled="disabled" />						
		</div>
		
		<div class="input_area">
			<label for="userPass">새로운 패스워드</label>
			<input type="password" id="userPass" name="userPass" required="required" />						
		</div>

		<div class="input_area">
			<label for="userPhon">연락처</label>
			<input type="text" id="userPhon" name="userPhon" placeholder="연락처를 입력해주세요" required="required" />						
		</div>

		<button type="submit">회원정보 수정</button><button onclick="location.href='withdrawal'">회원탈퇴</button>
		

	</form>			
</section>

		</div>
	</section>

	<footer id="footer">
		<div id="footer_box">
			<%@ include file="../include/footer.jsp" %>
		</div>		
	</footer>

</div>


</body>
</html>