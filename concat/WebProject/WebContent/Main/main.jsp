<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<meta name="viewport"
	content="width=device-width, user-scalable=yes, target-densitydpi=device-dpi">
<title>3H Board</title>
<meta property="og:title" content="사람을 구체적으로 도와주는 책, 이지스퍼블리싱(주)" />
<meta property="og:url" content="http://www.easyspub.co.kr/Main" />
<meta property="og:image"
	content="http://www.easyspub.co.kr${pageContext.request.contextPath}/images/logo_map.jpg" />
<meta property="og:description" content="사람을 구체적으로 도와주는 책, 이지스퍼블리싱(주)" />

<!-- 아래는 이지스퍼블리싱에서 가져온 css,js -->
<link rel="canonical" href="http://www.easyspub.co.kr/Main" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/layout_common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/layout_main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/jquery-ui-1.11.2.css" />


<script type="text/javascript"
	src="http://gc.kis.v2.scr.kaspersky-labs.com/9E773850-0C32-D74E-A93A-09E4CCA19382/main.js"
	charset="UTF-8"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/easy_js/jquery-1.11.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/easy_js/jquery-ui-1.11.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/easy_js/jquery.cookie-1.4.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/easy_js/common_func.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/easy_js/jquery.navgoco-0.2.1.js"></script>
<!--[if lt IE 9]>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ie8.css" />
    <script src="${pageContext.request.contextPath}/easy_js/html5.js"></script>
    <script src="${pageContext.request.contextPath}/easy_js/respond.min.js"></script>
<![endif]-->

<!-- 모바일 : 메인 페이지 슬라이드 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/easy_js/jquery.swiper-2.1.min.js"></script>
<style>
<
style>input[type="password"] {
	height: 24px;
	line-height: 24px;
	padding: 0 10px
}

input[type="checkbox"] {
	vertical-align: middle
}

textarea {
	border: 1px #dfdfdf solid;
}

/*라디오버튼, 체크박스 공통*/
input[type="checkbox"] {
	display: none;
}

input[type="checkbox"]+label span {
	display: inline-block;
	width: 14px;
	height: 14px;
	margin: -2px 5px 0 0;
	vertical-align: middle;
	background:
		url(${pageContext.request.contextPath}/images/check_check_sheet.png)
		left top no-repeat;
	cursor: pointer;
}

input[type="checkbox"]:checked+label span {
	background:
		url(${pageContext.request.contextPath}/images/check_check_sheet.png)
		-14px top no-repeat;
}

input[type="checkbox"]::checked+label span {
	background:
		url(${pageContext.request.contextPath}/images/check_check_sheet.png)
		-14px top no-repeat;
}

input[type="radio"] {
	display: none;
}

input[type="radio"]+label>span {
	display: inline-block;
	width: 14px;
	height: 14px;
	margin: -2px 5px 0 0;
	vertical-align: middle;
	background:
		url(${pageContext.request.contextPath}/images/check_radio_sheet.png)
		left top no-repeat;
	cursor: pointer;
	padding: 0;
}

a {
	text-decoration: none;
	cursor: pointer;
	font-weight: bold;
	color: #222;
}

input[type="radio"]:checked+label span {
	background:
		url(${pageContext.request.contextPath}/images/check_radio_sheet.png)
		-14px top no-repeat;
}

input[type="radio"]::checked+label span {
	background:
		url(${pageContext.request.contextPath}/images/check_radio_sheet.png)
		-14px top no-repeat;
}

.login_box {
	border: 1px solid #72ebc8;
	width: 230px;
	height: 230px;
	background-color: #fff;
	position: absolute;
	top: 200px;
	left: 30px;
	padding: 20px;
	box-sizing: content-box;
	float: left;
	padding: 20px;
}

.login_box .inputlogin {
	width: 100%;
	height: 45px;
	line-height: 45px;
	border-bottom: solid 1px #ccc;
	background: #fff;
	font-size: 14px;
	color: #ccc;
	text-indent: 10px;
}

.login_box input[type="password"] {
	padding: 0
}

.login_box .autologin {
	font-size: 12px;
	color: #222;
	display: inline-block;
	margin-top: 10px;
	margin-right: 5px;
	letter-spacing: -1px
}

.login_box .idpw_srch {
	font-size: 12px;
	color: #222;
	padding-left: 5px;
	margin-top: 10px;
	font-weight: normal;
	letter-spacing: -1px
}

.login_box .btn_login {
	width: 100%;
	background-color: #72ebc8;
	height: 40px;
	color: #222;
	font-size: 13px;
	font-weight: bold;
	margin: 10px 0
}

.login_box .btn_login:after {
	display: block;
	content: '';
	clear: both;
}

.login_box .nonmember {
	font-size: 12px;
	color: #222;
	font-weight: bold;
	background:
		url(${pageContext.request.contextPath}/images/ic_nomember.jpg) left
		center no-repeat;
	display: inline-block;
	line-height: 23px;
	padding: 0 10px 0 25px;
	margin-right: 8px;
	border-right: #dfdfdf 1px solid;
	letter-spacing: -0.02em
}

.login_box .foreigner {
	font-size: 12px;
	color: #222;
	font-weight: bold;
	background:
		url(${pageContext.request.contextPath}/images/ic_foreigner.jpg) left
		center no-repeat;
	line-height: 23px;
	padding-left: 25px;
	letter-spacing: -0.02em
}

.login_box .btn_join {
	display: none
}

.login_box p {
	display: none
}

.login_box .close {
	display: none
}

strong, dl, dt, dd, ol, ul, li, fieldset {
	margin: 0;
	padding: 0;
	font-size: 100%;
}

fieldset {
	border: none
}

img {
	border: 0;
	vertical-align: middle;
}
</style>

</style>
</head>

