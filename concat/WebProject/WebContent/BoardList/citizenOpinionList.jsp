<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="model.BoardDTO"%>
<%@page import="model.BoardDAO"%>
<%@page import="vo.PageInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<% 
	ArrayList<BoardDTO> List = (ArrayList<BoardDTO>) request.getAttribute("datas");
	PageInfo pageInfo = (PageInfo) request.getAttribute("pageInfo");
	int listCount = pageInfo.getListCount();
	int nowPage = pageInfo.getPage();
	int maxPage = pageInfo.getMaxPage();
	int startPage = pageInfo.getStartPage();
	int endPage = pageInfo.getEndPage();
	System.out.println("listCount : " + listCount + "nowPage : " + nowPage + "maxPage : " + maxPage);
	System.out.println("startPage : " + startPage + "endPage" + endPage);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<meta name="viewport"
	content="width=device-width, user-scalable=yes, target-densitydpi=device-dpi">



<!-- ������ css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}//login_css/common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}//login_css/jquery-ui.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/login_css/style_kr_v2.css" />


<!-- ������ css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}//css/common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}//css/layout_common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}//css/layout_sub.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}//css/layout_popup.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/jquery-ui-1.11.2.css" />
<script type="text/javascript"
	src="http://gc.kis.v2.scr.kaspersky-labs.com/9E773850-0C32-D74E-A93A-09E4CCA19382/main.js"
	charset="UTF-8"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}//easy_js/jquery-1.11.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}//easy_js/jquery-ui-1.11.2.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}//easy_js/jquery.cookie-1.4.1.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}//easy_js/common_func.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}//easy_js/jquery.navgoco-0.2.1.js"></script>
<!--[if lt IE 9]>
	<link rel="stylesheet" type="text/css" href="/css/ie8.css" />
    <script src="/easy_js/html5.js"></script>
    <script src="/easy_js/respond.min.js"></script>
