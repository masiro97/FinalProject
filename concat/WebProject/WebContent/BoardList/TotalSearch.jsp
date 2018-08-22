<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@page import="model.BoardDTO"%>
<%@page import="model.BoardDAO"%>
<%@page import="vo.PageInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<% 
	ArrayList<BoardDTO> List = (ArrayList<BoardDTO>) request.getAttribute("datas");
%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no" />
<meta name="viewport"
	content="width=device-width, user-scalable=yes, target-densitydpi=device-dpi">

<!-- 따릉이 css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/login_css/common.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/login_css/jquery-ui.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/login_css/style_kr_v2.css" />


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
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ie8.css" />
    <script src="${pageContext.request.contextPath}/easy_js/html5.js"></script>
    <script src="${pageContext.request.contextPath}/easy_js/respond.min.js"></script>
<![endif]-->
<title>이지스퍼블리싱 :: 통합검색</title>
</head>

<body>
	<div class="wrap" id="pub">
		<!-- Gnb 영역 : s -->
		<div class="gnb_wrap">
			<div id="gnb">
				<div class="container">
					<h1>
						<a href="/Main/PUB"><img
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
													<li><a href="/11_Menu/CompanyInfo/PUB">이지스퍼블리싱(주)
															소개</a></li>
													<li><a href="/11_Menu/EngCompanyInfo/PUB">About
															EasysPublishing</a></li>
													<li><a href="/11_Menu/BrandInfo1/PUB">이지스퍼블리싱 소개</a></li>
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
										<li><a href="/40_Menu/QnaWrite/PUB">질문답변</a></li>
										<li class="last"><a href="/50_Menu/VideoList/PUB">동영상
												강의</a></li>
									</ul>
								</div></li>
							<li><a href="#" id="edu002A03이지스에듀" class="btnMainLink"><img
									src="${pageContext.request.contextPath}/images/logo_edu.png"
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
										<li class="last"><a href="/40_Menu/QnaWrite/PUB">질문답변</a></li>
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
							<input type="button" name="WebLogin" value="로그인" title="로그인"
								class="btnTopLogin" /> | <input type="button" name="WebJoin"
								value="회원가입" title="회원가입" class="btnTopJoin" />
						</p>
						<p class="search_area ver_web">
							<input type="text" id="TotalKeyword1" name="TotalKeyword1"
								class="inputbox_none btnTotalKeyword"
								title="출판사 &quot;이지스퍼블리싱&quot;의 책들만 검색이 가능합니다."
								value="도서명, 저자 등 검색" onfocus="this.value='';"
								onblur="if(this.value=='') this.value='도서명, 저자 등 검색';" /> <a
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
						value="도서명, 저자 등 검색" onfocus="this.value='';"
						onblur="if(this.value=='') this.value='도서명, 저자 등 검색';" />
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

								$('.btnTopLogin')
										.click(
												function(e) {
													window.location = "/81_Menu/Login/PUB?fm_url=/71_Menu/SearchList/PUB";
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
		<!-- Gnb 영역 : e -->

		<!-- 컨텐츠 영역 : s -->
		<div id="contents_wrap">
			<div class="menu_loacation">
				<div class="container">
					<a href="/Main/PUB" class="home" title="메인페이지로 이동"></a> <span
						class="depth"><b>통합검색</b></span>
				</div>
			</div>

			<div class="contents" id="search_result_wrap">
				<div class="container">
					<h2>통합 검색</h2>

					<div class="cnt_wrap">

						<!-- 검색 결과_ 도서 : s -->
						<div class="search_section" id="book_list_wrap">
							<h3>
								도서
								<div class="txt_result">
									<em>[안드로이드]</em> 검색 결과 <b>10건</b>이 검색되었습니다.
								</div>
							</h3>
							<a href="#MORE" type="book" class="btn btnXS btnGray btnMore">+
								더보기</a>

							<div class="book_list_area">
								<ul>
									<li><a href="#view" class="BtnBookView" alt="V217">
											<div class="img_area">
											<!-- 계속 돌길래 주석 
												<img src="/upload/BOOK/189/20180131225001166137S.jpg"
													onerror="this.src='${pageContext.request.contextPath}/images/no_imageS.png'"
													alt="" />-->
											</div>
											<div class="brief_info">
												<p class="title">
													<em class="badge badge_ebook badgeL">전자책</em> Do it! 안드로이드
													앱 프로그래밍 - 개정 5판
												</p>
												<p class="book_info">
													<span>정재곤</span> <span>2018-02-12</span> <b>28,000 원</b>
													<!--
												<br/><em class="favor">좋아요(3명)</em>
												-->
												</p>
												<span class="txt_area"> 안드로이드 분야에서 베스트셀러 1위를 해오며
													독자들에게 큰 사랑을 받아온 ⟪Do it! 안드로이드 앱 프로그래밍⟫이 안드로이드 8.0 버전인
													‘오레오’와 ‘안드로이드 스튜디오 3.0’ 개발 도구를 사용하여 앱을 만들 수 있도록 최신 내용에 맞추어
													개정되었습니다. </span>
											</div>
									</a></li>


								</ul>
							</div>
						</div>
						<!-- 검색 결과_ 도서 : e -->

						<!-- 검색 결과_ 자료실 : s -->
						<div class="search_section" id="board_list_wrap">
							<h3>
								불편해요
								<div class="txt_result">
									<em>[<%=request.getAttribute("key") %>]</em> 검색 결과 <b><%=request.getAttribute("searchAllCount") %></b>이 검색되었습니다.
								</div>
							</h3>
							<a href="${pageContext.request.contextPath}/cont?command=searchMore&keyWord=<%=request.getAttribute("key") %>"
							 type="data" class="btn btnXS btnGray btnMore">+
								더보기</a>
							<div class="book_list_area">
								<div class="board_box">
							<table>
								<colgroup>
									<col width="50%">
									<col width="25%">
									<col width="25%">
								</colgroup>
								<tbody>
									<tr>
										<th class="center">제목</th>
										<th class="center">작성시간</th>
										<th class="center">아이디</th>
									</tr>

									<%
										for (int i = 0; i < List.size(); i++) {
									%>
									<tr>
										<td class="left"><a
											href="${pageContext.request.contextPath}/cont?command=boardDetail&board_num=<%=List.get(i).getBno()%>">
												<%=List.get(i).getTitle()%>
										</a> <!-- 추가 : 비밀글 접근 제어 하기 위해_2016.04.21_by_JHN --> <input
											type="hidden" id="secretYN_3" name="secretYN_3" value="N">
											<input type="hidden" id="usrSessIDCnt_3"
											name="usrSessIDCnt_3" value="0"> <!-- 끝 : 비밀글 접근 제어 하기 위해_2016.04.21_by_JHN -->
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
							</div>
						</div>
						<!-- 검색 결과_ 자료실 : e -->

						<!-- 검색 결과_ 동영상 : s -->
						<div class="search_section" id="board_list_wrap">
							<h3>
								공지사항
								<div class="txt_result">
									<em>[안드로이드]</em> 검색 결과 <b>5건</b>이 검색되었습니다.
								</div>
							</h3>
							<a href="#MORE" type="movie" class="btn btnXS btnGray btnMore">+
								더보기</a>
							<div class="move_list_area">
								<ul>
									<li><a href="#view" class="BtnMovieView" alt="V470">
											<div class="img_area">
												<!--계속 돌고있길래 우선 주석  
												<img src="/upload/BOOK/189/20180131225001166137S.jpg"
													onerror="this.src='${pageContext.request.contextPath}/images/no_imageS.png'"
													alt="" />-->
											</div>
											<div class="brief_info">
												<p class="title">2018 Do it! 안드로이드 앱 프로그래밍-전면 개정 5판 동영상
													강의</p>
												<p class="info">
													<span>강사 : 정재곤</span> <span>강좌수 : 10강</span> <span>등록일
														: 2018.02.13</span> <span>조회수 : 1,986</span>
												</p>
												<span class="txt_area"> 개정5판(오레오)은 개정4판(누가)에서 안드로이드
													스튜디오 사용법 일부가 변경되었습니다. 따라서 동영상 강의는 개정4판의 동영상 강의를 그대로 들으시면
													됩니다. 단, 안드로이드 스튜디오의 화면 중 일부가 변경되었기 때문에 첫째마당의 첫 번째 앱 동영상은 새로
													제작되었습니다. 변경된 안드로이드 스튜디오 화면에 대해 참조하기 바랍니다. ★ 동영상 강의 전체 들으러
													가기 : https://goo.gl/9JLZuc </span>
											</div>
									</a> <!-- 
									<div class="btn_area">
										<a href="#" class="btn btnS btnBlackRe ico_play"><img src="${pageContext.request.contextPath}/images/ico_play.png" alt="">바로보기</a>
										<a href="#" class="btn btnS btnBlackRe ico_down"><img src="${pageContext.request.contextPath}/images/ico_down.png" alt="">다운로드</a>
									</div>
									--></li>
								</ul>
							</div>
						</div>
						<!-- 검색 결과_ 동영상 : e -->
					</div>

				</div>
			</div>
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
		action="/20_Menu/BookView/PUB" onSubmit="return true;">
		<input type="hidden" id="BOOK_IDX" name="BOOK_IDX" value="" /> <input
			type="hidden" id="BOARD_IDX" name="BOARD_IDX" value="" /> <input
			type="hidden" id="page" name="page" value="1" /> <input
			type="hidden" id="ShKeyfield" name="ShKeyfield" value="" /> <input
			type="hidden" id="ShKeyword" name="ShKeyword" value="" /> <input
			type="hidden" id="ShMaxpage" name="ShMaxpage" value="" /> <input
			type="hidden" id="ShOrderby" name="ShOrderby" value="" />
	</form>

	<script type="text/javascript">
		$(document).ready(
				function() {
					//$('#TotalKeyword1').val('안드로이드');
					//$('#TotalKeyword2').val('안드로이드');

					$('.BtnBookView').click(
							function(e) {
								$('#BOOK_IDX').val(
										$(this).attr('alt').replace("V", ""));
								$('#frmSearch').attr(
										{
											'action' : '/20_Menu/BookView/'
													+ $(this).attr('alt')
															.replace("V", "")
													+ '/PUB',
											'target' : '_blank'
										}).submit();
							});
					$('.BtnMovieView').click(
							function() {
								$('#BOARD_IDX').val(
										$(this).attr('alt').replace("V", ""));
								$('#frmSearch').attr(
										{
											'action' : '/50_Menu/VideoView/'
													+ $(this).attr('alt')
															.replace("V", "")
													+ '/PUB',
											'target' : '_blank'
										}).submit();
							});
					$('.btnMore')
							.click(
									function() {
										$('#TotalPage').val(1);
										$('#TotalPageType').val(
												$(this).attr('type'));
										$('#TotalKeyword').val('안드로이드');
										$('#frmTotalSearch').attr('action',
												'/71_Menu/SearchMoreList/PUB')
												.submit();
									});
				});
	</script>

</body>
</html>