<body>
	<div class="wrap" id="pub">
		<!-- Gnb 영역 : s -->
		<div class="gnb_wrap">
			<div id="gnb">
				<div class="container">
					<h1>
						<a href="/Main/main"><img
							src="${pageContext.request.contextPath}/images/logo_pub.png"
							alt="이지스퍼블리싱"></a>
					</h1>
					<!-- web 화면에서 menu :s -->
					<div class="menu_area">
						<a href="#" class="btn_close_menu ver_mobile"><img
							src="${pageContext.request.contextPath}/images/btn_close_gnb.png"
							alt="메뉴 닫기" style="width: 30px;"></a>
						<ul class="depth01">
							<li class="current"><a href="#" id="pub001A02이지스퍼블리싱"
								class="btnMainLink"><img
									src="${pageContext.request.contextPath}/images/logo_pub.png"
									alt="이지스 퍼블리싱"></a>
								<div class="depth02_area">
									<ul class="depth02">
										<li><a href="#">회사소개</a>
											<div>
												<ul class="depth03">
													<li><a href="/11_Menu/CompanyInfo/PUB">3HBoard 소개</a></li>
													<li><a href="/11_Menu/EngCompanyInfo/PUB">About
															EasysPublishing</a></li>
													<li><a href="/11_Menu/BookDown/PUB">도서 목록 다운로드</a></li>
													<li><a href="/12_Menu/BoardList/C100/PUB">뉴스와 홍보
															자료</a></li>
													<li><a
														href="${pageContext.request.contextPath}/BoardList/Board1.html">공지사항/이벤트</a></li>
													<li><a href="/11_Menu/Location/PUB">찾아오시는 길</a></li>
												</ul>
											</div></li>
										<li><a href="#">공지사항</a>
											<div>
												<ul class="depth03">
													<li><a href="/20_Menu/BookList/PUB">전체 보기</a></li>
													<li><a href="#">분야별 보기</a>
														<ul class="depth04">
															<li><a href="/20_Menu/BookList/A001/PUB">IT전문서</a></li>
															<li><a href="/20_Menu/BookList/A002/PUB">업무 능력,
																	기타</a></li>
															<li><a href="/20_Menu/BookList/A003/PUB">사진 예술</a></li>
															<li><a href="/20_Menu/BookList/A004/PUB">데이터 과학</a></li>
														</ul></li>
													<li><a href="#">시리즈 보기</a>
														<ul class="depth04">
															<li><a href="/20_Menu/BookList/B001/PUB">Do it!
																	시리즈</a></li>
															<li><a href="/20_Menu/BookList/B002/PUB">된다! 시리즈</a></li>
															<li><a href="/20_Menu/BookList/B007/PUB">DCM 프로
																	사진가</a></li>
															<li><a href="/20_Menu/BookList/B010/PUB">데이터 과학
																	시리즈</a></li>
														</ul></li>
													<li><a href="/20_Menu/BookList/C000/PUB">전자책 보기</a></li>
													<li><a href="#" id="edu002A03이지스에듀" class="btBookLink">이지스
															에듀 도서 보기</a></li>
												</ul>
											</div></li>
										<li><a href="/30_Menu/DataList/PUB">자료실</a></li>

										<!-- <li><a href="${pageContext.request.contextPath}/BoardList/Citizen.jsp">불편해요</a></li>
										 -->
										<li><a
											href="${pageContext.request.contextPath}/cont?command=citizen">불편해요9999</a></li>



										<li class="last"><a href="/50_Menu/VideoList/PUB">동영상
												강의</a></li>
									</ul>
								</div></li>
							<li><a href="#" id="edu002A03이지스에듀" class="btnMainLink"><img
									src="${pageContext.request.contextPath}/images/logo_pub.png"
									alt="이지스 에듀"></a>
								<div class="depth02_area none">
									<ul class="depth02">
										<li><a href="#">회사소개</a>
											<div>
												<ul class="depth03">
													<li><a href="/11_Menu/CompanyInfo/PUB">이지스퍼블리싱(주)
															소개</a></li>
													<li><a href="/11_Menu/EngCompanyInfo/PUB">About
															EasysPublishing</a></li>
													<li><a href="/11_Menu/BrandInfo2/PUB">이지스에듀 소개</a></li>
													<li><a href="/11_Menu/BookDown/PUB">도서 목록 다운로드</a></li>
													<li><a href="/12_Menu/BoardList/C100/PUB">뉴스와 홍보
															자료</a></li>
													<li><a href="/12_Menu/BoardList/C200/PUB">공지사항/이벤트</a></li>
													<li><a href="/11_Menu/Location/PUB">찾아오시는 길</a></li>
												</ul>
											</div></li>
										<li><a href="#">도서</a>
											<div>
												<ul class="depth03">
													<li><a href="/20_Menu/BookList/PUB">전체 보기</a></li>
													<li><a href="#">분야별 보기</a>
														<ul class="depth04">
															<li><a href="/20_Menu/BookList/A001/PUB">초등 수학</a></li>
															<li><a href="/20_Menu/BookList/A002/PUB">초등 영어</a></li>
															<li><a href="/20_Menu/BookList/A007/PUB">초등 한자</a></li>
															<li><a href="/20_Menu/BookList/A003/PUB">중등 수학</a></li>
															<li><a href="/20_Menu/BookList/A008/PUB">중등 영어</a></li>
															<li><a href="/20_Menu/BookList/A004/PUB">자녀교육,
																	기타</a></li>
														</ul></li>
													<li><a href="#">시리즈 보기</a>
														<ul class="depth04">
															<li><a href="/20_Menu/BookList/B003/PUB">바빠 연산법</a></li>
															<li><a href="/20_Menu/BookList/B011/PUB">바빠 중학
																	수학</a></li>
															<li><a href="/20_Menu/BookList/B004/PUB">바빠 영어</a></li>
															<li><a href="/20_Menu/BookList/B012/PUB">바빠 급수
																	한자</a></li>
															<li><a href="/20_Menu/BookList/B005/PUB">우리집은
																	놀이터</a></li>
															<li><a href="/20_Menu/BookList/B009/PUB">에듀_기타</a></li>
															<li><a href="/20_Menu/BookList/B013/PUB">나 혼자
																	푼다!</a></li>
														</ul></li>
													<li><a href="/20_Menu/BookList/C000/PUB">전자책 보기</a></li>
													<li><a href="#" id="pub001A02이지스퍼블리싱"
														class="btBookLink">이지스퍼블리싱 도서 보기</a></li>
												</ul>
											</div></li>
										<li><a href="/30_Menu/DataList/PUB">자료실</a></li>


										<li class="last"><a
											href="${pageContext.request.contextPath}/BoardList/citizenOpinionList.jsp">불편해요</a></li>


										<li class="last short_cut_cafe"><a
											href="http://blog.naver.com/easyspub" target="_blank">바빠
												아지트</a></li>
										<li class="last short_cut_cafe"><a
											href="http://cafe.naver.com/easyispub" target="_blank">네이버
												카페</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
					<!-- web 화면에서 menu : e -->

					<!-- web 화면에서 로그인 : s -->
					<div class="form_area">
						<p class="ver_web">
							<c:if test="${empty sessionScope.sid}">
								<input type="button" name="WebLogin" value="로그인" title="로그인"
									class="btnTopLogin" />
							</c:if>
							<c:if test="${not empty sessionScope.sid}">
								<span
									style="line-height: 1em; margin: 0 8px; color: #cdcdcd; background-color: transparent; font-weight: 500;">${sid}님
									환영합니다.</span>
								<a href="${pageContext.request.contextPath}/cont?command=logout">
									<span
									style="line-height: 1em; margin: 0 8px; color: #cdcdcd; background-color: transparent; font-weight: 500;">로그아웃</span>
								</a>
							</c:if>
							| <input type="button" name="WebJoin" value="회원가입" title="회원가입"
								class="btnTopJoin" />
						</p>
						<p class="search_area ver_web">
							<input type="text" id="TotalKeyword1" name="TotalKeyword1"
								class="inputbox_none btnTotalKeyword" value="킥보드, 지역 등 검색"
								onfocus="this.value='';"
								onblur="if(this.value=='') this.value='킥보드, 지역 등 검색';" /> <a
								href="#TOTALSEARCH" class="btnTotalSearch1">도서검색</a>
						</p>
					</div>

					<p class="gnb_menu ver_mobile">
						<a href="#Menu" class="btn_open_menu"><img
							src="${pageContext.request.contextPath}/images/mobile/ico_menu.png"
							alt="메뉴열기"></a> <a href="#Search" class="btn_search"><img
							src="${pageContext.request.contextPath}/images/mobile/ico_search.png"
							alt="도서검색"></a>
					</p>
					<!-- web 화면에서 로그인 : e -->
				</div>
			</div>
		</div>

		<!-- 컨텐츠 영역 : s -->
		<div class="gnb_wrap_search none">
			<div class="search_area ver_mobile">
				<div>
					<input type="text" id="TotalKeyword2" name="TotalKeyword2"
						class="inputbox_none btnTotalKeyword"
						title="출판사 &quot;이지스퍼블리싱&quot;의 책들만 검색이 가능합니다."
						value="킥보드, 지역 등 검색" onfocus="this.value='';"
						onblur="if(this.value=='') this.value='킥보드, 지역 등 검색';" />
				</div>
				<a href="#TOTALSEARCH" class="btnTotalSearch2 btn btnBlack btnS">검색</a>
			</div>
		</div>
		<!-- 컨텐츠 영역 : e -->

		<form method="post" id="frmTotalSearch" name="frmTotalSearch"
			action="/71_Menu/SearchList/PUB" onsubmit="return true;">
			<input type="hidden" id="TotalPage" name="TotalPage" value="1" /> <input
				type="hidden" id="TotalPageType" name="TotalPageType" value="" /> <input
				type="hidden" id="TotalKeyword" name="TotalKeyword" value="" />
		</form>


		<script type="text/javascript">
			$(document)
					.ready(
							function() {
								$(".depth02_area>ul").navgoco({
									accordion : true
								});

								$('.btnTopLogin').click(function(e) {
									window.location = "/81_Menu/Login/PUB";
								});
								$('.btnTopJoin').click(function(e) {
									window.location = "/82_Menu/JoinStep1/PUB";
								});

								$('.btn_search').click(function(e) {
									$('.gnb_wrap_search').toggle();
									$('.gnb_wrap_search').removeClass('none');
								});

								$('.btnTotalSearch1')
										.click(
												function(e) {
													if ($('#TotalKeyword1')
															.val() == ""
															|| $(
																	'#TotalKeyword1')
																	.val() == "도서명, 저자 등 검색") {
														alert("검색어를 입력하세요.");
														$('#TotalKeyword1')
																.focus();
														return;
													} else {
														if ($('#TotalKeyword1')
																.val() == "도서명, 저자 등 검색")
															$('#TotalKeyword1')
																	.val("");

														$('#TotalPage').val(1);
														$('#TotalPageType')
																.val("");
														$('#TotalKeyword')
																.val(
																		$(
																				'#TotalKeyword1')
																				.val());

														var keyWord = document
																.getElementById('TotalKeyword1').value;

														var url = '${pageContext.request.contextPath}/cont?command=search&keyWord='
																+ encodeURIComponent(keyWord);

														$('#frmTotalSearch')
																.attr('action',
																		url)
																.submit();
													}
												});
								$('.btnTotalSearch2')
										.click(
												function(e) {
													if ($('#TotalKeyword2')
															.val() == ""
															|| $(
																	'#TotalKeyword2')
																	.val() == "도서명, 저자 등 검색") {
														alert("검색어를 입력하세요.");
														$('#TotalKeyword2')
																.focus();
														return;
													} else {
														if ($('#TotalKeyword2')
																.val() == "도서명, 저자 등 검색")
															$('#TotalKeyword2')
																	.val("");

														$('#TotalPage').val(1);
														$('#TotalPageType')
																.val("");
														$('#TotalKeyword')
																.val(
																		$(
																				'#TotalKeyword2')
																				.val());
														$('#frmTotalSearch')
																.attr('action',
																		'/71_Menu/SearchList/PUB')
																.submit();
													}
												});
								$('.btnTotalKeyword')
										.keyup(
												function(e) {
													if (e.keyCode == 13) {
														if ($(this).val() == "") {
															alert("검색어를 입력하세요.");
															$(this).focus();
															return false;
														} else {
															if ($(this).val() == "도서명, 저자 등 검색")
																$(this).val("");

															$('#TotalPage')
																	.val(1);
															$('#TotalPageType')
																	.val("");
															$('#TotalKeyword')
																	.val(
																			$(
																					this)
																					.val());
															var keyWord = document
																	.getElementById('TotalKeyword1').value;

															var url = '${pageContext.request.contextPath}/cont?command=search&keyWord='
																	+ encodeURIComponent(keyWord);

															$('#frmTotalSearch')
																	.attr(
																			'action',
																			url)
																	.submit();
														}
													}
												});

								$('.btnMainLink').click(function(e) {
									var sBrandCode = $(this).attr('id');
									var sBrandUrl = sBrandCode.substring(0, 3);
									$.cookie('BrandCode', sBrandCode, {
										expires : 365,
										path : '/'
									});

									window.location = "/Main/" + sBrandUrl;
								});
								$('.btBookLink')
										.click(
												function(e) {
													var sBrandCode = $(this)
															.attr('id');
													var sBrandUrl = sBrandCode
															.substring(0, 3);
													$.cookie('BrandCode',
															sBrandCode, {
																expires : 365,
																path : '/'
															});

													window.location = "/20_Menu/BookList/"
															+ sBrandUrl;
												});
							});
		</script>
		<!-- Gnb 영역 : e -->

		<!-- 컨텐츠 영역 : s -->

		<div class="contents_wrap" id="main_wrap">
			<div class="login_box">
				<form name="loginForm" action="/j_spring_security_check"
					method="POST">
					<fieldset>
						<legend>로그인</legend>
						<a href="" class="close"></a>
						<p>로그인 후 자전거 대여하실 수 있습니다.</p>
						<div>
							<input class="inputlogin" onkeypress="" name="j_username"
								id="j_username" value="" size="18" maxlength="" tabindex=""
								placeholder="아이디">
						</div>
						<div>
							<input class="inputlogin" onkeypress="" name="j_password"
								id="j_password" value="" type="password" size="" maxlength=""
								tabindex="" placeholder="비밀번호">
						</div>
						<div class="autologin">
							<input type="checkbox" name="loginchk" id="logchk" title="자동로그인"
								value="true"><label for="logchk"><span></span>자동로그인</label>
						</div>
						<a href="/memberIdFind.do" class="idpw_srch">아이디</a>/<a
							href="memberPwFind.do" class="idpw_srch">비밀번호찾기</a>
						<div class="loginbtn">
							<input class="btn_login" type="submit" title="로그인" alt="로그인"
								tabindex="" value="로그인" id="loginBtn"> <input
								class="btn_join" type="submit" title="회원가입" alt="회원가입"
								tabindex="" value="회원가입" id="joinBtn">
						</div>
						<a href="https://www.bikeseoul.com:447/main.do?lang=ko"
							class="nonmember">비회원<img src="images/arrow_login.jpg" alt=""></a>
						<a href="https://www.bikeseoul.com:447/main.do?lang=en"
							class="foreigner">foreigner<img src="images/arrow_login.jpg"
							alt=""></a> <input type="hidden" id="ostype" name="appOsType"
							value="web"> <input type="hidden" id="usrDeviceId"
							name="usrDeviceId">
					</fieldset>
				</form>
			</div>
			<!-- slider book list : s -->
			<div id="book_list_area">

				<div class="main_book_list">
					<a class="arrow_left" href="#left"><img
						src="${pageContext.request.contextPath}/images/ico_arrow_slider_left.png"
						alt="이전 책"></a> <a class="arrow_right" href="#right"><img
						src="${pageContext.request.contextPath}/images/ico_arrow_slider_right.png"
						alt="다음 책"></a> <span class="bg bg_left"></span> <span
						class="bg bg_right"></span>

					<ul class="main_book_list selbook">
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V186"><img
									src="/upload/BOOK/186/20180126134931106796B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V186"> <em>된다!
									네이버 블로그 & 포스트</em> <span class="book_cmnt"> 만들기부터 검색 상위 노출까지!<br />
									오늘 시작하는 블로거를 위한 네이버 마케팅 필수 입문서!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V175"><img
									src="/upload/BOOK/175/20171206142712545571B.png" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V175"> <em>Do
									it! 스위프트로 아이폰 앱 만들기 입문 - 개정 2판</em> <span class="book_cmnt">
									문법 장벽을 허물었다! <br /> 처음부터 예제로 배우니 더 빠르다!<br /> 어떤 앱에서든 써먹는 빈출
									기능부터 배우자!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V254"><img
									src="/upload/BOOK/254/20180418134236360048B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V254"> <em>Do
									it! 오토캐드 2019</em> <span class="book_cmnt"> 캐드 고수의 명령어를 모르면
									삽질의 늪에 빠진다!<br /> 건축, 인테리어, 토목, 기계, 전기, 가구 실무 도면을 총망라한 입문서!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V189"><img
									src="/upload/BOOK/189/20180131225001166137B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V189"> <em>Do
									it! 안드로이드 앱 프로그래밍 - 개정 5판</em> <span class="book_cmnt"> 7년 연속
									안드로이드 분야 1위! 전면 개정 5판(안드로이드 8.0 오레오 버전 · 안드로이드 스튜디오 3.0 반영판)이
									나왔다!</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V127"><img
									src="/upload/BOOK/127/20170224173013094710B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V127"> <em>Do
									it! Node.js 프로그래밍 &lt;전면 개정판&gt;</em> <span class="book_cmnt">
									웹 서버, 채팅 서버, 모바일 서버, 위치 기반 서비스 서버, JSON-RPC 서버까지! 지금 당장 서버가
									필요하다면? 실제 서버로 구동 가능한 코드로 배워라!</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V178"><img
									src="/upload/BOOK/178/20180427094641828211B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V178"> <em>Do
									it! 자료구조와 함께 배우는 알고리즘 입문 - C 언어 편</em> <span class="book_cmnt">
									IT 기업, 모든 시험에서 기초가 되는 자료구조와 알고리즘의 개념을 한 권에 모두 담았다!<br /> 국내 IT
									기업의 면접, 코딩 시험에서 중요하게 생각하는 역량 가운데 하나는 자료구조와 알고리즘이다. 자료구조와 알고리즘은
									머리로 개념만 이해한다고 바로 실전에 사용할 수는 없다. 하나씩 자신의 손으로 코딩하고 결과를 확인하며 컴퓨터가
									어떻게 데이터를 저장하고 문제를 해결하는지 직접 느껴야 실전에서 사용할 수 있다. ≪Do it! 자료구조와 함께
									배우는 알고리즘 입문 - C 언어 편≫은 263개의 도해와 함께 저자의 친절한 설명으로 개념을 쉽게 이해할 수
									있으며 이해한 개념은 바로바로 114개의 실습 예제와 105개의 연습문제로 직접 코딩할 수 있는 책이다.
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V257"><img
									src="/upload/BOOK/257/20180427111930120134B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V257"> <em>Do
									it! 자료구조와 함께 배우는 알고리즘 입문 - 자바 편</em> <span class="book_cmnt">
									IT 기업, 모든 시험에서 기초가 되는 자료구조와 알고리즘의 개념을 한 권에 모두 담았다! 국내 IT 기업의
									면접, 코딩 시험에서 중요하게 생각하는 역량 가운데 하나는 자료구조와 알고리즘이다. 자료구조와 알고리즘은 머리로
									개념만 이해한다고 바로 실전에 사용할 수는 없다. 하나씩 자신의 손으로 코딩하고 결과를 확인하며 컴퓨터가 어떻게
									데이터를 저장하고 문제를 해결하는지 직접 느껴야 실전에서 사용할 수 있다. ≪Do it! 자료구조와 함께 배우는
									알고리즘 입문 - 자바 편≫은 220개의 도해와 함께 저자의 친절한 설명으로 개념을 쉽게 이해할 수 있으며 이해한
									개념은 바로바로 88개의 실습 예제와 93개의 연습 문제로 직접 코딩할 수 있는 책이다.</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V267"><img
									src="/upload/BOOK/267/20180720165249263763B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V267"> <em>Do
									it! 자바 프로그래밍 입문</em> <span class="book_cmnt"> 개발 실무 10년, 강의
									10년! 명강사의 기초 튼튼 코딩 밥상! <br /> 왕초보 학생들과 부대끼며 깨달은 눈높이로 자바 학습 노하우
									대공개!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V259"><img
									src="/upload/BOOK/259/20180521102342197108B.png" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V259"> <em>데이터
									과학, 무엇을 하는가?</em> <span class="book_cmnt"> * 통신, 금융, 보안, 유통,
									제조, 공공기관 등 미국과 한국의 10개 조직 적용 사례 공개! * <br /> 직접 겪어보지 않으면 모른다.
									데이터 과학이란 무엇이며 데이터 과학자가 무슨 일을 하는지. 미국 최대 데이터 회사를 거쳐, 국내 최대 데이터
									회사의 센터장을 맡고 있는 저자는 미국 기업과 한국 기업에서 경험한 데이터 과학 실무 사례를 공개했다.
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V138"><img
									src="/upload/BOOK/138/20170706092814347377B.png" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V138"> <em>Do
									it! 쉽게 배우는 R 데이터 분석</em> <span class="book_cmnt"> 통계, 프로그래밍을
									1도 몰라도 데이터를 혼자서 다룰 수 있다! <br /> 데이터 분석 프로젝트 전 과정 수록!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V98"><img
									src="/upload/BOOK/98/20160222154238866895B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V98"> <em>Do
									it! 점프 투 파이썬</em> <span class="book_cmnt"> 1일 평균 8천 뷰, 누적 방문자
									수 50만 명! <br /> 10년간 온라인에서 검증된 ‘점프 투 파이썬’으로 프로그래밍을 시작하자!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V268"><img
									src="/upload/BOOK/267/20180720165249263763B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V268"> <em>Do
									it! 자바 프로그래밍 입문</em> <span class="book_cmnt"> 개발 실무 10년, 강의
									10년! 명강사의 기초 튼튼 코딩 밥상! <br /> 왕초보 학생들과 부대끼며 깨달은 눈높이로 자바 학습 노하우
									대공개!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V217"><img
									src="/upload/BOOK/189/20180131225001166137B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V217"> <em>Do
									it! 안드로이드 앱 프로그래밍 - 개정 5판</em> <span class="book_cmnt"> 7년 연속
									안드로이드 분야 1위! 전면 개정 5판(안드로이드 8.0 오레오 버전 · 안드로이드 스튜디오 3.0 반영판)이
									나왔다!</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V263"><img
									src="${pageContext.request.contextPath}/images/quick1.jpg"
									alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V263"> <em>나노휠
									전동킥보드</em> <span class="book_cmnt"> 지메일 자동 답변부터 SNS 일괄 업로드까지!<br />
									오늘 당장 업무가 빨라지는 온라인 마케팅 입문서
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V198"><img
									src="/upload/BOOK/198/20180221122813853308B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V198"> <em>된다!
									김메주의 유튜브 영상 만들기</em> <span class="book_cmnt"> 구독자 10만이 되기까지
									1년의 시간을 순서대로 담았다!<br /> 예능 자막부터 비밀스러운 광고 수익까지 가장 빨리 유튜버가 되는
									9가지 지름길을 소개한다!<br />
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V137"><img
									src="/upload/BOOK/137/20170623121126715342B.png" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V137"> <em>된다!
									일러스트레이터 CC</em> <span class="book_cmnt"> 뉴욕, 삼성전자에서도 통하는 디자인
									감각으로 실무 예제를 배우니까!<br /> <br /> ▷ 일주일이면 ‘금손’ 된다!<br /> <br />
									디자인 감각은 타고 나는 것일까요? 바로 여기, 디자인 빈부격차를 뛰어 넘게 도와줄 책이 있습니다. 디자인 감각이
									없어도, 재능이 없어도 누구나 일주일이면 자신이 원하는 걸 내 손으로 멋지게 만들 수 있습니다!<br /> 사실
									일러스트레이터에는 자주 쓰는 기능이 정해져 있습니다. 일러스트레이터의 모든 기능을 알면 디자인을 잘하게 될 거란
									생각은 큰 오해이지요. 핵심은 디자인 감각입니다! 어떤 예제로 배우느냐가 당신의 디자인 감각을 좌우합니다. <br />
									뉴욕에서도, 삼성전자에서도, 심지어 어도비(Adobe) 본사에서도 인정받은 저자의 예제로 배워 보세요! 직접
									하나하나 따라 하다보면 저자의 색감과 조형 감각이 흡수되어 뭐든 세련되게 만들어내는 ‘금손’이 된 당신을 만날 수
									있습니다.
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V253"><img
									src="/upload/BOOK/253/20180327111107176450B.png" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V253"> <em>Do
									it! 자바스크립트 + 제이쿼리 - 전면 개정판</em> <span class="book_cmnt"> 4년
									연속 베스트셀러! 전면 개정판으로 출간!<br /> 자바스크립트, 제이쿼리의 기본부터 실전에 필요한 핵심까지
									모두 담았다!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V142"><img
									src="/upload/BOOK/142/20170821092247084975B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V142"> <em>Do
									it! 웹 사이트 기획 입문</em> <span class="book_cmnt"> 지금까지 웹 사이트 설계도를
									모두 공개한 책은 없었다! 쇼핑몰 제작 전 과정을 따라 하며 웹 기획자의 일을 구체적으로 배우는 책! 단언컨대,
									실무 2년보다 이 책 한 권이 낫습니다.</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V122"><img
									src="/upload/BOOK/122/20170103180756123755B.png" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V122"> <em>Do
									it! C 언어 입문</em> <span class="book_cmnt"> 실무 20년, 현업 프로그래머가
									초보자를 위해 엮었다! 120개 예제 · 270개 그림으로 배우는 C 프로그래밍 기본!</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V261"><img
									src="/upload/BOOK/254/20180418134236360048B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V261"> <em>Do
									it! 오토캐드 2019</em> <span class="book_cmnt"> 캐드 고수의 명령어를 모르면
									삽질의 늪에 빠진다!<br /> 건축, 인테리어, 토목, 기계, 전기, 가구 실무 도면을 총망라한 입문서!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V260"><img
									src="/upload/BOOK/259/20180521102342197108B.png" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V260"> <em>데이터
									과학, 무엇을 하는가?</em> <span class="book_cmnt"> * 통신, 금융, 보안, 유통,
									제조, 공공기관 등 미국과 한국의 10개 조직 적용 사례 공개! * <br /> 직접 겪어보지 않으면 모른다.
									데이터 과학이란 무엇이며 데이터 과학자가 무슨 일을 하는지. 미국 최대 데이터 회사를 거쳐, 국내 최대 데이터
									회사의 센터장을 맡고 있는 저자는 미국 기업과 한국 기업에서 경험한 데이터 과학 실무 사례를 공개했다.
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V197"><img
									src="/upload/BOOK/197/20180213182421672750B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V197"> <em>Do
									it! 프런트엔드 웹 디자인 입문 - 전면 개정판</em> <span class="book_cmnt"> 웹
									디자인 분야 베스트셀러! 전면 개정판으로 돌아오다! 최신 웹 디자인 트렌드를 반영한 6대 기술을 담았다!</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V192"><img
									src="/upload/BOOK/192/20180207134028338457B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V192"> <em>블록체인
									무엇인가?</em> <span class="book_cmnt"> 아마존 네트워크 분야 베스트셀러 1위!<br />
									전 세계 사람들이 가장 주목하는 블록체인 입문서, 드디어 국내 상륙!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V100"><img
									src="/upload/BOOK/100/20160217113134431648B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V100"> <em>된다!
									엑셀 능력자</em> <span class="book_cmnt"> 엑셀 분야 1위!<br /> 데이터를
									자유롭게 다루는<br /> 우리 사무실 고수들의 업무 기술 대공개!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V119"><img
									src="/upload/BOOK/119/20161222091057610785B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V119"> <em>Do
									it! HTML5+CSS3 웹 표준의 정석 &lt;개정판&gt;</em> <span class="book_cmnt">
									웹 분야 1위 도서! <br /> HTML 5.1 최종 표준안으로 전면 개정!<br /> 웹의 기본만큼은
									권위자에게 정석대로 배우자<br /> <br /> 문과생도, 중학생도 쉽게 배우는 책! 웹 분야 1위 도서인
									《Do it! HTML5+CSS3 웹 표준의 정석》이 전면 개정판으로 돌아왔다! 초판보다 더 쉽고 더 실용적인
									예제는 물론, 중학생도 이해하는 쉬운 설명에 최신 표준이 반영되었다. 이제껏 HTML5가 최신 표준이라고 알고
									있었다면 생각을 바꿔야 할 때! 이제 HTML 5.1 버전이 최신이자 최종 표준안이다. 최신 표준에 맞춰
									업그레이드된 예제에 치밀한 복습 설계를 더한 이 책으로 두 번 배울 필요 없이 한 번에 입문하자!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V111"><img
									src="/upload/BOOK/111/20160829103349971513B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V111"> <em>된다!
									파워포인트 능력자</em> <span class="book_cmnt"> 파워포인트 분야 1위!<br />
									방법을 바꾸면 결과도 달라집니다.<br /> 능력자가 일하는 방식 그대로,<br /> 《된다! 파워포인트
									능력자》
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V185"><img
									src="/upload/BOOK/185/20180125091552143711B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V185"> <em>Do
									it! Vue.js 입문</em> <span class="book_cmnt"> Vue.js 현업 개발자이자
									국내 최초 Vue.js 전문 강사의 핵심 노하우 대공개! <br /> 실무자 3일 완성! 입문자 7일 완성!
									바쁜 개발자의 시간 절약 입문서
							</span>
						</a>
						</li>
					</ul>
				</div>

				<ul class="slider_paging">
					<!--
				<li class="current"></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				-->
				</ul>
			</div>
			<!-- slider book list : e -->

			<!-- 바로가기 메뉴 : s -->
			<div id="short_cut_cnt">
				<div class="container">
					<ul>
						<li><a href="/72_Menu/BoardWrite/PUB"><img
								src="${pageContext.request.contextPath}/images/ico_sample.png"
								alt=""><span><em>대학 교수, 교육기관 강사 전용</em> <b>교재
										샘플 / 강의 자료</b> 요청하기</span></a></li>
						<li><a href="http://cafe.naver.com/doitstudyroom"
							target="_blank"><img
								src="${pageContext.request.contextPath}/images/ico_cafe.png"
								alt=""><span><em>스터디 카페</em> <b>DO IT! 스터디룸</b></span></a></li>
					</ul>
				</div>
			</div>
			<!-- 바로가기 메뉴 : e -->

			<!-- SNS & borad : s -->
			<div id="bottom_content" class="container">

				<!-- board Area : s -->
				<div class="board_area">
					<h2>공지사항/이벤트</h2>
					<ul>
						<li><a href="#view" class="btnBoardView" seq="531"> <em
								class="badge badgeS badge_203">마감</em> [서평단 모집] Do it! 자바 프로그래밍
								입문
						</a> <span class="date">2018.07.23</span></li>
						<li><a href="#view" class="btnBoardView" seq="528"> <em
								class="badge badgeS badge_201">공지</em> IT 도서 저자를 찾습니다. (기초
								프로그래밍, 딥러닝 프로그래밍 등)
						</a> <span class="date">2018.07.16</span></li>
						<li><a href="#view" class="btnBoardView" seq="527"> <em
								class="badge badgeS badge_202">이벤트</em> [무료 PDF] 된다! 일당백 마케터의 업무
								자동화
						</a> <span class="date">2018.07.05</span></li>
						<li><a href="#view" class="btnBoardView" seq="523"> <em
								class="badge badgeS badge_203">마감</em> [서평단 모집] 된다! 일당백 마케터의 업무
								자동화
						</a> <span class="date">2018.07.04</span></li>
						<li><a href="#view" class="btnBoardView" seq="522"> <em
								class="badge badgeS badge_201">공지</em> 사원 모집 - IT 분야 도서 기획편집자,
								신입직 및 경력직
						</a> <span class="date">2018.07.03</span></li>
						<li><a href="#view" class="btnBoardView" seq="518"> <em
								class="badge badgeS badge_203">마감</em> 서평단 모집 / 데이터 과학, 무엇을 하는가?
								(당첨자 발표)
						</a> <span class="date">2018.05.28</span></li>

					</ul>
					<a href="/12_Menu/BoardList/C200/PUB" class="btn_more"><img
						src="${pageContext.request.contextPath}/images/btn_more.png"
						alt="공지사항 및 이벤트 더보기"></a>
				</div>
				<!-- board Area : e -->

				<!-- SNS Area : s -->
				<div class="sns_area">
					<ul>
						<li class="face"><a href="https://www.facebook.com/easyspub"
							title="페이스북" target="_blank"></a></li>
						<li class="twitter"><a href="https://twitter.com/easyspub"
							title="트위터" target="_blank"></a></li>
						<li class="cafe"><a
							href="http://cafe.naver.com/doitstudyroom" title="Do it! 스터디룸 카페"
							target="_blank"></a></li>
					</ul>

					<div class="textwidget">
						<iframe
							src="https://www.facebook.com/plugins/likebox.php?href=https://www.facebook.com/easyspub&width=234&height=230&colorscheme=dark&show_faces=true&header=false&stream=false&show_border=false&appId=321224997896253"
							scrolling="no" frameborder="0"
							style="border: none; overflow: hidden; width: 100%; height: 230px;"
							allowtransparency="true"></iframe>
					</div>
				</div>
				<!-- SNS Area : e -->
			</div>
			<!-- SNS & borad : e -->

		</div>
		<!-- 컨텐츠 영역 : e -->

		<!-- footer : s -->
		<div id="footer">
			<div class="footer_menu">
				<div class="container">
					<ul>
						<li><a href="/11_Menu/Location/PUB">찾아오시는 길</a></li>
						<li><a href="/73_Menu/Privacy/PUB">개인정보취급방침</a></li>
						<li><a href="/73_Menu/Agreement/PUB">이용약관</a></li>
					</ul>
					<div class="short_cut_ftr">
						<a href="/73_Menu/WriterApply/PUB">저자신청</a>
						</li> <a
							href="https://docs.google.com/forms/d/e/1FAIpQLSc5ybZjSZqnV4ioXjSaIwKLjByN5mS01qByW33J3gtYdI3avA/viewform">역자신청</a>
						<a href="/72_Menu/BoardWrite/PUB">교재샘플/강의자료 요청</a>
						</li>
					</div>
				</div>
			</div>

			<div class="copyrights_area">
				<div class="container">
					<h1>
						<img
							src="${pageContext.request.contextPath}/images/logo_footer.png"
							alt="logo" />
					</h1>
					<div class="address">
						<span>(150-806) 서울시 영등포구 당산로 41길 11 SK V1 센터 W동 323호</span> <br
							class="none_br" /> <span>TEL (02)325-1722</span> <span>FAX
							(02)326-1723</span><br /> <span>사업자등록번호 105-87-44487</span> <span>대표자
							: 이지연 / <br class="none_br" />Email : <a
							href="mailto:easy@easyspub.co.kr">easy@easyspub.co.kr</a>
						</span><br /> <span>Copyright(c)2015 이지스퍼블리싱㈜ EasysPublishing
							Co., Ltd. All Rights Reserved</span>
					</div>
				</div>
			</div>

			<!-- mobile 화면에서 로그인 -->
			<p class="btm_btn_area ver_mobile">
				<input type="button" name="MobileLogin" value="로그인" title="로그인"
					class="btn btnTopLogin" /> | <input type="button"
					name="MobileJoin" value="회원가입" title="회원가입" class="btn btnTopJoin" />
				<input type="button" name="" id="edu002A03이지스에듀" value="이지스에듀"
					title="이지스에듀" class="btn btn_short_cut btnMainLink" />
			</p>
			<!-- mobile 화면에서 로그인// -->
		</div>
		<img src="/82_Menu/MemberStatOK" alt="" width="0" height="0" />

		<!-- 이전 코드 <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-116139153-1', 'auto');
  ga('send', 'pageview');
