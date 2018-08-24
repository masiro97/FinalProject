<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty sessionScope.sid}">
	<c:set var="dog" value="noLogin" />
</c:if>
<c:if test="${not empty sessionScope.sid}">
	<c:set var="dog" value="${sid}" />
</c:if>
<%
	String sessionId = (String) pageContext.getAttribute("dog");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<meta name="viewport"
	content="width=device-width, user-scalable=yes, target-densitydpi=device-dpi">
<title>3H Board</title>


<!-- �Ʒ��� ����õ����� �α���ȭ���� ���� ������ css,js -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/login_css/style_kr_v2.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/login_css/common.css">
<link href="${pageContext.request.contextPath}/login_css/jquery-ui.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="${pageContext.request.contextPath}/login_js/jquery-ui.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/login_js/easing/jquery.easing.1.3.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/login_js/gibberish-aes.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/login_js/jquery.simpler-sidebar.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/login_js/comm.js"></script>
<script
	src="${pageContext.request.contextPath}/login_js/jquery-1.12.4.js"></script>
<script
	src="${pageContext.request.contextPath}/login_js/jquery.responsiveTabs.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/login_js/gallery/jquery-supergallery-plugin2.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/login_js/gallery/gallery.js"></script>

<!-- �Ʒ��� �������ۺ��̿��� ������ css,js -->
<link rel="canonical" href="http://www.easyspub.co.kr/Main" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/layout_common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/layout_main.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/jquery-ui-1.11.2.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/layout_sub.css" />

<%-- <script type="text/javascript"
	src="${pageContext.request.contextPath}/easy_js/jquery-1.11.2.min.js"></script> --%>
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
    <script src="${pageContext.request.contextPath}/js/html5.js"></script>
    <script src="${pageContext.request.contextPath}/js/respond.min.js"></script>
<![endif]-->

<!-- ����� : ���� ������ �����̵� -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.swiper-2.1.min.js"></script>
<style>
<
style>input[type="password"] {
	height: 24px;
	line-height: 24px;
	padding: 0 10px
}

.address {
	margin-top: 50px;
}

input[type="checkbox"] {
	vertical-align: middle
}

textarea {
	border: 1px #dfdfdf solid;
}

/*������ư, üũ�ڽ� ����*/
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
	vertical-align: middle;
}
</style>

</style>
</head>

