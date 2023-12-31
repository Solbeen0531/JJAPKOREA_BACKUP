<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <!-- jQuery 스크립트 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function() {
            $(".person-tab li").click(function() {
                // 모든 person-tab 항목에서 active 클래스를 제거합니다.
                $(".person-tab li").removeClass("active");
                
                // 클릭한 person-tab 항목에 active 클래스를 추가합니다.
                $(this).addClass("active");
                
                // 클릭한 person-tab 항목의 data-contentnumber를 가져옵니다.
                var contentNumber = $(this).data("contentnumber");
                
                // 모든 tab-cont 항목에서 active 클래스를 제거합니다.
                $(".tab-cont").removeClass("active");
                
                // data-contentnumber와 일치하는 tab-cont 항목에 active 클래스를 추가합니다.
                $(".tab-cont[data-contentnumber='" + contentNumber + "']").addClass("active");
            });

            // 개인 메뉴 클릭 시
            $(".person-menu").click(function() {
                // corp-tab 비활성화
                $(".corp-tab").removeClass("active");
                $(".corp-menu").removeClass("active");

                // person-tab 활성화
                $(".person-tab").addClass("active");
                $(".person-menu").addClass("active");

                // person-tab에 있는 data-contentnumber를 가져옵니다.
                var contentNumber = $(".person-tab li").data("contentnumber");

                // 모든 tab-cont 항목에서 active 클래스를 제거합니다.
                $(".tab-cont").removeClass("active");
            
                // data-contentnumber와 일치하는 tab-cont 항목에 active 클래스를 추가합니다.
                $(".tab-cont[data-contentnumber='" + contentNumber + "']").addClass("active");
                });

            // 기업 메뉴 클릭 시
            $(".corp-menu").click(function() {
                // person-tab 비활성화
                $(".person-tab").removeClass("active");
                $(".person-menu").removeClass("active");

                // corp-tab 활성화
                $(".corp-tab").addClass("active");
                $(".corp-menu").addClass("active");

                // corp-tab에 있는 data-contentnumber를 가져옵니다.
                var contentNumber = $(".corp-tab li").data("contentnumber");

                // 모든 tab-cont 항목에서 active 클래스를 제거합니다.
                $(".tab-cont").removeClass("active");
                
                // data-contentnumber와 일치하는 tab-cont 항목에 active 클래스를 추가합니다.
                $(".tab-cont[data-contentnumber='" + contentNumber + "']").addClass("active");
            });
        });
    </script>
    
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css"> <!-- ui쪽 서버 파일로 변경예정 -->
    <link rel="stylesheet" as="style" crossorigin="" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.6/dist/web/static/pretendard.css"> <!-- 웹폰트 : ui 서버로 이관할지 확인 필요-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/jobkh_layout.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/index/gnb-sv.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/index/banner_promotion-sv.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/index/notification-sv.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/index/footer-sv.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/index/banner-sv.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/index/mtu_popup-sv.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/index/flow.css">
<%--     <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/index/main-sv.css">
 --%>    
    
<%--     
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/jobkh_nav.css">
     --%>
    
<!-- 원본 잡코리아 가져온것   -->    

    
    