<![endif]-->
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
										<li class="last"><a href="/40_Menu/QnaWrite/PUB">�����ؿ�</a></li>
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
							| <input type="button" name="WebJoin" value="����������" title="����������"
								class="btnTopMyPage" />
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
					<a href="${pageContext.request.contextPath}/MAIN/main.jsp"
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
							<button class="back right"></button>
							<button class="close"></button>
						</div>

						<div class="board_srch">
							<form id="frm" name="frm"
								action="/customer/opinionBoard/opinionBoardList.do"
								accept-charset="utf-8">
								<div class="input w70">
									<input type="text" class="w100" id="searchValue"
										name="searchValue" placeholder="�˻�� �Է����ּ���" value="">
								</div>
								<div class="btn_search">
									<a href="#" id="searchButton" name="searchButton"><img
										src="/images/ic_search.png" alt="">�˻�</a>
								</div>
							</form>
						</div>

						<div class="board_box">
							<table>
								<colgroup>
									<col width="50%">
									<col width="25%">
									<col width="25%">
								</colgroup>
								<tbody>
									<tr>
										<th class="center">����</th>
										<th class="center">�ۼ��ð�</th>
										<th class="center">���̵�</th>
									</tr>

									<%
										for (int i = 0; i < List.size(); i++) {
									%>
									<tr>
										<td class="left"><a
											href="${pageContext.request.contextPath}/cont?command=boardDetail&board_num=<%=List.get(i).getBno()%>">
												<%=List.get(i).getTitle()%>
										</a> <!-- �߰� : ��б� ���� ���� �ϱ� ����_2016.04.21_by_JHN --> <input
											type="hidden" id="secretYN_3" name="secretYN_3" value="N">
											<input type="hidden" id="usrSessIDCnt_3"
											name="usrSessIDCnt_3" value="0"> <!-- �� : ��б� ���� ���� �ϱ� ����_2016.04.21_by_JHN -->
										</td>
										<td><%=List.get(i).getRegdate()%></td>
										<!--[if gt IE 8]><!-->
										<td><%=List.get(i).getMember_id()%></td>
										<!--<![endif]-->
									</tr>
									<%
										}
									%>
								</tbody>
							</table>

						</div>
						<div id="pageList"></div>

						<div class="paging">

							<div id="pagingWeb" class="num" style="display: inline;">
								<a
									href="${pageContext.request.contextPath}/cont?command=citizen&page=<%=startPage %>"
									onclick="linkPage(1); return false;"><img
									src="${pageContext.request.contextPath}/images/first.gif"
									alt="�� ó�� ������"></a>
								<%
									if (nowPage <= 1) {
								%>
								<a href="#"><img
									src="${pageContext.request.contextPath}/images/p_prev.gif"
									alt="���� ������"></a>
								<%
									} else {
								%>
								<a
									href="${pageContext.request.contextPath}/cont?command=citizen&page=<%=nowPage-1 %>"
									onclick="linkPage(1); return false;"><img
									src="${pageContext.request.contextPath}/images/p_prev.gif"
									alt="���� ������"></a>
								<%
									}
								%>
								<%
									for (int a = startPage; a <= endPage; a++) {
										if (a == nowPage) {
								%>
								<span class="on"><a href="#"><strong><%=a%></strong></a></span>
								<%
									} else {
								%>
								<span><a
									href="${pageContext.request.contextPath}/cont?command=citizen&page=<%=a %>"
									onclick="linkPage(4); return false;"><%=a%></a></span>
								<%
									}
								%>
								<%
									}
								%>
								<!-- ���� -->

								<%
									if (nowPage >= maxPage) {
								%>
								<a href="#" onclick="linkPage(6); return false;"><img
									src="${pageContext.request.contextPath}/images/p_next.gif"
									alt="���� ������"></a>
								<%
									} else {
								%>
								<a
									href="${pageContext.request.contextPath}/cont?command=citizen&page=<%=nowPage+1 %>"
									onclick="linkPage(6); return false;"><img
									src="${pageContext.request.contextPath}/images/p_next.gif"
									alt="���� ������"></a>

								<%
									}
								%>
								<a
									href="${pageContext.request.contextPath}/cont?command=citizen&page=<%=maxPage %>"
									onclick="linkPage(5963); return false;"><img
									src="${pageContext.request.contextPath}/images/last.gif"
									alt="������ ������"></a>

							</div>
							<div id="pagingMobile" class="num" style="display: none;">
								<a href="#" onclick="linkPage(1); return false;"><img
									src="${pageContext.request.contextPath}/images/first.gif"
									alt="�� ó�� ������"></a> <a href="#"
									onclick="linkPage(1); return false;"><img
									src="${pageContext.request.contextPath}/images/p_prev.gif"
									alt="���� ������"></a> <span class="on"><a href="#"><strong>1</strong></a></span>
								<span><a href="#" onclick="linkPage(2); return false;">2</a></span>
								<span><a href="#" onclick="linkPage(3); return false;">3</a></span>
								<a href="#" onclick="linkPage(4); return false;"><img
									src="${pageContext.request.contextPath}/images/p_next.gif"
									alt="���� ������"></a> <a href="#"
									onclick="linkPage(5963); return false;"><img
									src="${pageContext.request.contextPath}/images/last.gif"
									alt="������ ������"></a>

							</div>
						</div>
						<c:if test="${empty sessionScope.sid}">
							<div class="btn" style="text-align: center; display: block"
								id="notLogin">
								<a href="#">�۾���</a>
							</div>
						</c:if>
						<c:if test="${not empty sessionScope.sid}">
							<div class="btn" style="text-align: center; display: block">

								<a
									href="${pageContext.request.contextPath}/BoardList/citizenOpinionWrite.jsp">�۾���</a>
							</div>
						</c:if>

						<div class="board_info">
							<ul>
								<li>�ù��ǰ� ���� �Խ����� ȸ�� <span>������ �����Ӱ� �ǰ��� �Խ��� �� �ִ� ����
										����</span>�Դϴ�. ����� ����, ������ ǥ��, ���, ��ġ�� ����, �ݺ��Խù� ���� �����ڿ� ���� �뺸���� ������ ��
									������, Ȩ�������� ���� �ҹ� ���� ���� �Խ�, ���� �� ������Ÿ� �̿����� �� ������ȣ � ���� ���� ��
									74���� �ǰ� 1�� ���� ¡�� �Ǵ� 1õ���� ������ ���ݿ� ó���� �� �ֽ��ϴ�.
								</li>
							</ul>
						</div>

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
			<script type="text/javascript">
				$(document)
						.ready(
								function() {
									$('#notLogin')
											.click(
													function(e) {
														alert("�α����ϼ���");
														window.location = "${pageContext.request.contextPath}/RegisterStep/loginForm.jsp";
													})
								})
			</script>
			<!-- Gnb ���� : s -->
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
														window.location = "${pageContext.request.contextPath}/RegisterStep/MemberRegister01.html";
													});

									$('.btn_search').click(
											function(e) {
												$('.gnb_wrap_search').toggle();
												$('.gnb_wrap_search')
														.removeClass('none');
											});

									$('.btnTotalSearch1')
											.click(
													function(e) {
														if ($('#TotalKeyword1')
																.val() == ""
																|| $(
																		'#TotalKeyword1')
																		.val() == "ű����, ���� �� �˻�") {
															alert("�˻�� �Է��ϼ���.");
															$('#TotalKeyword1')
																	.focus();
															return;
														} else {
															if ($(
																	'#TotalKeyword1')
																	.val() == "ű����, ���� �� �˻�")
																$(
																		'#TotalKeyword1')
																		.val("");

															$('#TotalPage')
																	.val(1);
															$('#TotalPageType')
																	.val("");
															$('#TotalKeyword')
																	.val(
																			$(
																					'#TotalKeyword1')
																					.val());
															$('#frmTotalSearch')
																	.attr(
																			'action',
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
																		.val() == "ű����, ���� �� �˻�") {
															alert("�˻�� �Է��ϼ���.");
															$('#TotalKeyword2')
																	.focus();
															return;
														} else {
															if ($(
																	'#TotalKeyword2')
																	.val() == "ű����, ���� �� �˻�")
																$(
																		'#TotalKeyword2')
																		.val("");

															$('#TotalPage')
																	.val(1);
															$('#TotalPageType')
																	.val("");
															$('#TotalKeyword')
																	.val(
																			$(
																					'#TotalKeyword2')
																					.val());
															$('#frmTotalSearch')
																	.attr(
																			'action',
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
																if ($(this)
																		.val() == "ű����, ���� �� �˻�")
																	$(this)
																			.val(
																					"");

																$('#TotalPage')
																		.val(1);
																$(
																		'#TotalPageType')
																		.val("");
																$(
																		'#TotalKeyword')
																		.val(
																				$(
																						this)
																						.val());
																$(
																		'#frmTotalSearch')
																		.attr(
																				'action',
																				'/71_Menu/SearchList/PUB')
																		.submit();
															}
														}
													});

									$('.btnMainLink').click(
											function(e) {
												var sBrandCode = $(this).attr(
														'id');
												var sBrandUrl = sBrandCode
														.substring(0, 3);
												$.cookie('BrandCode',
														sBrandCode, {
															expires : 365,
															path : '/'
														});

												window.location = "/Main/"
														+ sBrandUrl;
											});
									$('.btBookLink')
											.click(
													function(e) {
														var sBrandCode = $(this)
																.attr('id');
														var sBrandUrl = sBrandCode
																.substring(0, 3);
														$
																.cookie(
																		'BrandCode',
																		sBrandCode,
																		{
																			expires : 365,
																			path : '/'
																		});

														window.location = "/20_Menu/BookList/"
																+ sBrandUrl;
													});
								});
			</script>
			<!-- Gnb ���� : e -->
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
</body>
</html>