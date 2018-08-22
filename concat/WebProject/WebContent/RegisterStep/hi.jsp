<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="euc-kr" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" /> 
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no" />
<meta name="description=" Content="" />
<title>서울자전거 따릉이 - 무인대여시스템</title>
<link href="${pageContext.request.contextPath}/login_css/jquery-ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://gc.kis.v2.scr.kaspersky-labs.com/9E773850-0C32-D74E-A93A-09E4CCA19382/main.js" charset="UTF-8"></script><script type="text/javascript" src="${pageContext.request.contextPath}/login_js/jquery-1.12.4.js"></script> 
<script type="text/javascript" src="${pageContext.request.contextPath}/login_js/jquery-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/login_js/easing/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/login_js/gibberish-aes.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/login_js/jquery.simpler-sidebar.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/login_js/comm.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/login_css/style_kr_v2.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/login_css/common.css" type="text/css">
<!--[if lt IE 9]>
<link href="${pageContext.request.contextPath}/login_css/pw.css" title="ie8chn" rel="stylesheet" type="text/css" />
<script src="${pageContext.request.contextPath}/login_js/html5.js"></script>
<script src="${pageContext.request.contextPath}/login_js/respond.min.js"></script>
<![endif]-->
</head>
<body>
<div class="wrap">   
    
    <div class="container">
    	<div class="content">
		
        <div class="login">
        	<!--웹 : class="top"에"logo" 스타일추가 -->
            <div class="top logo">
            	<!--웹 : 로고이미지추가 -->
                <h3>로그인<img src="/images/logo.png" alt="서울자전거 따릉이"></h3>
                <button class="back"></button>
                <button class="close"></button>
            </div>
            
        	<form name='loginForm' action="/j_spring_security_check" method="POST">
            
            <div class="id">
            	<input type="text" id="memid" name="j_username" placeholder="아이디" />
            </div>
            
            <div class="pw">
            	<input type="password" id="mempw" name="j_password" placeholder="비밀번호" >
            </div>
            
            <div class="login_auto">
            	<input type="checkbox" name="loginchk" id="loginCheck" /><label for="loginCheck" id="logchktext"><span></span>로그인 상태 유지</label>
            </div>
            
            <div class="login_btns" id="loginBtn"><a href="#">로그인</a></div>
            
            <input type="hidden" id="ostype" name="appOsType"  value="web"/> 
            <input type="hidden" id="usrDeviceId" name="usrDeviceId" /> 
            </form>
            
            <ul class="idpw">
            	<li class="srch_id">
            	<a href="/memberRegSelect.do" id="memberReg">회원가입</a>
					</li>
            	<li class="srch_id"><a href="/memberIdFind.do" id="findIdId">아이디 찾기</a></li>
                <li class="srch_pw"><a href="/memberPwFind.do" id="findIdPw">비밀번호 찾기</a></li>
            </ul>
            <div class="join_btns">
            	<ul>
                    <li class="line"><img src="/images/join_line.jpg" alt=""></li>
                    <li class="join_naver"><a href="/naverLogin.do?type=login">네이버 계정으로 로그인</a></li>
                    <li class="join_facebook"><a href="/facebookLogin.do?type=login">페이스북 계정으로 로그인</a></li>
                    <li class="join_kakao"><a href="/kakaoLogin.do?type=login">카카오 계정으로 로그인</a></li>
                </ul>
            </div>

        </div>

        
        </div>
    </div>
    
    
</div>
<!--footer-->
    <div class="footer_wrap">
        <div class="footer">
        	<div class="left">
            <ul>
                <!--<li><a href="">개인정보처리방침</a></li>
                <li class="line"><a href="">이메일주소무단수집거부</a></li>-->
                <li><a href="/app/use/moveUseMenuClauseInfo.do">이용약관</a></li>
                <li class="line"><a href="/app/use/moveUseMenuInsurance.do">보험안내</a></li>
                <li class="line"><a href="/customer/notice/noticeList.do">공지사항</a></li>
                <li class="line"><a href="/customer/donor/donorList.do">도움주신 분</a></li>
                            
            </ul>
            <p>서울특별시 중구 세종대로 110 서울특별시 대표자 박원순, Tel : 1599-0120 (사업자등록번호 : 104-83-00469) 우편번호 04524</p>
            <p>관리책임자:담당자명e-mail@email.co.kr(유선:1599-0120)COPYRIGHT ⓒ 2018 All RIGHTS RESERVED.</p>
            </div>
            <dl>
                <dt>sns</dt>
                <dd class="face" onclick="javascript:moveSnsViewPage('snsFacebook')"><a href="#" id="snsFacebook"> </a></dd>
                <dd class="twit" onclick="javascript:moveSnsViewPage('snsTweeter')"><a href="#" id="snsTweeter"> </a></dd>
            </dl>
        </div>
    </div>
<!--footer-->

<script type="text/javascript">

$(function(){
	var mainType = cookieVal("mainType");
	
	if (mainType == 'text') {
		$(".mainTypeMap").css('display', '');
		$(".mainTypeText").css('display', 'none');
	} else if (mainType == 'map') {
		$(".mainTypeMap").css('display', 'none');
		$(".mainTypeText").css('display', '');
	} else {
		$(".mainTypeMap").css('display', 'none');
		$(".mainTypeText").css('display', '');
	}
});