<!-- 원본            우리가 작업한거  시작			 -->
    
    <div class="wrap">
        <nav>
            <div id="point">
                <div class="point-left point-box active">
                    <div class="tab-menu">
                        <ul class="tab-menu1 person-tab active">
                            <li class="tab-menu1-1 active" data-contentnumber="1"><a href="# return false;"># 공고속보</a></li>
                            <li class="tab-menu1-1" data-contentnumber="6"><a href="# return false;"># 취업톡톡</a></li>
                        </ul>
                        <ul class="tab-menu1 corp-tab">
                            <li class="tab-menu1-2 active" data-contentnumber="7"><a href="# return false;" id="corpLounge"># 기업라운지</a></li>
                            <li class="tab-menu1-2"><a href="# return false;" id="corpLounge"></a></li>
                            <li class="tab-menu1-2"><a href="# return false;" id="corpLounge"></a></li>
                            <li class="tab-menu1-2"><a href="# return false;" id="corpLounge"></a></li>
                            <li class="tab-menu1-2"><a href="# return false;" id="corpLounge"></a></li>
                            <li class="tab-menu1-2"><a href="# return false;" id="corpLounge"></a></li>
                        </ul>
                        <ul class="tab-menu2">
                            <li class="tab-menu2 person-menu active"><a href="# return false;">개인</a></li>
                            <li class="tab-menu2 corp-menu"><a href="# return false;">기업</a></li>
                        </ul>
                    </div>
                    <!--공채속보-->
                    <div class="tab-cont contents-news active" data-contentnumber="1">
                        <div class="match-slide">
                            <div class="swiper-container sw-container swiper-container-initialized swiper-container-horizontal">
                                <div class="swiper-wrapper wrap-menu">
                                    <div class="swiper-slide slide-box">
                                        <ul class="box-lst">
                                            <li>
                                            	<c:if test="${not empty topTwoInfoByDDay}">
                                            		<c:forEach items="${topTwoInfoByDDay}" var="item">
		                                                <div class="box">
		                                                    <a href="<c:url value='/jobpostinginfo'><c:param name='jid' value='${item.JID}'/></c:url>" class="link clickcnt" data-cntnt-no="12332" data-click-value="2" data-rcmdsvcagi-galabel="이번주 공채" target="_blank">
		                                                        <span class="bdgs">
		                                                            <span class="ut-bdg a">임박한 공고</span>
		                                                        </span>
		                                                        <h4 class="box-tit">${item.RE_TITLE}</h4>
		                                                        <span class="box-bot">
		                                                            <span class="info-txt">${item.BIZNAME}</span>
		                                                            <span class="info-gray">D-${item.DDAY}</span>
		                                                        </span>
		                                                    </a>
		                                                </div>
	                                                </c:forEach>
                                            	</c:if>
                                            	<c:if test="${empty topTwoInfoByDDay}">
                                            		<div class="box">
	                                                    <a href="#" class="link clickcnt" data-cntnt-no="12332" data-click-value="2" onclick="" data-rcmdsvcagi-galabel="이번주 공채" target="_blank">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg a">이번주 공채</span>
	                                                        </span>
	                                                        <h4 class="box-tit">2023년 2분기 경력/신입/인턴사원 채용</h4>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">LS엠트론㈜</span>
	                                                            <span class="info-gray">D-10</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
	                                                <div class="box">
	                                                    <a href="#" class="link clickcnt" data-cntnt-no="12333" data-click-value="2" onclick="" data-rcmdsvcagi-galabel="이번주 공채" target="_blank">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg a">이번주 공채</span>
	                                                        </span>
	                                                        <h4 class="box-tit">분야별 신입/경력 수시채용</h4>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">㈜셀트리온</span>
	                                                            <span class="info-gray">D-11</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
                                            	</c:if>
                                            </li>
                                            <li>
                                            	<c:if test="${not empty getNextTwoInfoByDDay}">
                                            		<c:forEach items="${getNextTwoInfoByDDay}" var="item">
		                                                <div class="box">
		                                                    <a href="<c:url value='/jobpostinginfo'><c:param name='jid' value='${item.JID}'/></c:url>" class="link clickcnt" data-cntnt-no="12331" data-click-value="2" onclick="" data-rcmdsvcagi-galabel="이번주 공채" target="_blank">
		                                                        <span class="bdgs">
		                                                            <span class="ut-bdg a">임박한 공고</span>
		                                                        </span>
		                                                        <h4 class="box-tit">${item.RE_TITLE}</h4>
		                                                        <span class="box-bot">
		                                                            <span class="info-txt">${item.BIZNAME}</span>
		                                                            <span class="info-gray">D-${item.DDAY}</span>
		                                                        </span>
		                                                    </a>
		                                                </div>
	                                                </c:forEach>
                                            	</c:if>
                                            	<c:if test="${empty getNextTwoInfoByDDay}">
                                            		<div class="box">
	                                                    <a href="#" class="link clickcnt" data-cntnt-no="12331" data-click-value="2" onclick="" data-rcmdsvcagi-galabel="이번주 공채" target="_blank">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg a">이번주 공채</span>
	                                                        </span>
	                                                        <h4 class="box-tit">2023년 일반직원 신규채용</h4>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">건국대학교 GLOCAL(글로컬)캠퍼스</span>
	                                                            <span class="info-gray">D-10</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
	                                                <div class="box">
	                                                    <a href="#" class="link clickcnt" data-cntnt-no="12318" data-click-value="2" onclick="" data-rcmdsvcagi-galabel="이번주 공채" target="_blank">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg a">이번주 공채</span>
	                                                        </span>
	                                                        <h4 class="box-tit">2023년 신입 및 경력사원 모집</h4>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">동화약품㈜</span>
	                                                            <span class="info-gray">D-11</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
                                            	</c:if>
                                            </li>
                                            <li>
                                                <div class="box-img">
                                                    <a href="<%=request.getContextPath()%>/login" class="bnr-box blind-login devBnrBox" id="ortb-bannr-login" data-rcmdsvc-galabel="로그인" target="_self">
                                                        <img src="//i.jobkorea.kr/content/images/personal/main/ps_bnr1.png?202305180000" alt="로그인하면 합격률 높은 채용공고를 추천해드려요">
                                                    </a>
                                                    <a href="#" class="bnr-box blind devBnrBox" id="ortb-bannr-review" data-rcmdsvc-galabel="기업리뷰_1" target="_blank">
                                                        <img src="//i.jobkorea.kr/content/images/personal/main/ps_bnr6.png" alt="경험해 본 사람들의 이야기 그 기업이 궁금할 땐 잡코리아 기업리뷰">
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                            	<c:if test="${not empty getNextTwoInfoByDDay2}">
                                            		<c:forEach items="${getNextTwoInfoByDDay2}" var="item">
		                                                <div class="box">
		                                                    <a href="<c:url value='/jobpostinginfo'><c:param name='jid' value='${item.JID}'/></c:url>" class="link clickcnt" data-cntnt-no="12334" data-click-value="2" data-rcmdsvcagi-galabel="그룹사 공채" target="_blank">
		                                                        <span class="bdgs">
		                                                            <span class="ut-bdg b">임박한 공고</span>
		                                                        </span>
		                                                        <h4 class="box-tit">${item.RE_TITLE}</h4>
		                                                        <span class="box-bot">
		                                                            <span class="info-txt">${item.BIZNAME}</span>
		                                                            <span class="info-gray">D-${item.DDAY}</span>
		                                                        </span>
		                                                    </a>
		                                                </div>
	                                                </c:forEach>
                                            	</c:if>
                                            	<c:if test="${empty getNextTwoInfoByDDay2}">
                                            		<div class="box">
	                                                    <a href="#" class="link clickcnt" data-cntnt-no="12334" data-click-value="2" data-rcmdsvcagi-galabel="그룹사 공채" target="_blank">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg b">그룹사 공채</span>
	                                                        </span>
	                                                        <h4 class="box-tit">부문별 신입/경력 인재채용</h4>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">㈜유비케어</span>
	                                                            <span class="info-gray">D-9</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
	                                                <div class="box">
	                                                    <a href="#" class="link clickcnt" data-cntnt-no="12330" data-click-value="2" data-rcmdsvcagi-galabel="그룹사 공채" target="_blank">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg b">그룹사 공채</span>
	                                                        </span>
	                                                        <h4 class="box-tit">2023년 코오롱그룹 6월 정기공채</h4>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">코오롱그룹</span>
	                                                            <span class="info-gray">D-7</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
                                            	</c:if>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="swiper-slide slide-box">
                                        <ul class="box-lst">
                                            <li>
                                            	<c:if test="${not empty getNextTwoInfoByDDay3}">
                                            		<c:forEach items="${getNextTwoInfoByDDay3}" var="item">
		                                                <div class="box">
		                                                    <a href="<c:url value='/jobpostinginfo'><c:param name='jid' value='${item.JID}'/></c:url>" class="link" target="_blank" data-rcmdsvcagi-galabel="최근 시작 공채">
		                                                        <span class="bdgs">
		                                                            <span class="ut-bdg c">임박한 공고</span>
		                                                        </span>
		                                                        <h4 class="box-tit">${item.RE_TITLE}</h4>
		                                                        <span class="box-bot">
		                                                            <span class="info-txt">${item.BIZNAME}</span>
		                                                            <span class="info-gray">D-${item.DDAY}</span>
		                                                        </span>
		                                                    </a>
		                                                </div>
	                                                </c:forEach>
                                            	</c:if>
                                            	<c:if test="${empty getNextTwoInfoByDDay3}">
                                            		<div class="box">
	                                                    <a href="#" class="link" target="_blank" data-rcmdsvcagi-galabel="최근 시작 공채">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg c">최근 시작 공채</span>
	                                                        </span>
	                                                        <h4 class="box-tit">[네이버계열사][NIT Service] NAVER 서비스 보안진단</h4>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">엔아이티서비스㈜</span>
	                                                            <span class="info-gray">D-30</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
	                                                <div class="box">
	                                                    <a href="#" class="link" target="_blank" data-rcmdsvcagi-galabel="최근 시작 공채">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg c">최근 시작 공채</span>
	                                                        </span>
	                                                        <h4 class="box-tit">중장비 및 화물차 보전 계약직 모집</h4>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">현대삼호중공업㈜</span>
	                                                            <span class="info-gray">D-17</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
                                            	</c:if>
                                            </li>
                                            <li>
                                            	<c:if test="${not empty getNextTwoInfoByDDay4}">
                                            		<c:forEach items="${getNextTwoInfoByDDay4}" var="item">
		                                                <div class="box">
		                                                    <a href="<c:url value='/jobpostinginfo'><c:param name='jid' value='${item.JID}'/></c:url>" class="link" target="_blank" data-rcmdsvcagi-galabel="최근 시작 공채">
		                                                        <span class="bdgs">
		                                                            <span class="ut-bdg c">임박한 공고</span>
		                                                        </span>
		                                                        <h4 class="box-tit">${item.RE_TITLE}</h4>
		                                                        <span class="box-bot">
		                                                            <span class="info-txt">${item.BIZNAME}</span>
		                                                            <span class="info-gray">D-${item.DDAY}</span>
		                                                        </span>
		                                                    </a>
		                                                </div>
	                                                </c:forEach>
                                            	</c:if>
                                            	<c:if test="${empty getNextTwoInfoByDDay4}">
	                                            	<div class="box">
	                                                    <a href="#" class="link" target="_blank" data-rcmdsvcagi-galabel="최근 시작 공채">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg c">최근 시작 공채</span>
	                                                        </span>
	                                                        <h4 class="box-tit">[CTO] 인증 플랫폼 Frontend 개발자 채용</h4>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">엘지유플러스</span>
	                                                            <span class="info-gray">D-11</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
	                                                <div class="box">
	                                                    <a href="#" class="link" target="_blank" data-rcmdsvcagi-galabel="최근 시작 공채">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg c">최근 시작 공채</span>
	                                                        </span>
	                                                        <h4 class="box-tit">2023년 서울지역 임원비서(계약직) 채용</h4>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">포스코홀딩스</span>
	                                                            <span class="info-gray">D-3</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
                                            	</c:if>
                                            </li>
                                            <li>
                                                <div class="box-img">
                                                    <a href="#" class="bnr-box devBnrBox" data-rcmdsvc-galabel="일간 채용 TOP100_1">
                                                        <img src="//i.jobkorea.kr/content/images/personal/main/ps_bnr2.png" alt="채용 TOP100 실시간 인기 채용 공고를 확인해 보세요!">
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                            	<c:if test="${not empty getNextTwoInfoByDDay5}">
                                            		<c:forEach items="${getNextTwoInfoByDDay5}" var="item">
		                                                <div class="box">
		                                                    <a href="<c:url value='/jobpostinginfo'><c:param name='jid' value='${item.JID}'/></c:url>" class="link" target="_blank" data-rcmdsvcagi-galabel="최근 시작 공채">
		                                                        <span class="bdgs">
		                                                            <span class="ut-bdg c">임박한 공고</span>
		                                                        </span>
		                                                        <h4 class="box-tit">${item.RE_TITLE}</h4>
		                                                        <span class="box-bot">
		                                                            <span class="info-txt">${item.BIZNAME}</span>
		                                                            <span class="info-gray">D-${item.DDAY}</span>
		                                                        </span>
		                                                    </a>
		                                                </div>
	                                                </c:forEach>
                                            	</c:if>
	                                            	<c:if test="${empty getNextTwoInfoByDDay5}">
	                                            	<div class="box">
	                                                    <a href="#" class="link" data-rcmdsvcagi-galabel="마감 임박 공채" target="_blank">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg d">마감 임박 공채</span>
	                                                        </span>
	                                                        <h4 class="box-tit">서울지사 임시 기간제계약직(하반기) 채용</h4>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">한국가스기술공사</span>
	                                                            <span class="info-gray">오늘마감</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
	                                                <div class="box">
	                                                    <a href="#" class="link" data-rcmdsvcagi-galabel="마감 임박 공채" target="_blank">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg d">마감 임박 공채</span>
	                                                        </span>
	                                                        <h4 class="box-tit">전북지사 임시 기간제 계약직(하반기) 채용</h4>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">한국가스기술공사</span>
	                                                            <span class="info-gray">오늘마감</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
                                            	</c:if>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                                <div class="btn-control">
                                    <div class="swiper-button-prev instance-prev1" tabindex="0" role="button" aria-label="Previous slide"></div>
                                    <div class="swiper-button-next instance-next1" tabindex="0" role="button" aria-label="Next slide"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--//공채속보-->
                    <!-- AI추천 -->
                    <div class="tab-cont contents-ai" data-contentnumber="2">
                        <div class="match-slide">
                            <div class="swiper-container sw-container swiper-container-initialized swiper-container-horizontal">
                                <div class="swiper-wrapper wrap-menu">
                                    <div class="swiper-slide slide-box">
                                        <ul class="box-lst">
                                            <li>
                                                <div class="box">
                                                    <a href="# return false;" class="link" data-rcmdsvcagi-galabel="놓치면 안되는 공고" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg i">놓치면 안되는 공고</span>
                                                        </span>
                                                        <h4 class="box-tit">현대블루핸즈 정비사모집 - (주)서인천종합서비스</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">서인천현대써비스㈜</span>
                                                            <span class="info-gray">D-26</span>
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="box">
                                                    <a href="# return false;" class="link" data-rcmdsvcagi-galabel="놓치면 안되는 공고" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg i">놓치면 안되는 공고</span>
                                                        </span>
                                                        <h4 class="box-tit">천안점 홈플러스 온라인 및 매장 영업관리 채용공고</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">홈플러스</span>
                                                            <span class="info-gray">D-12</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box-img">
                                                    <a href="#" class="bnr-box devBnrBox" data-rcmdsvc-galabel="일간 채용 TOP100_2" target="_blank">
                                                        <img src="//i.jobkorea.kr/content/images/personal/main/ps_bnr14.png" alt="다른공고 둘러보고 맞춤공고 추천받아보세요">
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvcagi-galabel="놓치면 안되는 공고" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg i">놓치면 안되는 공고</span>
                                                        </span>
                                                        <h4 class="box-tit">영업관리 신입사원 모집</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">기보스틸㈜</span>
                                                            <span class="info-gray">D-7</span>
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvcagi-galabel="놓치면 안되는 공고" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg i">놓치면 안되는 공고</span>
                                                        </span>
                                                        <h4 class="box-tit">[쿠쿠홈시스] 서울영업지사 법인/개인 영업 채용</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">쿠쿠홈시스㈜</span>
                                                            <span class="info-gray">D-50</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvcagi-galabel="놓치면 안되는 공고" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg i">놓치면 안되는 공고</span>
                                                        </span>
                                                        <h4 class="box-tit">[한진정보통신] Google Workspace 기술지원 개발자 모집</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">한진정보통신㈜</span>
                                                            <span class="info-gray">D-38</span>
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvcagi-galabel="놓치면 안되는 공고" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg i">놓치면 안되는 공고</span>
                                                        </span>
                                                        <h4 class="box-tit">주) 코웨이 영업 및 서비스사원모집 -서울 (서초구/동작구)</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">코웨이㈜</span>
                                                            <span class="info-gray">D-42</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="swiper-slide slide-box">
                                        <ul class="box-lst">
                                            <li>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvcagi-galabel="놓치면 안되는 공고" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg i">놓치면 안되는 공고</span>
                                                        </span>
                                                        <h4 class="box-tit">[경기안양] 연성대학교 기숙사 시설관리(학생관리)</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">동원건설산업㈜</span>
                                                            <span class="info-gray">D-22</span>
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvcagi-galabel="놓치면 안되는 공고" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg i">놓치면 안되는 공고</span>
                                                        </span>
                                                        <h4 class="box-tit">[삼천리외식사업부] 본사 한식조리 품질담당 경력직 채용</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">㈜삼천리ENG[SL&amp;C사업부]</span>
                                                            <span class="info-gray">D-7</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box-img">
                                                    <a href="#" class="bnr-box devBnrBox" data-rcmdsvc-galabel="직무인터뷰 유도 배너" target="_blank">
                                                        <img src="//i.jobkorea.kr/content/images/personal/main/ps_bnr4.png" alt="직업과 미래에 대한 고민 해결! 현직자들의 job 이야기">
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box">
                                                    <a href="#" class="link" target="_blank" data-rcmdsvcagi-galabel="놓치면 안되는 공고">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg i">놓치면 안되는 공고</span>
                                                        </span>
                                                        <h4 class="box-tit">동두천사업소 단기노무원 모집 / 기계보조</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">한전KPS</span>
                                                            <span class="info-gray">D-5</span>
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="box">
                                                    <a href="#" class="link" target="_blank" data-rcmdsvcagi-galabel="놓치면 안되는 공고">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg i">놓치면 안되는 공고</span>
                                                        </span>
                                                        <h4 class="box-tit">2023년도 대한유화㈜ 생산직 인턴 및 경력사원 모집</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">대한유화㈜</span>
                                                            <span class="info-gray">D-6</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box">
                                                    <a href="#" class="link" target="_blank" data-rcmdsvcagi-galabel="놓치면 안되는 공고">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg i">놓치면 안되는 공고</span>
                                                        </span>
                                                        <h4 class="box-tit">[코웨이 자회사]비렉스테크 온라인 MD/MRO 경력자 채용</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">비렉스테크㈜</span>
                                                            <span class="info-gray">D-38</span>
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="box">
                                                    <a href="#" class="link" target="_blank" data-rcmdsvcagi-galabel="놓치면 안되는 공고">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg i">놓치면 안되는 공고</span>
                                                        </span>
                                                        <h4 class="box-tit">(주)글로벌금융판매 VIP지사 (부산 보험설계사) 모집중입니다.</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">㈜글로벌금융판매</span>
                                                            <span class="info-gray">D-52</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                                <div class="btn-control">
                                    <div class="swiper-button-prev instance-prev1" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="false"></div>
                                    <div class="swiper-button-next instance-next1" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--//AI추천-->
                    <!--전문채용관-->
                    <div class="tab-cont contents-pro" id="dev-cont-Cntnt_Theme_V2" data-contentnumber="3">
                        <div class="match-slide">
                            <div class="swiper-container sw-container swiper-container-initialized swiper-container-horizontal">
                                <div class="swiper-wrapper wrap-menu">
                                    <div class="swiper-slide slide-box">
                                        <ul class="box-lst">
                                            <li>
                                                <div class="box-img">
                                                    <a href="#" class="link" data-rcmdsvcagi-galabel="전문채용관" target="_blank">
                                                        <span class="img-box">
                                                            <img src="//file1.jobkorea.co.kr/Theme/ffsb/게이트_pc.png" alt="">
                                                        </span>
                                                        <span class="cate">
                                                            가족친화인증기업 채용관
                                                        </span>
                                                        <h4 class="box-tit">여성가족부가 인증한 가족친화 우수기업</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt ico-arw color-blue">4,948건 채용중</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box-img">
                                                    <a href="#" class="link" data-rcmdsvcagi-galabel="전문채용관" target="_blank">
                                                        <span class="img-box">
                                                            <img src="//file1.jobkorea.co.kr/Theme/start_up/스타트업-전용채용관PC_gate.png" alt="">
                                                        </span>
                                                        <span class="cate">
                                                            스타트업 전문채용관
                                                        </span>
                                                        <h4 class="box-tit">스타트업 기업의 채용을 응원합니다.</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt ico-arw color-blue">271건 채용중</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box-img">
                                                    <a href="#" class="link" data-rcmdsvcagi-galabel="전문채용관" target="_blank">
                                                        <span class="img-box">
                                                            <img src="//file1.jobkorea.co.kr/Theme/kotra/2023_PC_gate.png" alt="">
                                                        </span>
                                                        <span class="cate">
                                                            KOTRA 외투기업 채용전용관
                                                        </span>
                                                        <h4 class="box-tit">KOTRA가 우수 외투기업을 추천합니다.</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt ico-arw color-blue">549건 채용중</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box-img">
                                                    <a href="#" class="link" data-rcmdsvcagi-galabel="전문채용관" target="_blank">
                                                        <span class="img-box">
                                                            <img src="//file1.jobkorea.co.kr/Theme/RegionDSC/RegionDSC_GatePage.jpg" alt="">
                                                        </span>
                                                        <span class="cate">
                                                            대전·세종·충청 지역채용관
                                                        </span>
                                                        <h4 class="box-tit">잡코리아가 추천하는 지역 채용정보</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt ico-arw color-blue">13,401건 채용중</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="swiper-slide slide-box">
                                        <ul class="box-lst">
                                            <li>
                                                <div class="box-img">
                                                    <a href="#" class="link" data-rcmdsvcagi-galabel="전문채용관" target="_blank">
                                                        <span class="img-box">
                                                            <img src="//file1.jobkorea.co.kr/Theme/Edu/Edu_GatePage.jpg" alt="">
                                                        </span>
                                                        <span class="cate">
                                                            교육 직무채용관
                                                        </span>
                                                        <h4 class="box-tit">교육 분야의 전문가를 위한 채용관</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt ico-arw color-blue">7,003건 채용중</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box-img">
                                                    <a href="#" class="link" data-rcmdsvcagi-galabel="전문채용관" target="_blank">
                                                        <span class="img-box">
                                                            <img src="//file1.jobkorea.co.kr/Theme/Const/Const_GatePage.jpg" alt="">
                                                        </span>
                                                        <span class="cate">
                                                            건설 직무채용관
                                                        </span>
                                                        <h4 class="box-tit">건설 업계 구직자를 위한 건설 전문 채용관</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt ico-arw color-blue">8,014건 채용중</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box-img">
                                                    <a href="#" class="link" data-rcmdsvcagi-galabel="전문채용관" target="_blank">
                                                        <span class="img-box">
                                                            <img src="//file1.jobkorea.co.kr/Theme/adagency/PC_gate copy.png" alt="">
                                                        </span>
                                                        <span class="cate">
                                                            네이버 검색광고대행사 채용관
                                                        </span>
                                                        <h4 class="box-tit">키워드광고, 광고대행, 마케팅 분야 전문기업 채용관</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt ico-arw color-blue">170건 채용중</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box-img">
                                                    <a href="#" class="bnr-box devBnrBox" data-rcmdsvc-galabel="퓨처랩">
                                                        <img src="//i.jobkorea.kr/content/images/personal/main/ps_bnr7.png" alt="취업정보를 한 곳에서 취업의 내비게이션 퓨쳐랩">
                                                    </a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                                <div class="btn-control">
                                    <div class="swiper-button-prev instance-prev1" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="false"></div>
                                    <div class="swiper-button-next instance-next1" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--//전문채용관-->
                    <!--기업연봉-->
                    <div class="tab-cont contents-money" id="dev-cont-Cntnt_CorpSalary" data-contentnumber="4">
                        <div class="match-slide">
                            <div class="swiper-container sw-container swiper-container-initialized swiper-container-horizontal">
                                <div class="swiper-wrapper wrap-menu">
                                    <div class="swiper-slide slide-box">
                                        <ul class="box-lst">
                                            <li>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="신규 오픈 기업리뷰" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg o">NEW</span>
                                                        </span>
                                                        <h4 class="box-tit">
                                                            <span class="elipsis">
                                                                시소디자인
                                                            </span>
                                                            기업리뷰가 오픈되었어요!
                                                        </h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt ico-arw">자세히보기</span>
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="워너비 기업 추천" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg q">워너비 기업 추천</span>
                                                        </span>
                                                        <h4 class="box-tit">
                                                            <span class="co-keyword">
                                                                <img src="http://i.jobkorea.kr/content/images/user/review/like-icon19.png" alt="icon">
                                                            </span>
                                                            워라밸이 보장돼요
                                                        </h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">(주)보나비</span>
                                                            <span class="info-txt color-blue">채용중</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="인기 기업리뷰" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg p">HOT</span>
                                                        </span>
                                                        <h4 class="box-tit">
                                                            <span class="elipsis">
                                                                경원여객자동차
                                                            </span>
                                                            기업리뷰가 화제예요!
                                                        </h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt ico-arw">자세히보기</span>
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="기업분석보고서" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg r">기업분석보고서</span>
                                                        </span>
                                                        <h4 class="box-tit">
                                                            <span class="elipsis">
                                                                한국도로공사
                                                            </span>
                                                            주요 기업 심층 분석 보고서
                                                        </h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt ico-arw">자세히보기</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box-img">
                                                    <a href="#" class="bnr-box devBnrBox" data-rcmdsvc-galabel="기업리뷰_1" target="_blank">
                                                        <img src="https://i.jobkorea.kr/content/images/personal/main/ps_bnr6.png" alt="경험해 본 사람들의 이야기 그 기업이 궁금할 땐 잡코리아 기업리뷰">
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box-double">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="연봉 검색 순위" target="_blank" >
                                                        <div class="ms-head">
                                                            <span class="bdgs">
                                                                <span class="ut-bdg e">연봉 검색 순위</span>
                                                            </span>
                                                            
                                                        </div>
                                                        <ul class="ms-ranking">
                                                                    <li><span class="rank-num">1 </span><span class="rank-name">프로테옴텍 </span><span class="rank-view"><em>3,572</em>만원</span></li>
                                                                    <li><span class="rank-num">2 </span><span class="rank-name">라온시큐어 </span><span class="rank-view"><em>5,689</em>만원</span></li>
                                                                    <li><span class="rank-num">3 </span><span class="rank-name">이스트소프트 </span><span class="rank-view"><em>4,185</em>만원</span></li>
                                                                    <li><span class="rank-num">4 </span><span class="rank-name">㈜우분트월드 </span><span class="rank-view"><em>2,841</em>만원</span></li>
                                                                    <li><span class="rank-num">5 </span><span class="rank-name">해안종합건축사사무소 </span><span class="rank-view"><em>4,910</em>만원</span></li>
                                                                    <li><span class="rank-num">6 </span><span class="rank-name">서울메트로 </span><span class="rank-view"><em>6,267</em>만원</span></li>
                                                                    <li><span class="rank-num">7 </span><span class="rank-name">데상트코리아 </span><span class="rank-view"><em>5,208</em>만원</span></li>
                                                                    <li><span class="rank-num">8 </span><span class="rank-name">지멘스헬시니어스 </span><span class="rank-view"><em>5,400</em>만원</span></li>
                                                                    <li><span class="rank-num">9 </span><span class="rank-name">풍인무역 </span><span class="rank-view"><em>5,019</em>만원</span></li>
                                                                    <li><span class="rank-num">10 </span><span class="rank-name">㈜타라 티.피.에스 </span><span class="rank-view"><em>4,393</em>만원</span></li>
                                                        </ul>
                                                    </a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                                <div class="btn-control">
                                    <div class="swiper-button-prev instance-prev1" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="false"></div>
                                    <div class="swiper-button-next instance-next1" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--//기업연봉-->
                    <!--진로탐색-->
                    <div class="tab-cont contents-career" id="dev-cont-Cntnt_ExploreCourse" data-contentnumber="5">
                        <div class="match-slide">
                            <div class="swiper-container sw-container swiper-container-initialized swiper-container-horizontal">
                                <div class="swiper-wrapper wrap-menu">
                                    <div class="swiper-slide slide-box">
                                        <ul class="box-lst">
                                            <li>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="취업뉴스" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg j">취업뉴스</span>
                                                        </span>
                                                        <h4 class="box-tit">[기초상식 TEST] 기초상식 실전 테스트!</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">05.31</span>
                                                            <span class="info-gray ico-view">2,558</span>
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="잡코리아 TV" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg k">잡코리아 TV</span>
                                                        </span>
                                                        <h4 class="box-tit">명문대 신입 지원자가 서류 광탈한 이유</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt"> 이력써드림</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="취업뉴스" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg j">취업뉴스</span>
                                                        </span>
                                                        <h4 class="box-tit">[오피스 테라피] 눈에 거슬리는 사람 있나요?</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">05.29</span>
                                                            <span class="info-gray ico-view">7,222</span>
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="직무인터뷰" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg l">직무인터뷰</span>
                                                        </span>
                                                        <h4 class="box-tit">고객사에 최상의 제품을 선보이기 위해 노력하는 품질관리자</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">품질관리</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box-img">
                                                    <a href="#" class="bnr-box devBnrBox" data-rcmdsvc-galabel="일간 채용 TOP100_3" target="_blank">
                                                        <img src="https://i.jobkorea.kr/content/images/personal/main/ps_bnr5.png" alt="채용 TOP100 이번 주 가장 인기있는 공고!">
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="합격자소서" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg m">합격자소서</span>
                                                        </span>
                                                        <h4 class="box-tit">2015 상반기 품질관리자 합격자소서</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">현대제철주식회사</span>
                                                            <span class="info-career">신입</span>
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="인적성·면접후기" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg n">인적성·면접후기</span>
                                                        </span>
                                                        <h4 class="box-tit">2022 상반기 전기·전자엔지니어 인·적성 후기</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">켑코이에스㈜</span>
                                                            <span class="info-career">신입</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                                <div class="btn-control">
                                    <div class="swiper-button-prev instance-prev1" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="false"></div>
                                    <div class="swiper-button-next instance-next1" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--//진로탐색-->
                    <!--취업톡톡-->
                    <div class="tab-cont contents-talk" id="dev-cont-Cntnt_Qstn" data-contentnumber="6">
                        <div class="match-slide">
                            <div class="swiper-container sw-container swiper-container-initialized swiper-container-horizontal">
                                <div class="swiper-wrapper wrap-menu">
                                    <div class="swiper-slide slide-box">
                                        <ul class="box-lst">
                                            <li>
                                            	<c:if test="${not empty topTwoInfoByLikehit}">
                                            		<c:forEach items="${topTwoInfoByLikehit}" var="item">
	                                            		<div class="box-double">
		                                                    <a href="<c:url value='/board/get'><c:param name='bno' value='${item.BNO}'/></c:url>" class="link post-box" target="_blank" data-rcmdsvc-galabel="취업톡톡일반글">
		                                                        <span class="bdgs">
		                                                            <span class="ut-bdg d">인기글</span>
		                                                        </span>
		                                                        <h4 class="box-tit">${item.BTITLE}</h4>
		                                                        <span class="post-txt">
		                                                            ${item.BC}
		                                                        </span>
		                                                        <span class="box-bot">
		                                                            <span class="info-txt">${item.MID}</span>
		                                                        </span>
		                                                    </a>
		                                                </div>
                                            		</c:forEach>
                                            	</c:if>
                                            	<c:if test="${empty topTwoInfoByLikehit}">
                                            		<div class="box-double">
	                                                    <a href="#" class="link post-box" target="_blank" data-rcmdsvc-galabel="취업톡톡일반글">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg d">인기글</span>
	                                                        </span>
	                                                        <h4 class="box-tit">생산직4년차인데 고민이 있습니다</h4>
	                                                        <span class="post-txt">
	                                                            교대생산직으로 4년차 29살입니다전문대졸 무스펙이다 보니 이직할 곳도 크게 없네요그래서 4년 동안 모은 돈도 있으니 현직장을 그만두고 알바 조금씩하면서 자격증 공부를 하면 어떨까 싶어요&nbsp;게다가 교대근무에 대한 어려움이 아직도 있네요직장을 그만둔다는 두려움도 있고 이렇게 그만두고자격증 공부를 하는 것이 맞는 판단인지 모르겠습니다더 나은 방향이 있다면 무슨 의견이든 괜찮습니다
	                                                        </span>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">생산직종사자</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
                                            	</c:if>
                                            </li>
                                            <li>
                                                <div class="box-img">
                                                    <a href="#" class="bnr-box devBnrBox" data-rcmdsvc-galabel="직무인터뷰 유도 배너" target="_blank">
                                                        <img src="https://i.jobkorea.kr/content/images/personal/main/ps_bnr4.png" alt="직업과 미래에 대한 고민 해결! 현직자들의 job 이야기">
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
	                                            <c:if test="${not empty getNextTwoInfoByLikehit}">
                                            		<c:forEach items="${getNextTwoInfoByLikehit}" var="item">
	                                            		<div class="box-double">
		                                                    <a href="<c:url value='/board/get'><c:param name='bno' value='${item.BNO}'/></c:url>" class="link post-box" target="_blank" data-rcmdsvc-galabel="취업톡톡일반글">
		                                                        <span class="bdgs">
		                                                            <span class="ut-bdg d">인기글</span>
		                                                        </span>
		                                                        <h4 class="box-tit">${item.BTITLE}</h4>
		                                                        <span class="post-txt">
		                                                            ${item.BC}
		                                                        </span>
		                                                        <span class="box-bot">
		                                                            <span class="info-txt">${item.MID}</span>
		                                                        </span>
		                                                    </a>
		                                                </div>
                                            		</c:forEach>
                                            	</c:if>
                                            	<c:if test="${empty getNextTwoInfoByLikehit}">
	                                            	<div class="box-double">
	                                                    <a href="#" class="link post-box" target="_blank" data-rcmdsvc-galabel="취업톡톡일반글">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg d">인기글</span>
	                                                        </span>
	                                                        <h4 class="box-tit">2개월 된 신입인데 퇴사하고 싶어요ㅠㅠ</h4>
	                                                        <span class="post-txt">
	                                                            입사 첫날부터 전직원이 저와 마주칠때마다 제 사수가 많이 깐깐해서 걱정이 된다 하셨습니다. 아니나 다를까, 첫날부터 반말, 그리고 한두번 알려준거에서 실수가 생기면“야. 니 일로 와봐라” 이러면서 사무실 내에서 큰소리로 핀잔을 줬습니다.&nbsp;제가 일처리에 있어서 부족한 점도 많지만 사수의 한숨과 구박, 직설적인 화법으로 매번 위축되었고, 긴장된 상태로 일을 하다보니 한달차까진 실수가 잦게 되었습니다.문제는 지금부터입니다.다른 곳도 이런지 모르겠지만 업무를 달라고 하면 저보고 직접 찾아서 하라고 하셨습니다. 찾아서 하기가 너무 힘들땐 사수에게 ”제가 지금 해야될 업무가 있을까요? 또는 도와드릴 일 없을까요?“ 라고 물어보면 항상 대답은 짧게 ”없다“거나 ”내가 니 찾아서 일하라고 했지 나한테 물어봐라했나?“ 이렇게 하십니다. 제가 일감을 찾지 못했을땐 제가 메모한걸 보는 편인데 그러면 또 ”메모 그거 본다고 니 실력이 늘겠냐“ 이러십니다 ㅠ그 외에도1. (회식자리에서) 각자 어디 사는지 얘기하는데 사수왈, “너네집 안좋은덴거 알제?”&nbsp;2. 직장내 성추행 신고 2번 당함3. 제 입사 전 타부서 남직원들이 내 사수때매 그만둠4. 실수가 겹쳤을때 저 들어란 식으로 부장한테 “쟤 저정도면 바보아냐?”5. 구박은 항상 사무실 내에서 큰소리로 하심. 오죽하면 옆부서에서 저한테 괜찮냐고 하셨음6. 구박할 때, “내 성격 지랄 맞은거 안다. 이런 내 밑에서 일하기 싫으면 부장님한테 말씀드려서 착한 김과장으로 사수 교체해달라라고 말해라”7. 참고로 우리팀은 나, 과장 2명(둘 중 하나가 내 사수), 부장 1명으로 총 4명이런 상황에서 2개월을 다녔습니다. 일 보다는 사람이 힘들어서 나가고 싶은데 못버티는 제가 나약한 걸까요? 아니면 빠른 퇴사가 맞을까요 ㅠㅠ 선배님들 조언구합니다
	                                                            
	                                                        </span>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">사무담당자</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
                                            	</c:if>
                                            </li>
                                            <li>
                                            	<c:if test="${not empty getNextTwoInfoByLikehit2}">
                                            		<c:forEach items="${getNextTwoInfoByLikehit2}" var="item">
	                                            		<div class="box-double">
		                                                    <a href="<c:url value='/board/get'><c:param name='bno' value='${item.BNO}'/></c:url>" class="link post-box" target="_blank" data-rcmdsvc-galabel="취업톡톡일반글">
		                                                        <span class="bdgs">
		                                                            <span class="ut-bdg d">인기글</span>
		                                                        </span>
		                                                        <h4 class="box-tit">${item.BTITLE}</h4>
		                                                        <span class="post-txt">
		                                                            ${item.BC}
		                                                        </span>
		                                                        <span class="box-bot">
		                                                            <span class="info-txt">${item.MID}</span>
		                                                        </span>
		                                                    </a>
		                                                </div>
                                            		</c:forEach>
                                            	</c:if>
                                            	<c:if test="${empty getNextTwoInfoByLikehit2}">
	                                            	<div class="box-double">
	                                                    <a href="#" class="link post-box" target="_blank" data-rcmdsvc-galabel="취업톡톡일반글">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg d">인기글</span>
	                                                        </span>
	                                                        <h4 class="box-tit">갈곳이 없습니다</h4>
	                                                        <span class="post-txt">
	                                                            나이28지거국 학점 2.2 물류학과영어 teps187운전면허경력 없습니다불면증도 심합니다기술을 배우고 싶은데 전기 쪽은 너무 어려운거같아요&nbsp;집에서도 재촉하는데 공장도 떨어지네요하고 싶은 거 기술영업이나 생산공정이지만 사회의 벽이 실감되네요
	                                                            
	                                                        </span>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">생산직종사자</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
                                            	</c:if>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="swiper-slide slide-box">
                                        <ul class="box-lst">
                                            <li>
	                                            <c:if test="${not empty getNextTwoInfoByLikehit3}">
                                            		<c:forEach items="${getNextTwoInfoByLikehit3}" var="item">
	                                            		<div class="box-double">
		                                                    <a href="<c:url value='/board/get'><c:param name='bno' value='${item.BNO}'/></c:url>" class="link post-box" target="_blank" data-rcmdsvc-galabel="취업톡톡일반글">
		                                                        <span class="bdgs">
		                                                            <span class="ut-bdg d">인기글</span>
		                                                        </span>
		                                                        <h4 class="box-tit">${item.BTITLE}</h4>
		                                                        <span class="post-txt">
		                                                            ${item.BC}
		                                                        </span>
		                                                        <span class="box-bot">
		                                                            <span class="info-txt">${item.MID}</span>
		                                                        </span>
		                                                    </a>
		                                                </div>
                                            		</c:forEach>
                                            	</c:if>
                                            	<c:if test="${empty getNextTwoInfoByLikehit3}">
                                            		<div class="box-double">
	                                                    <a href="#" class="link post-box" target="_blank" data-rcmdsvc-galabel="취업톡톡일반글">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg d">인기글</span>
	                                                        </span>
	                                                        <h4 class="box-tit">사무직이라는게,,,</h4>
	                                                        <span class="post-txt">
	                                                            나이는 27이고 지상직 준비하다가 서비스직 자격증이나 항공 관련 자격증만 좀 따고 코로나 때문에 포기하고 편입준비하다가 취업에 도움되는 자격증이 없습니다. 중소기업이라도 사무직으로 시작해서 들어가고 싶은데 27이면 자격증 없이는 아무 중소기업도 들어갈 곳이 없겠죠?자격증을 따려고 구직을 미루지말라는 소리도 있는데 자격증이 없는데 구직을 할 수 없는게 현실 아닌가요..
	                                                        </span>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">사무보조</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
                                            	</c:if>
                                            </li>
                                            <li>
                                                <div class="box-img">
                                                    <a href="#" class="bnr-box devBnrBox" data-rcmdsvc-galabel="퓨처랩" target="_blank">
                                                        <img src="https://i.jobkorea.kr/content/images/personal/main/ps_bnr7.png" alt="취업정보를 한 곳에서 취업의 내비게이션 퓨쳐랩">
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                            	<c:if test="${not empty getNextTwoInfoByLikehit4}">
                                            		<c:forEach items="${getNextTwoInfoByLikehit4}" var="item">
	                                            		<div class="box-double">
		                                                    <a href="<c:url value='/board/get'><c:param name='bno' value='${item.BNO}'/></c:url>" class="link post-box" target="_blank" data-rcmdsvc-galabel="취업톡톡일반글">
		                                                        <span class="bdgs">
		                                                            <span class="ut-bdg d">인기글</span>
		                                                        </span>
		                                                        <h4 class="box-tit">${item.BTITLE}</h4>
		                                                        <span class="post-txt">
		                                                            ${item.BC}
		                                                        </span>
		                                                        <span class="box-bot">
		                                                            <span class="info-txt">${item.MID}</span>
		                                                        </span>
		                                                    </a>
		                                                </div>
                                            		</c:forEach>
                                            	</c:if>
                                            	<c:if test="${empty getNextTwoInfoByLikehit4}">
	                                            	<div class="box-double">
	                                                    <a href="#" class="link post-box" target="_blank" data-rcmdsvc-galabel="취업톡톡일반글">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg d">인기글</span>
	                                                        </span>
	                                                        <h4 class="box-tit">단순 생산직 근무하고 있는데 고민 중입니다.</h4>
	                                                        <span class="post-txt">
	                                                            안녕하세요 29살 남자입니다.고등학교 졸업 후부터 돈 때문에 빠르게 일자리를 구할 수 있는 공장에 발을 들였고 계속 생산직만 근무 했습니다. 그러다 작년부터 산업대학(야간대)를 다니기 시작하면서 남들을 보니 제 미래가 너무 불안하다고 느꼈습니다. 남들은 이것저것 자격증도 준비하고 했는데 저는 단순히 돈만 바라보고 일만 죽어라 하고 있었습니다. 최근 몸도 예전같지 않다고 느껴지기 시작하니 일을 그만두고 알바를 하면서 자격증을 따서 차라리 내년 1월에 다시 새로운 일자리를 찾는게 맞는지 고민 중입니다. 혹시 비슷한 경험이 있으신 분들은 어떻게 하셨는지 궁금하여 질문 남깁니다..
	                                                            
	                                                        </span>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">생산직종사자</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
                                            	</c:if>
                                            </li>
                                            <li>
                                            	<c:if test="${not empty getNextTwoInfoByLikehit5}">
                                            		<c:forEach items="${getNextTwoInfoByLikehit5}" var="item">
	                                            		<div class="box-double">
		                                                    <a href="<c:url value='/board/get'><c:param name='bno' value='${item.BNO}'/></c:url>" class="link post-box" target="_blank" data-rcmdsvc-galabel="취업톡톡일반글">
		                                                        <span class="bdgs">
		                                                            <span class="ut-bdg d">인기글</span>
		                                                        </span>
		                                                        <h4 class="box-tit">${item.BTITLE}</h4>
		                                                        <span class="post-txt">
		                                                            ${item.BC}
		                                                        </span>
		                                                        <span class="box-bot">
		                                                            <span class="info-txt">${item.MID}</span>
		                                                        </span>
		                                                    </a>
		                                                </div>
                                            		</c:forEach>
                                            	</c:if>
                                            	<c:if test="${empty getNextTwoInfoByLikehit5}">
	                                            	<div class="box-double">
	                                                    <a href="#" class="link post-box" target="_blank" data-rcmdsvc-galabel="취업톡톡일반글">
	                                                        <span class="bdgs">
	                                                            <span class="ut-bdg d">인기글</span>
	                                                        </span>
	                                                        <h4 class="box-tit">입사하고 싶어요</h4>
	                                                        <span class="post-txt">
	                                                            새로이 세우는 기업이라고 들었습니다 기업안전성과 복지가 좋을거라는 얘기를 많이 들어서 꼭 취업하고 싶습니다 괜찮은 곳인가요?
	                                                            ㈜네오바이오텍 [네오바이오텍] 생산본부 신입/경력 채용 공고 
	                                                        </span>
	                                                        <span class="box-bot">
	                                                            <span class="info-txt">생산직종사자, (주)네오바이오텍, 한국방송통신대학교</span>
	                                                        </span>
	                                                    </a>
	                                                </div>
                                            	</c:if>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                                <div class="btn-control">
                                    <div class="swiper-button-prev instance-prev1" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="false"></div>
                                    <div class="swiper-button-next instance-next1" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- //취업톡톡 -->
                    <!--기업라운지-->
                    <div class="tab-cont corp-contents-item contents-rounge" id="corpLounge" data-contentnumber="7">
                        <div class="match-slide">
                            <div class="swiper-container sw-container swiper-container-initialized swiper-container-horizontal">
                                <div class="swiper-wrapper wrap-menu">
                                    <div class="swiper-slide slide-box">
                                        <ul class="box-lst">
                                            <li>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="HR연봉자료" target="_self">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg e">HR매거진</span>
                                                        </span>
                                                        <h4 class="box-tit">이것만 보면 끝! 휴일ㆍ연장ㆍ야간근무 수당 중복 문제 총정리</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">06.19</span>
                                                            <span class="info-gray ico-view">334</span>
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="취업뉴스" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg j">취업뉴스</span>
                                                        </span>
                                                        <h4 class="box-tit">[잡코리아 Pick] 6월 넷째 주(06.25~07.01) 채용 소식!</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">06.23</span>
                                                            <span class="info-gray ico-view">450</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="HR연봉자료" target="_self">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg e">HR매거진</span>
                                                        </span>
                                                        <h4 class="box-tit">노동법 피하려는 법인 쪼개기가 안 통하는 이유</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">06.12</span>
                                                            <span class="info-gray ico-view">952</span>
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="취업뉴스" target="_blank">
                                                        <span class="bdgs">
                                                            <span class="ut-bdg j">취업뉴스</span>
                                                        </span>
                                                        <h4 class="box-tit">[신입취업단상] 붙고 고민해</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt">05.17</span>
                                                            <span class="info-gray ico-view">5,610</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box-img">
                                                    <a href="#" class="bnr-box" data-rcmdsvc-galabel="채용솔루션" target="_self">
                                                        <img src="//i.jobkorea.kr/content/images/personal/main/corp_bnr1.png" alt="인재 채용의 정석 채용의 시작은 간편 공고 등록부터. 채용 공고">
                                                    </a>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="인재 검색 서칭 서비스" target="_self">
                                                        <h4 class="box-tit">내가 원하는 인재를<br> 직접 찾아 연락해 보세요!</h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt ico-arw">인재검색 서칭 서비스</span>
                                                        </span>
                                                    </a>
                                                </div>
                                                <div class="box">
                                                    <a href="#" class="link" data-rcmdsvc-galabel="채용 광고 패키지 상품" target="_self">
                                                        <h4 class="box-tit ells3">
                                                            채용 공고 등록,<br>
                                                            처음이라 어려울 땐<br>
                                                            상담 후 구매해 보세요!
                                                        </h4>
                                                        <span class="box-bot">
                                                            <span class="info-txt ico-arw">채용 광고 패키지 상품</span>
                                                        </span>
                                                    </a>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                                <div class="btn-control">
                                    <div class="swiper-button-prev instance-prev1" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="false"></div>
                                    <div class="swiper-button-next instance-next1" tabindex="0" role="button" aria-label="Next slide" aria-disabled="false"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--//기업라운지-->
                </div>
                    <div class="point-right point-box">
                        <div class="notice-wrap">
                            <p class="tit">
                                <a href="# return false;" target="_blank">공지</a>
                            </p>
                            <div class="noti-slide">
                                <div class="swiper-container verti">
                                    <ul class="swiper-wrapper lst noti-ul">
                                        <li class="swiper-slide noti">
                                            <a href="# return false;" target="_blank">[사전공지] 개인회원 만 나이 시행 안내</a>
                                        </li>
                                        <li class="swiper-slide noti">
                                            <a href="# return false;" target="_blank">[이벤트] &lt;이상한 나라의 괴짜들 展&gt; 초대권 받자!</a>
                                        </li>
                                        <li class="swiper-slide noti">
                                            <a href="# return false;" target="_blank">``원픽``으로 이행시 짓고 시원한 빙수 받자!</a>
                                        </li>
                                        <li class="swiper-slide noti">
                                            <a href="# return false;" target="_blank">전국 대학생 우산 대여 캠페인</a>
                                        </li>
                                        <li class="swiper-slide noti">
                                            <a href="# return false;" target="_blank">[시스템 점검 공지] 06/23(금) AM 00시-06시</a>
                                        </li>
                                    </ul>
                            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                            </div>
                        </div>
                    </div>
                    <hr class="nav-hr">
                    <div class="service-box">
                        <div class="tool">
                            <p class="tit">취업 성공 툴</p>
                            <ul class="menu">
                                <li class="menu-item"><a href="# return false;"><img src="<%=request.getContextPath()%>/resources/images/자소서.png">자소서작성</a></li>
                                <li class="menu-item"><a href="# return false;"><img src="<%=request.getContextPath()%>/resources/images/맞춤법.png">맞춤법검사</a></li>
                                <li class="menu-item"><a href="# return false;"><img src="<%=request.getContextPath()%>/resources/images/글자수.png">글자수세기</a></li>
                                <li class="menu-item"><a href="# return false;"><img src="<%=request.getContextPath()%>/resources/images/학점.png">학점계산기</a></li>
                            </ul>
                        </div>
                        <hr>
                        <div class="rcmd">
                            <p class="tit">추천 서비스</p>
                            <div class="tags blind">
                                <p><a href=" <%=request.getContextPath()%>/one-pick" class="onpick"><img src="<%=request.getContextPath()%>/resources/images/check.svg" width="15px" height="15px"> 이직은 원픽</a></p>
                                <p><a href="# return false;"># 합격자소서</a></p>
                                <p><a href="# return false;"># 인적성·면접후기</a></p>
                                <p><a href="# return false;"># 공채달력</a></p>
                                <p><a href="# return false;"># 합격스펙</a></p>
                                <p><a href="# return false;"># 연봉검색순위</a></p>
                                <p><a href="# return false;"># 일간 채용 TOP100</a></p>
                                <p><a href="# return false;"># 이력서 다운로드</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </div>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script>
        var swiper = new Swiper('.sw-container', {
            direction: 'horizontal',
            // spaceBetween: 50,
            centeredSlides: true,
            watchOverflow : true,
            // slidesPerView: 1,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            observer: true,
            observeParents: true,
        });

        var swiper = new Swiper('.verti', {
            direction: 'vertical',
            autoHeight : true,
            loop: true,
            autoplay: {
                delay: 2000,
                disableOnInteraction: false
            }
        });
    </script>