</script> -->

		<!-- Global site tag (gtag.js) - Google Analytics -->
		<script async
			src="https://www.googletagmanager.com/gtag/js?id=UA-116139153-1"></script>
		<script>
			window.dataLayer = window.dataLayer || [];

			function gtag() {
				dataLayer.push(arguments);
			}
			gtag('js', new Date());

			gtag('config', 'UA-116139153-1');
		</script>
		<!-- footer : e -->
	</div>
	<form method="post" id="frmSearch" name="frmSearch"
		action="/20_Menu/BookList/PUB" onsubmit="return true;">
		<input type="hidden" id="BOOK_IDX" name="BOOK_IDX" value="" /> <input
			type="hidden" id="page" name="page" value="1" /> <input
			type="hidden" id="ShKeyfield" name="ShKeyfield" value="" /> <input
			type="hidden" id="ShKeyword" name="ShKeyword" value="" /> <input
			type="hidden" id="ShMaxpage" name="ShMaxpage" value="" /> <input
			type="hidden" id="ShOrderby" name="ShOrderby" value="" />
	</form>
	<script type="text/javascript">
		// slider book list
		$(document)
				.ready(
						function() {
							resizeContent();
							var cnt = 0;
							var loopcnt = $('.selbook').find('li').size() - 1;
							$('.arrow_left').click(
									function() {
										$('.selbook').find('li').eq(0).before(
												$('.selbook').find(
														'>li:last-child'));
									});
							$('.arrow_right').click(
									function() {
										$('.selbook').append(
												$('.selbook').find(
														'>li:first-child'));
									});
							$('.BtnPageView').click(
									function(e) {
										$('#BOOK_IDX').val(
												$(this).attr('alt').replace(
														"V", ""));
										$('#frmSearch').attr(
												'action',
												'/20_Menu/BookView/'
														+ $(this).attr('alt')
																.replace("V",
																		"")
														+ '/PUB').submit();
									});

							//lert($('.movie_area').find('iframe').length);
							var movieCnt = $('.movie_area').find('iframe').length;
							if (0 < movieCnt) {
								$('.movie_area').find('iframe').attr("width",
										"240").attr("height", "197");
							}

							$('.btnBoardView')
									.click(
											function() {
												document.location.href = '/12_Menu/BoardView/C200/'
														+ $(this).attr('seq')
														+ '/PUB';
											});
						});
		$(window).resize(function() {
			resizeContent();
		});

		function resizeContent() {
			var sliderWidth = $('.main_book_list ul').width();
			$('.main_book_list ul').css({
				'width' : (sliderWidth) + 'px'
			});
			$('.main_book_list ul').css({
				'margin-left' : -(sliderWidth / 2) + 'px'
			});
		}

		function getCookie(name) {
			var nameOfCookie = name + "=";
			var x = 0;
			while (x <= document.cookie.length) {
				var y = (x + nameOfCookie.length);
				if (document.cookie.substring(x, y) == nameOfCookie) {
					if ((endOfCookie = document.cookie.indexOf(";", y)) == -1)
						endOfCookie = document.cookie.length;
					return unescape(document.cookie.substring(y, endOfCookie));
				}
				x = document.cookie.indexOf(" ", x) + 1;
				if (x == 0)
					break;
			}
			return "";
		}
	</script>
</body>

</html>
