<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="model.BoardDTO"%>
<%@page import="model.BoardDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<meta name="viewport"
	content="width=device-width, user-scalable=yes, target-densitydpi=device-dpi">

<!-- ������ js -->

<script type="text/javascript"
	src="${pageContext.request.contextPath}/easy_js/select/jquery.selectify.js"></script>
<script
	src="${pageContext.request.contextPath}/easy_js/select/jquery.styled-select-box_gray.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/easy_js/easing/jquery.easing.1.3.js"></script>

<!-- ������ css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/login_css/common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/login_css/jquery-ui.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/login_css/style_kr_v2.css" />


<!-- ������ css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/layout_common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/layout_sub.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/layout_popup.css" />
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
	<link rel="stylesheet" type="text/css" href="/css/ie8.css" />
    <script src="/easy_js/html5.js"></script>
    <script src="/easy_js/respond.min.js"></script>
<![endif]-->


<script type="text/javascript">

$(document).ready(function(){
	$('#tx_editor_form').on('submit',function(){
		
		if($('#qestnTitle').val()==""){
			alert("������ �Է��ϼ���");
			$('#qestnTitle').focus();
			return false;
		}	
		if($('#qestnContent').val()==""){
			alert("������ �Է��ϼ���.");
			$('#qestnContent').focus();
			return false;
		}
	})
});
</script>


<!-- daumeditor -->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/daumeditor/css/editor.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/daumeditor/easy_js/editor_loader.js?environment=production"
	charset="utf-8"></script>
<script type="text/javascript">
	var currentPageName = "opinionboard";
