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
<meta property="og:title" content="����� ��ü������ �����ִ� å, �������ۺ���(��)" />
<meta property="og:url" content="http://www.easyspub.co.kr/Main" />
<meta property="og:image"
	content="http://www.easyspub.co.kr${pageContext.request.contextPath}/images/logo_map.jpg" />
<meta property="og:description" content="����� ��ü������ �����ִ� å, �������ۺ���(��)" />

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

<!-- ����� : ���� ������ �����̵� -->
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
	border: 0;
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
						<a href="/Main/main"><img
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
										<li><a href="#">ȸ��Ұ�</a>
											<div>
												<ul class="depth03">
													<li><a href="/11_Menu/CompanyInfo/PUB">3HBoard �Ұ�</a></li>
													<li><a href="/11_Menu/EngCompanyInfo/PUB">About
															EasysPublishing</a></li>
													<li><a href="/11_Menu/BookDown/PUB">���� ��� �ٿ�ε�</a></li>
													<li><a href="/12_Menu/BoardList/C100/PUB">������ ȫ��
															�ڷ�</a></li>
													<li><a
														href="${pageContext.request.contextPath}/BoardList/Board1.html">��������/�̺�Ʈ</a></li>
													<li><a href="/11_Menu/Location/PUB">ã�ƿ��ô� ��</a></li>
												</ul>
											</div></li>
										<li><a href="#">��������</a>
											<div>
												<ul class="depth03">
													<li><a href="/20_Menu/BookList/PUB">��ü ����</a></li>
													<li><a href="#">�оߺ� ����</a>
														<ul class="depth04">
															<li><a href="/20_Menu/BookList/A001/PUB">IT������</a></li>
															<li><a href="/20_Menu/BookList/A002/PUB">���� �ɷ�,
																	��Ÿ</a></li>
															<li><a href="/20_Menu/BookList/A003/PUB">���� ����</a></li>
															<li><a href="/20_Menu/BookList/A004/PUB">������ ����</a></li>
														</ul></li>
													<li><a href="#">�ø��� ����</a>
														<ul class="depth04">
															<li><a href="/20_Menu/BookList/B001/PUB">Do it!
																	�ø���</a></li>
															<li><a href="/20_Menu/BookList/B002/PUB">�ȴ�! �ø���</a></li>
															<li><a href="/20_Menu/BookList/B007/PUB">DCM ����
																	������</a></li>
															<li><a href="/20_Menu/BookList/B010/PUB">������ ����
																	�ø���</a></li>
														</ul></li>
													<li><a href="/20_Menu/BookList/C000/PUB">����å ����</a></li>
													<li><a href="#" id="edu002A03����������" class="btBookLink">������
															���� ���� ����</a></li>
												</ul>
											</div></li>
										<li><a href="/30_Menu/DataList/PUB">�ڷ��</a></li>

										<!-- <li><a href="${pageContext.request.contextPath}/BoardList/Citizen.jsp">�����ؿ�</a></li>
										 -->
										<li><a
											href="${pageContext.request.contextPath}/cont?command=citizen">�����ؿ�9999</a></li>



										<li class="last"><a href="/50_Menu/VideoList/PUB">������
												����</a></li>
									</ul>
								</div></li>
							<li><a href="#" id="edu002A03����������" class="btnMainLink"><img
									src="${pageContext.request.contextPath}/images/logo_pub.png"
									alt="������ ����"></a>
								<div class="depth02_area none">
									<ul class="depth02">
										<li><a href="#">ȸ��Ұ�</a>
											<div>
												<ul class="depth03">
													<li><a href="/11_Menu/CompanyInfo/PUB">�������ۺ���(��)
															�Ұ�</a></li>
													<li><a href="/11_Menu/EngCompanyInfo/PUB">About
															EasysPublishing</a></li>
													<li><a href="/11_Menu/BrandInfo2/PUB">���������� �Ұ�</a></li>
													<li><a href="/11_Menu/BookDown/PUB">���� ��� �ٿ�ε�</a></li>
													<li><a href="/12_Menu/BoardList/C100/PUB">������ ȫ��
															�ڷ�</a></li>
													<li><a href="/12_Menu/BoardList/C200/PUB">��������/�̺�Ʈ</a></li>
													<li><a href="/11_Menu/Location/PUB">ã�ƿ��ô� ��</a></li>
												</ul>
											</div></li>
										<li><a href="#">����</a>
											<div>
												<ul class="depth03">
													<li><a href="/20_Menu/BookList/PUB">��ü ����</a></li>
													<li><a href="#">�оߺ� ����</a>
														<ul class="depth04">
															<li><a href="/20_Menu/BookList/A001/PUB">�ʵ� ����</a></li>
															<li><a href="/20_Menu/BookList/A002/PUB">�ʵ� ����</a></li>
															<li><a href="/20_Menu/BookList/A007/PUB">�ʵ� ����</a></li>
															<li><a href="/20_Menu/BookList/A003/PUB">�ߵ� ����</a></li>
															<li><a href="/20_Menu/BookList/A008/PUB">�ߵ� ����</a></li>
															<li><a href="/20_Menu/BookList/A004/PUB">�ڳ౳��,
																	��Ÿ</a></li>
														</ul></li>
													<li><a href="#">�ø��� ����</a>
														<ul class="depth04">
															<li><a href="/20_Menu/BookList/B003/PUB">�ٺ� �����</a></li>
															<li><a href="/20_Menu/BookList/B011/PUB">�ٺ� ����
																	����</a></li>
															<li><a href="/20_Menu/BookList/B004/PUB">�ٺ� ����</a></li>
															<li><a href="/20_Menu/BookList/B012/PUB">�ٺ� �޼�
																	����</a></li>
															<li><a href="/20_Menu/BookList/B005/PUB">�츮����
																	������</a></li>
															<li><a href="/20_Menu/BookList/B009/PUB">����_��Ÿ</a></li>
															<li><a href="/20_Menu/BookList/B013/PUB">�� ȥ��
																	Ǭ��!</a></li>
														</ul></li>
													<li><a href="/20_Menu/BookList/C000/PUB">����å ����</a></li>
													<li><a href="#" id="pub001A02�������ۺ���"
														class="btBookLink">�������ۺ��� ���� ����</a></li>
												</ul>
											</div></li>
										<li><a href="/30_Menu/DataList/PUB">�ڷ��</a></li>


										<li class="last"><a
											href="${pageContext.request.contextPath}/BoardList/citizenOpinionList.jsp">�����ؿ�</a></li>


										<li class="last short_cut_cafe"><a
											href="http://blog.naver.com/easyspub" target="_blank">�ٺ�
												����Ʈ</a></li>
										<li class="last short_cut_cafe"><a
											href="http://cafe.naver.com/easyispub" target="_blank">���̹�
												ī��</a></li>
									</ul>
								</div></li>
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
						title="���ǻ� &quot;�������ۺ���&quot;�� å�鸸 �˻��� �����մϴ�."
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
		<!-- Gnb ���� : e -->

		<!-- ������ ���� : s -->

		<div class="contents_wrap" id="main_wrap">
			<div class="login_box">
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
			</div>
			<!-- slider book list : s -->
			<div id="book_list_area">

				<div class="main_book_list">
					<a class="arrow_left" href="#left"><img
						src="${pageContext.request.contextPath}/images/ico_arrow_slider_left.png"
						alt="���� å"></a> <a class="arrow_right" href="#right"><img
						src="${pageContext.request.contextPath}/images/ico_arrow_slider_right.png"
						alt="���� å"></a> <span class="bg bg_left"></span> <span
						class="bg bg_right"></span>

					<ul class="main_book_list selbook">
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V186"><img
									src="/upload/BOOK/186/20180126134931106796B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V186"> <em>�ȴ�!
									���̹� ��α� & ����Ʈ</em> <span class="book_cmnt"> �������� �˻� ���� �������!<br />
									���� �����ϴ� ��ΰŸ� ���� ���̹� ������ �ʼ� �Թ���!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V175"><img
									src="/upload/BOOK/175/20171206142712545571B.png" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V175"> <em>Do
									it! ������Ʈ�� ������ �� ����� �Թ� - ���� 2��</em> <span class="book_cmnt">
									���� �庮�� �㹰����! <br /> ó������ ������ ���� �� ������!<br /> � �ۿ����� ��Դ� ����
									��ɺ��� �����!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V254"><img
									src="/upload/BOOK/254/20180418134236360048B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V254"> <em>Do
									it! ����ĳ�� 2019</em> <span class="book_cmnt"> ĳ�� ����� ��ɾ �𸣸�
									������ �˿� ������!<br /> ����, ���׸���, ���, ���, ����, ���� �ǹ� ������ �Ѹ����� �Թ���!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V189"><img
									src="/upload/BOOK/189/20180131225001166137B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V189"> <em>Do
									it! �ȵ���̵� �� ���α׷��� - ���� 5��</em> <span class="book_cmnt"> 7�� ����
									�ȵ���̵� �о� 1��! ���� ���� 5��(�ȵ���̵� 8.0 ������ ���� �� �ȵ���̵� ��Ʃ��� 3.0 �ݿ���)��
									���Դ�!</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V127"><img
									src="/upload/BOOK/127/20170224173013094710B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V127"> <em>Do
									it! Node.js ���α׷��� &lt;���� ������&gt;</em> <span class="book_cmnt">
									�� ����, ä�� ����, ����� ����, ��ġ ��� ���� ����, JSON-RPC ��������! ���� ���� ������
									�ʿ��ϴٸ�? ���� ������ ���� ������ �ڵ�� �����!</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V178"><img
									src="/upload/BOOK/178/20180427094641828211B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V178"> <em>Do
									it! �ڷᱸ���� �Բ� ���� �˰��� �Թ� - C ��� ��</em> <span class="book_cmnt">
									IT ���, ��� ���迡�� ���ʰ� �Ǵ� �ڷᱸ���� �˰����� ������ �� �ǿ� ��� ��Ҵ�!<br /> ���� IT
									����� ����, �ڵ� ���迡�� �߿��ϰ� �����ϴ� ���� ��� �ϳ��� �ڷᱸ���� �˰����̴�. �ڷᱸ���� �˰�����
									�Ӹ��� ���丸 �����Ѵٰ� �ٷ� ������ ����� ���� ����. �ϳ��� �ڽ��� ������ �ڵ��ϰ� ����� Ȯ���ϸ� ��ǻ�Ͱ�
									��� �����͸� �����ϰ� ������ �ذ��ϴ��� ���� ������ �������� ����� �� �ִ�. ��Do it! �ڷᱸ���� �Բ�
									���� �˰��� �Թ� - C ��� ����� 263���� ���ؿ� �Բ� ������ ģ���� �������� ������ ���� ������ ��
									������ ������ ������ �ٷιٷ� 114���� �ǽ� ������ 105���� ���������� ���� �ڵ��� �� �ִ� å�̴�.
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V257"><img
									src="/upload/BOOK/257/20180427111930120134B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V257"> <em>Do
									it! �ڷᱸ���� �Բ� ���� �˰��� �Թ� - �ڹ� ��</em> <span class="book_cmnt">
									IT ���, ��� ���迡�� ���ʰ� �Ǵ� �ڷᱸ���� �˰����� ������ �� �ǿ� ��� ��Ҵ�! ���� IT �����
									����, �ڵ� ���迡�� �߿��ϰ� �����ϴ� ���� ��� �ϳ��� �ڷᱸ���� �˰����̴�. �ڷᱸ���� �˰����� �Ӹ���
									���丸 �����Ѵٰ� �ٷ� ������ ����� ���� ����. �ϳ��� �ڽ��� ������ �ڵ��ϰ� ����� Ȯ���ϸ� ��ǻ�Ͱ� ���
									�����͸� �����ϰ� ������ �ذ��ϴ��� ���� ������ �������� ����� �� �ִ�. ��Do it! �ڷᱸ���� �Բ� ����
									�˰��� �Թ� - �ڹ� ����� 220���� ���ؿ� �Բ� ������ ģ���� �������� ������ ���� ������ �� ������ ������
									������ �ٷιٷ� 88���� �ǽ� ������ 93���� ���� ������ ���� �ڵ��� �� �ִ� å�̴�.</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V267"><img
									src="/upload/BOOK/267/20180720165249263763B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V267"> <em>Do
									it! �ڹ� ���α׷��� �Թ�</em> <span class="book_cmnt"> ���� �ǹ� 10��, ����
									10��! ������ ���� ưư �ڵ� ���! <br /> ���ʺ� �л���� �δ볢�� ������ �����̷� �ڹ� �н� ���Ͽ�
									�����!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V259"><img
									src="/upload/BOOK/259/20180521102342197108B.png" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V259"> <em>������
									����, ������ �ϴ°�?</em> <span class="book_cmnt"> * ���, ����, ����, ����,
									����, ������� �� �̱��� �ѱ��� 10�� ���� ���� ��� ����! * <br /> ���� �޾�� ������ �𸥴�.
									������ �����̶� �����̸� ������ �����ڰ� ���� ���� �ϴ���. �̱� �ִ� ������ ȸ�縦 ����, ���� �ִ� ������
									ȸ���� �������� �ð� �ִ� ���ڴ� �̱� ����� �ѱ� ������� ������ ������ ���� �ǹ� ��ʸ� �����ߴ�.
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V138"><img
									src="/upload/BOOK/138/20170706092814347377B.png" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V138"> <em>Do
									it! ���� ���� R ������ �м�</em> <span class="book_cmnt"> ���, ���α׷�����
									1�� ���� �����͸� ȥ�ڼ� �ٷ� �� �ִ�! <br /> ������ �м� ������Ʈ �� ���� ����!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V98"><img
									src="/upload/BOOK/98/20160222154238866895B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V98"> <em>Do
									it! ���� �� ���̽�</em> <span class="book_cmnt"> 1�� ��� 8õ ��, ���� �湮��
									�� 50�� ��! <br /> 10�Ⱓ �¶��ο��� ������ ������ �� ���̽㡯���� ���α׷����� ��������!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V268"><img
									src="/upload/BOOK/267/20180720165249263763B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V268"> <em>Do
									it! �ڹ� ���α׷��� �Թ�</em> <span class="book_cmnt"> ���� �ǹ� 10��, ����
									10��! ������ ���� ưư �ڵ� ���! <br /> ���ʺ� �л���� �δ볢�� ������ �����̷� �ڹ� �н� ���Ͽ�
									�����!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V217"><img
									src="/upload/BOOK/189/20180131225001166137B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V217"> <em>Do
									it! �ȵ���̵� �� ���α׷��� - ���� 5��</em> <span class="book_cmnt"> 7�� ����
									�ȵ���̵� �о� 1��! ���� ���� 5��(�ȵ���̵� 8.0 ������ ���� �� �ȵ���̵� ��Ʃ��� 3.0 �ݿ���)��
									���Դ�!</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V263"><img
									src="${pageContext.request.contextPath}/images/quick1.jpg"
									alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V263"> <em>������
									����ű����</em> <span class="book_cmnt"> ������ �ڵ� �亯���� SNS �ϰ� ���ε����!<br />
									���� ���� ������ �������� �¶��� ������ �Թ���
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V198"><img
									src="/upload/BOOK/198/20180221122813853308B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V198"> <em>�ȴ�!
									������� ��Ʃ�� ���� �����</em> <span class="book_cmnt"> ������ 10���� �Ǳ����
									1���� �ð��� ������� ��Ҵ�!<br /> ���� �ڸ����� ��н����� ���� ���ͱ��� ���� ���� ��Ʃ���� �Ǵ�
									9���� �������� �Ұ��Ѵ�!<br />
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V137"><img
									src="/upload/BOOK/137/20170623121126715342B.png" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V137"> <em>�ȴ�!
									�Ϸ���Ʈ������ CC</em> <span class="book_cmnt"> ����, �Ｚ���ڿ����� ���ϴ� ������
									�������� �ǹ� ������ ���ϱ�!<br /> <br /> �� �������̸� ���ݼա� �ȴ�!<br /> <br />
									������ ������ Ÿ�� ���� ���ϱ��? �ٷ� ����, ������ ��ΰ����� �پ� �Ѱ� ������ å�� �ֽ��ϴ�. ������ ������
									���, ����� ��� ������ �������̸� �ڽ��� ���ϴ� �� �� ������ ������ ���� �� �ֽ��ϴ�!<br /> ���
									�Ϸ���Ʈ�����Ϳ��� ���� ���� ����� ������ �ֽ��ϴ�. �Ϸ���Ʈ�������� ��� ����� �˸� �������� ���ϰ� �� �Ŷ�
									������ ū ����������. �ٽ��� ������ �����Դϴ�! � ������ �����İ� ����� ������ ������ �¿��մϴ�. <br />
									���忡����, �Ｚ���ڿ�����, ������ ���(Adobe) ���翡���� �������� ������ ������ ��� ������! ����
									�ϳ��ϳ� ���� �ϴٺ��� ������ ������ ���� ������ ����Ǿ� ���� ���õǰ� ������ ���ݼա��� �� ����� ���� ��
									�ֽ��ϴ�.
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V253"><img
									src="/upload/BOOK/253/20180327111107176450B.png" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V253"> <em>Do
									it! �ڹٽ�ũ��Ʈ + �������� - ���� ������</em> <span class="book_cmnt"> 4��
									���� ����Ʈ����! ���� ���������� �Ⱓ!<br /> �ڹٽ�ũ��Ʈ, ���������� �⺻���� ������ �ʿ��� �ٽɱ���
									��� ��Ҵ�!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V142"><img
									src="/upload/BOOK/142/20170821092247084975B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V142"> <em>Do
									it! �� ����Ʈ ��ȹ �Թ�</em> <span class="book_cmnt"> ���ݱ��� �� ����Ʈ ���赵��
									��� ������ å�� ������! ���θ� ���� �� ������ ���� �ϸ� �� ��ȹ���� ���� ��ü������ ���� å! �ܾ�����,
									�ǹ� 2�⺸�� �� å �� ���� �����ϴ�.</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V122"><img
									src="/upload/BOOK/122/20170103180756123755B.png" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V122"> <em>Do
									it! C ��� �Թ�</em> <span class="book_cmnt"> �ǹ� 20��, ���� ���α׷��Ӱ�
									�ʺ��ڸ� ���� ������! 120�� ���� �� 270�� �׸����� ���� C ���α׷��� �⺻!</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V261"><img
									src="/upload/BOOK/254/20180418134236360048B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V261"> <em>Do
									it! ����ĳ�� 2019</em> <span class="book_cmnt"> ĳ�� ����� ��ɾ �𸣸�
									������ �˿� ������!<br /> ����, ���׸���, ���, ���, ����, ���� �ǹ� ������ �Ѹ����� �Թ���!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V260"><img
									src="/upload/BOOK/259/20180521102342197108B.png" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V260"> <em>������
									����, ������ �ϴ°�?</em> <span class="book_cmnt"> * ���, ����, ����, ����,
									����, ������� �� �̱��� �ѱ��� 10�� ���� ���� ��� ����! * <br /> ���� �޾�� ������ �𸥴�.
									������ �����̶� �����̸� ������ �����ڰ� ���� ���� �ϴ���. �̱� �ִ� ������ ȸ�縦 ����, ���� �ִ� ������
									ȸ���� �������� �ð� �ִ� ���ڴ� �̱� ����� �ѱ� ������� ������ ������ ���� �ǹ� ��ʸ� �����ߴ�.
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V197"><img
									src="/upload/BOOK/197/20180213182421672750B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V197"> <em>Do
									it! ����Ʈ���� �� ������ �Թ� - ���� ������</em> <span class="book_cmnt"> ��
									������ �о� ����Ʈ����! ���� ���������� ���ƿ���! �ֽ� �� ������ Ʈ���带 �ݿ��� 6�� ����� ��Ҵ�!</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V192"><img
									src="/upload/BOOK/192/20180207134028338457B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V192"> <em>���ü��
									�����ΰ�?</em> <span class="book_cmnt"> �Ƹ��� ��Ʈ��ũ �о� ����Ʈ���� 1��!<br />
									�� ���� ������� ���� �ָ��ϴ� ���ü�� �Թ���, ���� ���� ���!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V100"><img
									src="/upload/BOOK/100/20160217113134431648B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V100"> <em>�ȴ�!
									���� �ɷ���</em> <span class="book_cmnt"> ���� �о� 1��!<br /> �����͸�
									�����Ӱ� �ٷ��<br /> �츮 �繫�� ������� ���� ��� �����!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V119"><img
									src="/upload/BOOK/119/20161222091057610785B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V119"> <em>Do
									it! HTML5+CSS3 �� ǥ���� ���� &lt;������&gt;</em> <span class="book_cmnt">
									�� �о� 1�� ����! <br /> HTML 5.1 ���� ǥ�ؾ����� ���� ����!<br /> ���� �⺻��ŭ��
									�����ڿ��� ������� �����<br /> <br /> ��������, ���л��� ���� ���� å! �� �о� 1�� ������
									��Do it! HTML5+CSS3 �� ǥ���� �������� ���� ���������� ���ƿԴ�! ���Ǻ��� �� ���� �� �ǿ�����
									������ ����, ���л��� �����ϴ� ���� ���� �ֽ� ǥ���� �ݿ��Ǿ���. ������ HTML5�� �ֽ� ǥ���̶�� �˰�
									�־��ٸ� ������ �ٲ�� �� ��! ���� HTML 5.1 ������ �ֽ����� ���� ǥ�ؾ��̴�. �ֽ� ǥ�ؿ� ����
									���׷��̵�� ������ ġ���� ���� ���踦 ���� �� å���� �� �� ��� �ʿ� ���� �� ���� �Թ�����!
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V111"><img
									src="/upload/BOOK/111/20160829103349971513B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V111"> <em>�ȴ�!
									�Ŀ�����Ʈ �ɷ���</em> <span class="book_cmnt"> �Ŀ�����Ʈ �о� 1��!<br />
									����� �ٲٸ� ����� �޶����ϴ�.<br /> �ɷ��ڰ� ���ϴ� ��� �״��,<br /> ���ȴ�! �Ŀ�����Ʈ
									�ɷ��ڡ�
							</span>
						</a>
						</li>
						<li>
							<p class="book_img">
								<a href="#view" class="BtnPageView" alt="V185"><img
									src="/upload/BOOK/185/20180125091552143711B.jpg" alt="" /></a>
							</p> <a href="#view" class="BtnPageView" alt="V185"> <em>Do
									it! Vue.js �Թ�</em> <span class="book_cmnt"> Vue.js ���� ����������
									���� ���� Vue.js ���� ������ �ٽ� ���Ͽ� �����! <br /> �ǹ��� 3�� �ϼ�! �Թ��� 7�� �ϼ�!
									�ٻ� �������� �ð� ���� �Թ���
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

			<!-- �ٷΰ��� �޴� : s -->
			<div id="short_cut_cnt">
				<div class="container">
					<ul>
						<li><a href="/72_Menu/BoardWrite/PUB"><img
								src="${pageContext.request.contextPath}/images/ico_sample.png"
								alt=""><span><em>���� ����, ������� ���� ����</em> <b>����
										���� / ���� �ڷ�</b> ��û�ϱ�</span></a></li>
						<li><a href="http://cafe.naver.com/doitstudyroom"
							target="_blank"><img
								src="${pageContext.request.contextPath}/images/ico_cafe.png"
								alt=""><span><em>���͵� ī��</em> <b>DO IT! ���͵��</b></span></a></li>
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
								class="badge badgeS badge_203">����</em> [����� ����] Do it! �ڹ� ���α׷���
								�Թ�
						</a> <span class="date">2018.07.23</span></li>
						<li><a href="#view" class="btnBoardView" seq="528"> <em
								class="badge badgeS badge_201">����</em> IT ���� ���ڸ� ã���ϴ�. (����
								���α׷���, ������ ���α׷��� ��)
						</a> <span class="date">2018.07.16</span></li>
						<li><a href="#view" class="btnBoardView" seq="527"> <em
								class="badge badgeS badge_202">�̺�Ʈ</em> [���� PDF] �ȴ�! �ϴ�� �������� ����
								�ڵ�ȭ
						</a> <span class="date">2018.07.05</span></li>
						<li><a href="#view" class="btnBoardView" seq="523"> <em
								class="badge badgeS badge_203">����</em> [����� ����] �ȴ�! �ϴ�� �������� ����
								�ڵ�ȭ
						</a> <span class="date">2018.07.04</span></li>
						<li><a href="#view" class="btnBoardView" seq="522"> <em
								class="badge badgeS badge_201">����</em> ��� ���� - IT �о� ���� ��ȹ������,
								������ �� �����
						</a> <span class="date">2018.07.03</span></li>
						<li><a href="#view" class="btnBoardView" seq="518"> <em
								class="badge badgeS badge_203">����</em> ����� ���� / ������ ����, ������ �ϴ°�?
								(��÷�� ��ǥ)
						</a> <span class="date">2018.05.28</span></li>

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
		<!-- ������ ���� : e -->

		<!-- footer : s -->
		<div id="footer">
			<div class="footer_menu">
				<div class="container">
					<ul>
						<li><a href="/11_Menu/Location/PUB">ã�ƿ��ô� ��</a></li>
						<li><a href="/73_Menu/Privacy/PUB">����������޹�ħ</a></li>
						<li><a href="/73_Menu/Agreement/PUB">�̿���</a></li>
					</ul>
					<div class="short_cut_ftr">
						<a href="/73_Menu/WriterApply/PUB">���ڽ�û</a>
						</li> <a
							href="https://docs.google.com/forms/d/e/1FAIpQLSc5ybZjSZqnV4ioXjSaIwKLjByN5mS01qByW33J3gtYdI3avA/viewform">���ڽ�û</a>
						<a href="/72_Menu/BoardWrite/PUB">�������/�����ڷ� ��û</a>
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
						<span>(150-806) ����� �������� ���� 41�� 11 SK V1 ���� W�� 323ȣ</span> <br
							class="none_br" /> <span>TEL (02)325-1722</span> <span>FAX
							(02)326-1723</span><br /> <span>����ڵ�Ϲ�ȣ 105-87-44487</span> <span>��ǥ��
							: ������ / <br class="none_br" />Email : <a
							href="mailto:easy@easyspub.co.kr">easy@easyspub.co.kr</a>
						</span><br /> <span>Copyright(c)2015 �������ۺ��̢� EasysPublishing
							Co., Ltd. All Rights Reserved</span>
					</div>
				</div>
			</div>

			<!-- mobile ȭ�鿡�� �α��� -->
			<p class="btm_btn_area ver_mobile">
				<input type="button" name="MobileLogin" value="�α���" title="�α���"
					class="btn btnTopLogin" /> | <input type="button"
					name="MobileJoin" value="ȸ������" title="ȸ������" class="btn btnTopJoin" />
				<input type="button" name="" id="edu002A03����������" value="����������"
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