$(function() {
    $(".back").on("click", goBack);
});

$(function() {
    $(".back.left").on("click", goBackLeft);
});

$(function() {
    $(".back.right").on("click", goBackRight);
});

$(function() {
    $(".pwback").on("click", goBack);
});
$(function() {
    $(".close").on("click", goHome);
});
$(function() {
    $(".logo").on("click", goHome);
});
$(function() {
    $(".alim").on("click", goAlim);
});
$(function() {
    $("#changeLang").on("click", changeLang);
});
function osInfo(pOSobj){
    var obj = JSON.parse(pOSobj);
    window.osType = obj.osInfo;
    
    //대여소 찿기 PDF 버튼 숨기기.
    if($("#pdfDiv") !== 'undefined') {
	    $("#pdfDiv").css("display","none");
    }
};

function goBack(e) {
	//e.preventDefault();
    //alert("2->"+e.type +":"+ window.osType);
    window.osType = '';
    //alert(window.osType);
    switch(window.osType){
    case "web" :
    	window.history.go(-1);      
        break;
    case "android" :
        window.android.goBack();
        break;
    case "ios" : 
        window.location = 'toApp://?{"call":"goBack"}';
        break;
    case "" :
    	window.history.go(-1);      
        break;
    }
}

function goBackLeft(e) {
    //e.preventDefault();
    //alert("2->"+e.type +":"+ window.osType);
    switch(window.osType){
    case "web" :
        window.location.href='/main.do';     
        break;
    case "android" :
    	window.location.href='/main.do';
        break;
    case "ios" : 
    	window.location.href='/main.do';
        break;
    case "" :
    	window.location.href='/main.do';      
        break;    
    }
}

function goBackRight(e) {
    //e.preventDefault();
    //alert("2->"+e.type +":"+ window.osType);
    switch(window.osType){
    case "web" :
        window.location.href='/main.do';     
        break;
    case "android" :
    	window.location.href='/main.do';
        break;
    case "ios" : 
    	window.location.href='/main.do';
        break;
    case "" :
    	window.location.href='/main.do';      
        break;    
    }
}

function goHome(e) {
    //e.preventDefault();
    //alert("2->"+e.type +":"+ window.osType);
    switch(window.osType){
    case "web" :
        window.location.href='/main.do';     
        break;
    case "android" :
    	window.location.href='/main.do';
        break;
    case "ios" : 
    	window.location.href='/main.do';
        break;
    case "" :
    	window.location.href='/main.do';      
        break;    
    }
}

function goAlim(e) {
    //e.preventDefault();
    //alert("2->"+e.type +":"+ window.osType);
    switch(window.osType){
    case "web" :
        window.location.href='/app/mybike/getPushHistory.do';     
        break;
    case "android" :
    	window.location.href='/app/mybike/getPushHistory.do';
        break;
    case "ios" : 
    	window.location.href='/app/mybike/getPushHistory.do';
        break;
    case "" :
        window.location.href='/app/mybike/getPushHistory.do';     
        break;    
    }
}

function changeLang(e) {
	var lang = 'en'

	switch(window.osType){
    case "web" :
        window.location.href='/main.do?lang='+lang;     
        break;
    case "android" :
    	window.location.href='/main.do?lang='+lang;
        break;
    case "ios" : 
    	window.location.href='/main.do?lang='+lang;
        break;
    case "" :
        window.location.href='/main.do?lang='+lang;     
        break;    
    }
}