<body>
	<div class="wrap" id="pub">
		<!-- Gnb ���� : s -->
		<div class="gnb_wrap">
			<div id="gnb">
				<div class="container">
					<h1>
						<a href="${pageContext.request.contextPath}/Main/main.jsp"><img
							src="${pageContext.request.contextPath}/images/logo_pub.png"
							alt="�������ۺ���"></a>
					</h1>
					<!-- web ȭ�鿡�� menu :s -->
					<div class="menu_area">
						<a href="#" class="btn_close_menu ver_mobile"><img
							src="${pageContext.request.contextPath}/images/btn_close_gnb.png"
							alt="�޴� �ݱ�" style="width: 30px;"></a>
						<ul class="depth01">
							<li class="current"><a href="#" id="pub001A02�������ۺ���"
								class="btnMainLink"><img
									src="${pageContext.request.contextPath}/images/logo_pub.png"
									alt="������ �ۺ���"></a>
								<div class="depth02_area">
									<ul class="depth02">
										<li><a
											href="${pageContext.request.contextPath}/Main/3hboard.jsp">���
												�Ұ�</a></li>

										<li><a
											href="${pageContext.request.contextPath}/Main/index4.jsp">�뿩��
												��Ȳ</a></li>
										<li><a
											href="${pageContext.request.contextPath}/Main/safeRule.jsp">��������</a></li>

										<li><a
											href="${pageContext.request.contextPath}/cont?command=community">Ŀ�´�Ƽ</a></li>
										<li><a
											href="${pageContext.request.contextPath}/cont?command=citizen">�����ؿ�</a></li>

										<!-- <li><a href="${pageContext.request.contextPath}/BoardList/Citizen.jsp">�����ؿ�</a></li>
										 -->
										<li><a
											href="${pageContext.request.contextPath}/Main/safeRule.jsp">������Ģ</a></li>


									</ul>
								</div>
								</li>
								
						</ul>
					</div>
					<!-- web ȭ�鿡�� menu : e -->

					<!-- web ȭ�鿡�� �α��� : s -->
					<div class="form_area">
						<p class="ver_web">
							<c:if test="${empty sessionScope.sid}">
								<input type="button" name="WebLogin" value="�α���" title="�α���"
									class="btnTopLogin" />
							</c:if>
							<c:if test="${not empty sessionScope.sid}">
								<span
									style="line-height: 1em; margin: 0 8px; color: #cdcdcd; background-color: transparent; font-weight: 500;">${sid}��
									ȯ���մϴ�.</span>
								<a href="${pageContext.request.contextPath}/cont?command=logout">
									<span
									style="line-height: 1em; margin: 0 8px; color: #cdcdcd; background-color: transparent; font-weight: 500;">�α׾ƿ�</span>
								</a>
							</c:if>
							| <input type="button" name="WebJoin" value="ȸ������" title="ȸ������"
								class="btnTopJoin" />
						</p>
						<p class="search_area ver_web">
							<input type="text" id="TotalKeyword1" name="TotalKeyword1"
								class="inputbox_none btnTotalKeyword" value="ű����, ���� �� �˻�"
								onfocus="this.value='';"
								onblur="if(this.value=='') this.value='ű����, ���� �� �˻�';" /> <a
								href="#TOTALSEARCH" class="btnTotalSearch1">�����˻�</a>
						</p>
					</div>

					<p class="gnb_menu ver_mobile">
						<a href="#Menu" class="btn_open_menu"><img
							src="${pageContext.request.contextPath}/images/mobile/ico_menu.png"
							alt="�޴�����"></a> <a href="#Search" class="btn_search"><img
							src="${pageContext.request.contextPath}/images/mobile/ico_search.png"
							alt="�����˻�"></a>
					</p>
					<!-- web ȭ�鿡�� �α��� : e -->
				</div>
			</div>
		</div>

		<!-- ������ ���� : s -->
		<div class="gnb_wrap_search none">
			<div class="search_area ver_mobile">
				<div>
					<input type="text" id="TotalKeyword2" name="TotalKeyword2"
						class="inputbox_none btnTotalKeyword"
						title="������ &quot; 3H Board &quot;�� ű���常 �˻��� �����մϴ�."
						value="ű����, ���� �� �˻�" onfocus="this.value='';"
						onblur="if(this.value=='') this.value='ű����, ���� �� �˻�';" />
				</div>
				<a href="#TOTALSEARCH" class="btnTotalSearch2 btn btnBlack btnS">�˻�</a>
			</div>
		</div>
		<!-- ������ ���� : e -->

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

								$('.btnTopLogin')
										.click(
												function(e) {
													window.location = "${pageContext.request.contextPath}/RegisterStep/loginForm.jsp";
												});
								$('.btnTopJoin')
										.click(
												function(e) {
													window.location = "${pageContext.request.contextPath}/RegisterStep/MemberRegister01.jsp";
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
																	.val() == "������, ���� �� �˻�") {
														alert("�˻�� �Է��ϼ���.");
														$('#TotalKeyword1')
																.focus();
														return;
													} else {
														if ($('#TotalKeyword1')
																.val() == "������, ���� �� �˻�")
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
																+ encodeURIComponent(keyWord)+'&search_id=<%=sessionId%>';
														
														alert(url);
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
																	.val() == "������, ���� �� �˻�") {
														alert("�˻�� �Է��ϼ���.");
														$('#TotalKeyword2')
																.focus();
														return;
													} else {
														if ($('#TotalKeyword2')
																.val() == "������, ���� �� �˻�")
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
															alert("�˻�� �Է��ϼ���.");
															$(this).focus();
															return false;
														} else {
															if ($(this).val() == "������, ���� �� �˻�")
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
																+ encodeURIComponent(keyWord)+'&search_id=<%=sessionId%>';

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
		<!-- Gnb ���� : e -->

		<!-- ������ ���� : s -->

		<div class="contents_wrap" id="main_wrap">
			<div class="menu_loacation">
				<div class="container">
					<a href="${pageContext.request.contextPath}/Main/main.jsp"
						class="home" title="������������ �̵�"></a> <span class="depth pointer"
						onclick="#';">������Ģ</span>
				</div>
			</div>
			<!--  <div class="login_box">
				<form name="loginForm" action="/j_spring_security_check"
					method="POST">
					<fieldset>
						<legend>�α���</legend>
						<a href="" class="close"></a>
						<p>�α��� �� ������ �뿩�Ͻ� �� �ֽ��ϴ�.</p>
						<div>
							<input class="inputlogin" onkeypress="" name="j_username"
								id="j_username" value="" size="18" maxlength="" tabindex=""
								placeholder="���̵�">
						</div>
						<div>
							<input class="inputlogin" onkeypress="" name="j_password"
								id="j_password" value="" type="password" size="" maxlength=""
								tabindex="" placeholder="��й�ȣ">
						</div>
						<div class="autologin">
							<input type="checkbox" name="loginchk" id="logchk" title="�ڵ��α���"
								value="true"><label for="logchk"><span></span>�ڵ��α���</label>
						</div>
						<a href="/memberIdFind.do" class="idpw_srch">���̵�</a>/<a
							href="memberPwFind.do" class="idpw_srch">��й�ȣã��</a>
						<div class="loginbtn">
							<input class="btn_login" type="submit" title="�α���" alt="�α���"
								tabindex="" value="�α���" id="loginBtn"> <input
								class="btn_join" type="submit" title="ȸ������" alt="ȸ������"
								tabindex="" value="ȸ������" id="joinBtn">
						</div>
						<a href="https://www.bikeseoul.com:447/main.do?lang=ko"
							class="nonmember">��ȸ��<img src="images/arrow_login.jpg" alt=""></a>
						<a href="https://www.bikeseoul.com:447/main.do?lang=en"
							class="foreigner">foreigner<img src="images/arrow_login.jpg"
							alt=""></a> <input type="hidden" id="ostype" name="appOsType"
							value="web"> <input type="hidden" id="usrDeviceId"
							name="usrDeviceId">
					</fieldset>
				</form>
			</div> -->
			<div id="book_list_area">
				<!--������Ģ-->

				<div id="tab-1" class="tab-content current">
					<div id="gallery" class="gallery">
						<div class="thumbHolder">
							<ul class="thumb">
								<li class="thumbBtn">1</li>
								<li class="thumbBtn">2</li>
								<li class="thumbBtn">3</li>
								<li class="thumbBtn">4</li>
								<li class="thumbBtn">5</li>
						</div>

						<div class="mainHolder">
							<ul class="main">
								<li><h1>
										3H���� �뿩�� ���ؼ��� ������ ��ġ � ���� <br> �Ǵ� 1,2�� �������㰡 �ʿ��մϴ�.
									</h1> <img src="../images/image1.jpg" alt=""></li>
								<li><h1>
										���� ���������� �̿� �����մϴ�.<br>( �ε� X, ������ ���� X )
									</h1> <img src="../images/image2.jpg" alt=""></li>
								<li><h1>
										�ݵ�� ����� �����ؾ� �մϴ�.<br> �߰� �������� ����Ʈ�� ���ּ���.
									</h1> <img src="../images/image3.png" alt=""></li>
								<li><h1>
										���� ������ �ȵ˴ϴ�.<br> 25km/h �ʰ� �ȵ˴ϴ�.
									</h1> <img src="../images/image4.png" alt=""></li>
								<li><h1>���� ��, �̾���, ����Ʈ���� ������� �ʽ��ϴ�.</h1> <img
									src="../images/image5.png" alt=""></li>

							</ul>

							<div class="nav">
								<div class="prevBtn">
									<img src="../images/prevBtn.jpg" alt="">
								</div>
								<div class="nextBtn">
									<img src="../images/nextBtn.jpg" alt="">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- slider book list : e -->

			<!-- �ٷΰ��� �޴� : s -->
			<div id="short_cut_cnt">
				<div class="container">
					<ul>
						<li><a href="/72_Menu/BoardWrite/PUB"><img
								src="${pageContext.request.contextPath}/images/ico_sample.png"
								alt=""><span><em>���� ���� ����</em> <b> ������ / ��ȣ�� �뿩
								</b></span></a></li>
						<li><a href="http://cafe.naver.com/doitstudyroom"
							target="_blank"><img
								src="${pageContext.request.contextPath}/images/ico_cafe.png"
								alt=""><span><em>ű���� ī��</em> <b>DO IT!
										Kickboard</b></span></a></li>
					</ul>
				</div>
			</div>
			<!-- �ٷΰ��� �޴� : e -->

			<!-- SNS & borad : s -->
			<div id="bottom_content" class="container">

				<!-- board Area : s -->
				<div class="board_area">
					<h2>��������/�̺�Ʈ</h2>
					<ul>
						<li><a href="#view" class="btnBoardView" seq="531"> <em
								class="badge badgeS badge_203">����</em> [ü��� ����] ����� ű���� ü���
						</a> <span class="date">2018.07.23</span></li>
						<li><a href="#view" class="btnBoardView" seq="528"> <em
								class="badge badgeS badge_201">����</em> ű���� ������ ã���ϴ�.
						</a> <span class="date">2018.07.16</span></li>
						<li><a href="#view" class="btnBoardView" seq="527"> <em
								class="badge badgeS badge_202">�̺�Ʈ</em> [���� ű����] ű���� �����ؿ�!
						</a> <span class="date">2018.07.05</span></li>

					</ul>
					<a href="/12_Menu/BoardList/C200/PUB" class="btn_more"><img
						src="${pageContext.request.contextPath}/images/btn_more.png"
						alt="�������� �� �̺�Ʈ ������"></a>
				</div>
				<!-- board Area : e -->

				<!-- SNS Area : s -->
				<div class="sns_area">
					<ul>
						<li class="face"><a href="https://www.facebook.com/easyspub"
							title="���̽���" target="_blank"></a></li>
						<li class="twitter"><a href="https://twitter.com/easyspub"
							title="Ʈ����" target="_blank"></a></li>
						<li class="cafe"><a
							href="http://cafe.naver.com/doitstudyroom" title="Do it! ���͵�� ī��"
							target="_blank"></a></li>
					</ul>

					<div class="textwidget">
						<iframe src="${pageContext.request.contextPath}/images/shin.jpg"
							scrolling="no" frameborder="0"
							style="border: none; overflow: hidden; width: 100%; height: 230px;"
							allowtransparency="true"></iframe>
					</div>
				</div>
				<!-- SNS Area : e -->
			</div>
			<!-- SNS & borad : e -->


			<!-- ������ ���� : e -->

			<!-- footer : s -->
			<div id="footer">
				<div class="footer_menu">
					<div class="container">
						<ul>
							<li><a href="#">ã�ƿ��ô� ��</a></li>
							<li><a href="#">����������޹�ħ</a></li>
							<li><a href="#">�̿���</a></li>
						</ul>
						<div class="short_cut_ftr">
							<a href="#">������ ��û</a>
							</li> <a
								href="https://docs.google.com/forms/d/e/1FAIpQLSc5ybZjSZqnV4ioXjSaIwKLjByN5mS01qByW33J3gtYdI3avA/viewform">��������</a>
							<a href="#">ű������� ��û</a>
							</li>
						</div>
					</div>
				</div>
			</div>

			<div class="copyrights_area">
				<div class="container" style="display: inline;">

					<div class="address"
						style="display: inline-block; margin-top: 20px; margin-left: 350px">
						<span>����Ư���� ������ ���ַ� 508 10~17��(���ﵿ, �����Ϻ���)</span> <br
							class="none_br"> <span>TEL (02)325-1722</span> <span>FAX
							(02)326-1723</span><br> <span>����ڵ�Ϲ�ȣ 105-87-44487</span> <span>��ǥ��
							: ������ / <br class="none_br">Email : <a
							href="mailto:easy@easyspub.co.kr">easy@3hboard.co.kr</a>
						</span><br> <span>Copyright(c)2018 3H����� 3H Board Co., Ltd.
							All Rights Reserved</span>
					</div>
					<img src="/WebProject/images/logo_footer.png" alt="logo">
				</div>
			</div>

			<a class="btnGoTop" title="goTop" style="display: block;"> <img
				src="${pageContext.request.contextPath}/images/btn_top.png">
			</a>
		</div>
		<!-- mobile ȭ�鿡�� �α��� -->
		<p class="btm_btn_area ver_mobile">
			<input type="button" name="MobileLogin" value="�α���" title="�α���"
				class="btn btnTopLogin" /> | <input type="button" name="MobileJoin"
				value="ȸ������" title="ȸ������" class="btn btnTopJoin" /> <input
				type="button" name="" id="edu002A03����������" value="����������"
				title="����������" class="btn btn_short_cut btnMainLink" />
		</p>
		<!-- mobile ȭ�鿡�� �α���// -->
	</div>
	<img src="/82_Menu/MemberStatOK" alt="" width="0" height="0" />

	<!-- ���� �ڵ� <script>
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