</script>
<title>�������ۺ��� :: ��������/�̺�Ʈ</title>
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
										<li><a href="#">ȸ��Ұ�</a>
											<div>
												<ul class="depth03">
													<li><a href="/11_Menu/CompanyInfo/PUB">�������ۺ���(��)
															�Ұ�</a></li>
													<li><a href="/11_Menu/EngCompanyInfo/PUB">About
															EasysPublishing</a></li>
													<li><a href="/11_Menu/BrandInfo1/PUB">�������ۺ��� �Ұ�</a></li>
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
										<li><a
											href="${pageContext.request.contextPath}/BoardList/citizenOpinionList.jsp">�����ؿ�</a></li>
										<li class="last"><a href="/50_Menu/VideoList/PUB">������
												����</a></li>
									</ul>
								</div></li>
							<li><a href="#" id="edu002A03����������" class="btnMainLink"><img
									src="${pageContext.request.contextPath}/images/logo_edu.png"
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
								class="inputbox_none btnTotalKeyword"
								title="���ǻ� &quot;�������ۺ���&quot;�� å�鸸 �˻��� �����մϴ�."
								value="������, ���� �� �˻�" onfocus="this.value='';"
								onblur="if(this.value=='') this.value='������, ���� �� �˻�';" /> <a
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
						value="������, ���� �� �˻�" onfocus="this.value='';"
						onblur="if(this.value=='') this.value='������, ���� �� �˻�';" />
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

								$('.btnTopLogout').click(function(e) {
									window.location = "/81_Menu/Logout/PUB";
								});
								$('.btnTopMyPage')
										.click(
												function(e) {
													window.location = "/91_Menu/MemberModify/PUB";
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
														$('#frmTotalSearch')
																.attr('action',
																		'/71_Menu/SearchList/PUB')
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
															$('#frmTotalSearch')
																	.attr(
																			'action',
																			'/71_Menu/SearchList/PUB')
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
		<div id="contents_wrap">
			<div class="menu_loacation">
				<div class="container">
					<a href="${pageContext.request.contextPath}/MAIN/main.html"
						class="home" title="������������ �̵�"></a> <span class="depth pointer"
						onClick="document.location.href='/11_Menu/CompanyInfo/PUB';">ȸ��Ұ�</span>
					<span class="depth"><b>��������/�̺�Ʈ</b></span>
				</div>
			</div>

			<div class="container">
				<div class="content">

					<div class="board">
						<div class="top">
							<h3>�ù��ǰ߼���</h3>
							<button class="back"></button>
							<button class="close"></button>
						</div>

						<form id="tx_editor_form" name="tx_editor_form" method="post"
							action = "${pageContext.request.contextPath}/cont">
							<input type="hidden" name="command" value="writeOK">
							
							
							<input type="hidden" name="consentYn" /> <input type="hidden"
								name="secretYN" value="" />
							<!-- �߰� : ��б� ���� ����_2016.04.22_by_JHN -->
							<input type="hidden" name="cateCD" value="" />
							<!-- �߰� : ���� ī�װ� ����� �ش� �� ����_2016.05.30_by_JHN -->
							<input type="hidden" id="usrQnaSeq" name="usrQnaSeq" value="0" />
							<input type="hidden" id="mode" name="mode" value="insert" /> <input
								type="hidden" id="bbsClsCD" name="bbsClsCD" value="CTM_003" />
							<input type="hidden" id="currentPageName" name="currentPageName"
								value="opinionboard" /> <input type="hidden" id="wMode"
								name="wMode" value="" />

							<div class="write_box noline">
								<table>
									<colgroup>
										<col width="25%">
										<col width="75%">
									</colgroup>
									<tr>
										<th class="first">����</th>
										<td class="first"><select id="cateCDList"
											name="cateCDList">
												<option value="">����</option>
												<option value="OPI_006">�̿���</option>
												<option value="OPI_007">�뿩��</option>
												<option value="OPI_008">��������</option>
												<option value="OPI_009">Ȩ������,��</option>
												<option value="OPI_010">���,����</option>
												<option value="OPI_011">��å����</option>
												<option value="OPI_012">��Ÿ����</option>
										</select> <script>
											$("select").styledSelect();
										</script></td>
									</tr>
									<tr>
										<th>����</th>
										<td><div class="input w100">
												<input type="text" class="w100" id="qestnTitle"
													name="qestnTitle" value="">
											</div></td>
									</tr>
									<tr>
										<th>���̵�</th>
										<td>${sid}</td>
									</tr>
									<tr>
										<th>����</th>
										<td><div class="input w100">
												<textarea class="w100" id="qestnContent" name="qestnContent"
													value="" style="height: 400px;"></textarea>
											</div></td>
									</tr>
									<div id="tx_attach_div" class="tx-attach-div">
										<!-- <div id="tx_attach_txt" class="tx-attach-txt">���� ÷��</div> -->
										<div id="tx_attach_box" class="tx-attach-box">
											<div class="tx-attach-box-inner">
												<div id="tx_attach_preview" class="tx-attach-preview">
													<p></p>
													<img
														src="${pageContext.request.contextPath}/images/icon/editor/pn_preview.gif"
														width="147" height="108" unselectable="on" />
												</div>
												<div class="tx-attach-main">
													<div id="tx_upload_progress" class="tx-upload-progress">
														<div>0%</div>
														<p>������ ���ε��ϴ� ���Դϴ�.</p>
													</div>
													<ul class="tx-attach-top">
														<li id="tx_attach_delete" class="tx-attach-delete"><a>��ü����</a></li>
														<li id="tx_attach_size" class="tx-attach-size">����: <span
															id="tx_attach_up_size" class="tx-attach-size-up"></span>/<span
															id="tx_attach_max_size"></span>
														</li>
														<li id="tx_attach_tools" class="tx-attach-tools"></li>
													</ul>
													<ul id="tx_attach_list" class="tx-attach-list"></ul>
												</div>
											</div>
										</div>
									</div>
									<!-- ÷�ιڽ� �� -->
									<tr id="fileattach">
										<th>���� ÷��</th>
										<td><input type="file" id="imgFile" name="imgFile"
											accept="image/*" multiple="camera" style="border: none;">

										</td>
									</tr>
									<tr>
										<th>��������</th>
										<td><input type="checkbox" name="secretInfo"
											id="secretInfo" value="Y" checked /> <label for="secretInfo"><span></span>�����</label>
										</td>
									</tr>
								</table>
							</div>

							<div class="btns">
							<input type="hidden" name ="write_id" value ="${sid}">
								<a href="${pageContext.request.contextPath}/cont?command=citizen"
									class="cancel" id="goList">���</a> 
									<input type="submit"
									class="write" id="submitButton" value="�۾���"
									style="color: #666; width: 200px; background-color: #72ebc9;     display: inline-block; cursor: pointer; height: 50px; line-height: 50px; margin: 0; padding: 0; 
									text-align: center; font-size: 100%; font-family: 'notokr-regular', sans-serif;"
									>
							</div>
						</form>

					</div>


				</div>
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
					<input type="button" name="MobileLogin" value="�α׾ƿ�" title="�α׾ƿ�"
						class="btn btnTopLogout" /> | <input type="button"
						name="MobileJoin" value="����������" title="����������"
						class="btn btnTopMyPage" /> <input type="button" name=""
						id="edu002A03����������" value="����������" title="����������"
						class="btn btn_short_cut btnMainLink" />
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

		<script type="text/javascript">
			$(document).ready(
					function() {
						$('.btnSearch').click(
								function() {
									if ($('#sh_keyword').val() == "") {
										alert("�˻�� �Է��ϼ���.");
										$('#sh_keyword').focus();
										return;
									}
									$('#page').val('1');
									$('#frmSearch').attr('action',
											'/12_Menu/BoardList/C200/PUB')
											.submit();
								});
						$('#sh_keyword').keyup(
								function(e) {
									if (e.keyCode == 13) {
										$('#page').val(1);
										$('#frmSearch').attr('action',
												'/12_Menu/BoardList/C200/PUB')
												.submit();
									}
								});
						$('.btnView').click(
								function() {
									$('#frmSearch').attr(
											'action',
											'/12_Menu/BoardView/C200/'
													+ $(this).attr('seq')
													+ '/PUB').submit();
								});
						$('.BtnPageMove').click(
								function() {
									$('#page').val(
											$(this).attr('alt')
													.replace("P", ""));
									$('#frmSearch').attr('action',
											'/12_Menu/BoardList/C200/PUB')
											.submit();
								});
					});
		</script>
	<script type="text/javascript">
			/* ������ �Լ� */
			/*
			function saveContent() { 
				if(confirm("���� �Ͻðڽ��ϱ�?")){
					Editor.save(); 
				}
			}
			*/
			
			function validForm(editor) {
				if($("#cateCDList").val() === ''){
	    			alert('�ù��ǰ� ������ "����"�� ������ �ּ���.');
	    			return false;
	    		}
				if($.trim($("#qestnTitle").val())==''){
					$("#qestnTitle").focus();
					alert('������ �Է��� �ּ���.');
					return false;
				}
				/* if($("#qestnTextContent").val()=='') {
					alert('������ �Է��� �ּ���.');
					return false;
				} */
				/* ���� ������ �ԷµǾ����� �˻��ϴ� �κ� */
				var validator = new Trex.Validator();
				var content = editor.getContent();
				if(!validator.exists(content)) {
					alert('������ �Է��� �ּ���.');
					alert("������ �Է��� �ּ���.");
					return false;
				}
				var mode = $("#tx_editor_form").children("#mode").val();
				if(mode=='insert' || mode=='update'){
					$("#tx_editor_form").attr('action','/customer/opinionBoard/opinionBoardPersist.do').submit();
				} else {
					alert("��� ���� �������� �ʾҽ��ϴ�.");
					return false;
				}
				return true;
			}
			
			function setForm(editor) {
				document.getElementById("qestn_TEXT_content").disabled=true;
		        var i, input;
		        var form = editor.getForm();
		        var qestnHTMLContent = editor.getContent();
		        var textarea = document.createElement('textarea');
		        textarea.name = 'qestnHTMLContent';
		        textarea.value = qestnHTMLContent;

		        if(document.getElementsByName("qestnHTMLContent").length == 0){
			        form.createField(textarea);
		        }
		        
		       /*
		       $('[name="qestnHTMLContent"]').attr('style', 'display:none');
		       var images = editor.getAttachments('image');
		        for (i = 0; i < images.length; i++) {
		            if (images[i].existStage) {
		                //alert('attachment information - image[' + i + '] \r\n' + JSON.stringify(images[i].data));
						iinput = document.createElement('input');
		                input.type = 'hidden';
		                input.name = 'attach_image_info';
		                input.value = JSON.stringify(images[i].data);
		                form.createField(input);
		            }
		        }
		         var files = editor.getAttachments('file');
		        for (i = 0; i < files.length; i++) {
		            input = document.createElement('input');
		            input.type = 'hidden';
		            input.name = 'attach_file';
		            input.value = files[i].data.attachurl;
		            form.createField(input);
		        } 
		        */
		         
		      //�̹���, ���� ���ε� _cms_20161108
		       var edtList = Editor.getAttachBox().datalist;
		        var imglist =Editor.getAttachments('image', true);
		        var filelist =Editor.getAttachments('file', true);
		        
		         for( f = 0; f < edtList.length; f++ ){
		        	for(k = 0; k < imglist.length; k++){
		        		if(edtList[f].data.dispElId == imglist[k].data.dispElId){
			        		 var entry = edtList[f];
				            	 input = document.createElement('input');
					             input.type = 'hidden';
					             input.name = 'attach_image_info';
					             input.value = JSON.stringify(edtList[f].data);
					             form.createField(input);
		        		}
		        	 }
		         } 
		         
		         for( f = 0; f < edtList.length; f++ ){
			        	for(k = 0; k < filelist.length; k++){
			        		if(edtList[f].data.dispElId == filelist[k].data.dispElId){
				        		 var entry = edtList[f];
					            	 input = document.createElement('input');
						             input.type = 'hidden';
						             input.name = 'attach_file';
						             input.value = JSON.stringify(edtList[f].data);
						             form.createField(input);
		        		}
		        	}
		        }
		         
		        return true;
			}
		</script>	
</body>
</html>