function moveSnsViewPage(flag){
			
	var tUrl = "";
	if(flag === 'snsFacebook') {
		tUrl = "https://www.facebook.com/seoulbike";
    } else {
    	tUrl = "https://twitter.com/seoulbike";
    }
	switch(window.osType){
	    case "web" :
	    	window.open(tUrl,"_blank");
	        break;
	    case "android" :
	        var pData = {targetUrl  :tUrl, returnFnc : "", title : "서울자전거sns" };
	        window.android.openWebviewPopup(JSON.stringify(pData));
	        break;
	    case "ios" : 
	        var iosUrl = 'toApp://?{"targetUrl" : "'+tUrl+'","title" : "서울자전거sns", "returnFnc" : "", "call":"openWebviewPopup"}';
	        window.location = iosUrl;
	        break;
    }
}
		
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/login_js/common_spb.js"></script>
<script type="text/javascript">
	$(function(e){
		login.initBtn();
		
		var urlParam = getUrlParams();
		if(urlParam["fail"] == "true"){
			window.osType = '';
			alert('아이디 또는 비밀번호를 다시 확인하세요.'); 
			$("[name='j_username']").focus();
			return false;
		}
		
		if(urlParam["member"] == "true"){
			alert('회원으로 로그인 하세요.'); 
			$("[name='j_username']").focus();
			return false;
		}
		
		if(urlParam["lost"] == "true"){
			alert('핸드폰 분실 신청된 회원입니다.'); 
			$("[name='j_username']").focus();
			return false;
		}
		window.osType = '';
		if(urlParam["appOsType"] == "android" || window.osType == "android"){
			window.android.getLogin();
		} else if(urlParam["appOsType"] == "ios" || window.osType == "ios"){
			jsonData = {"call" : "getLogin"};
			window.location = "toApp://?" + JSON.stringify(jsonData);
			$("#ostype").val(urlParam["appOsType"]);
		} else {
			idCheck()
		}
		
	});
	
	var login = {};
	login.initBtn = function () {
		$("#loginBtn").on("click", this.loginFnc);
	};
	
	
	login.loginFnc = function(e) {
		e.preventDefault();
		e.stopPropagation();
		
		var regExp = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
		var usrId = $("[name='j_username']").val();
		var usrType = "01";
		var urlParam = getUrlParams();
		
		if(usrId.substring(0,3) == "010"){
			if(usrType == "01"){
				alert('회원 아이디를 입력해주세요.'); 
				$("[name='j_username']").val("");
				$("[name='j_password']").val("");
				$("[name='j_username']").focus();
				
				return false;
	    	}
		}
		
		if($("[name='j_username']").val() == ""){
			alert('로그인 아이디를 입력해주세요.');
			$("[name='j_username']").focus();
			
			return false;
		}else if($("[name='j_password']").val() == ""){
			alert('로그인 비밀번호를 입력해주세요.');
			$("[name='j_password']").focus();
			
			return false;
		}else{
			//로그인 유지 체크
			var usrId = $("[name='j_username']").val();
			var usrPassword = $("[name='j_password']").val();
			var encodePassword = AES_Encode(usrPassword);
			var reEncodePassword = encodePassword.replace(/[\r|\n]/g, "");
			var jsonData = null;
			var loginInfo = null;
			var expdate = new Date();
			expDate = new Date(parseInt(expdate.getTime()));
			
			if($("#loginCheck").is(':checked')){
				jsonData = {"id" : usrId, "pw" : reEncodePassword, "auto" : "Y", "call" : "setLogin"};
				loginInfo = JSON.stringify(jsonData);
				
				if(urlParam["appOsType"] == "android"){
					window.android.setLogin(loginInfo);
				} else if(urlParam["appOsType"] == "ios"){
					window.location = "toApp://?" + loginInfo;
				} else {
					expDate.setFullYear(expDate.getFullYear() + 3);
					SetCookie("SPBcookieSaveid", loginForm.memid.value, expDate);
					SetCookie("SPBcookieSavepw", AES_Encode(loginForm.mempw.value), expDate);
					loginSubmit();
				}
			} else {
				jsonData = {"id" : "", "pw" : "", "auto" : "N", "call" : "setLogin"};
	    		loginInfo = JSON.stringify(jsonData);
				
	    		if(urlParam["appOsType"] == "android"){
					window.android.setLogin(loginInfo);
				} else if(urlParam["appOsType"] == "ios"){
					window.location = "toApp://?" + loginInfo;
				} else {
					expDate.setDate(expDate.getDate() -1);//cookie delete
					SetCookie("SPBcookieSaveid", loginForm.memid.value, expDate);
					SetCookie("SPBcookieSavepw", AES_Encode(loginForm.mempw.value), expDate);
					loginSubmit();
				}
			}
		}
	};
	
	function loginResultInfo(json) {
		var radioValue = "01";
		var deJson = decodeURIComponent(json);
		var loginInfo = $.parseJSON(deJson.toString());
		//push 메세지용 사용자 디바이스 Id,osType
	    var deviceId = loginInfo.token;
	    var deviceOsType = loginInfo.osType;
	
	    $("#usrDeviceId").val(deviceId);
	    $("#ostype").val(deviceOsType);
	    
    	if(loginInfo.id !== "" && loginInfo.auto === "Y"){
			$("[name='j_username']").val(loginInfo.id);
			$("[name='j_password']").val(AES_Decode(loginInfo.pw));
			$("#loginCheck").attr('checked', true);
			
			//자동로그인
			var urlParam = getUrlParams();
			if(urlParam["logout"] !== "true"){
				$("#loginBtn").trigger("click");
			}
		}
	
	};
	 
	function loginSetSuccess(json){
		var deJson = decodeURIComponent(json);
		var saveLoginInfo = $.parseJSON(deJson.toString());
		loginSubmit();
	};
	
	function loginSubmit(){
		$("[name='loginForm']").attr("action", "/j_spring_security_check");
		$("[name='loginForm']").submit();
	}
	
	function idCheck(){
		var loginid = cookieVal("SPBcookieSaveid");
		var loginpw = cookieVal("SPBcookieSavepw");
		if(loginid != ""){
			$("#loginCheck").attr('checked', true);
			document.loginForm.memid.value = loginid;
			document.loginForm.mempw.value = AES_Decode(loginpw);
			$("[name='j_username']").focus();
			$("[name='j_password']").focus();
			
			//자동로그인
			var urlParam = getUrlParams();
			if(urlParam["logout"] !== "true"){
				$("#loginBtn").trigger("click");
			}
		}
	}
</script>

</body>
</html>
