<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!-- jQuery 스크립트 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		var menuCount = $('.bannBx .bann-logo').length;
		var currentIndex = 0;

		$('.btnBannPrev.spGnb').click(function() {
			$('.bann-logo.on').removeClass('on');
			currentIndex = (currentIndex - 1 + menuCount) % menuCount;
			$('.bannBx .bann-logo').eq(currentIndex).addClass('on');
		});

		$('.btnBannNext.spGnb').click(function() {
			$('.bann-logo.on').removeClass('on');
			currentIndex = (currentIndex + 1) % menuCount;
			$('.bannBx .bann-logo').eq(currentIndex).addClass('on');
		});

		$('.btnAllService').click(function() {
			$('.allArea').toggleClass("active");
			$('.jkNavDimm-click').toggleClass("on");
		})

		$(document).ready(function() {
			$('.userNav-item.my.member').hover(function() {
				$('.userNav-item.my.member .lyMyArea').css({
					display : 'block'
				})
			}, function() {
				$('.userNav-item.my.member .lyMyArea').css({
					display : 'none'
				})
			});
		});

		$(document).ready(function() {
			$('.userNav-item.corp').hover(function() {
				$('.userNav-item.corp .lyMyArea').css({
					display : 'block'
				})
			}, function() {
				$('.userNav-item.corp .lyMyArea').css({
					display : 'none'
				})
			});
		});
	});
</script>
<div class="wrap">
	<header>
		<!-- // headerInner -->
		<div class="headInner">
			<h1 class="jkLogo">
				<a href="<%=request.getContextPath()%>/index"></a>
			</h1>
			<!-- // search -->
			<div class="search">
				<h2 class="skip">검색</h2>
				<form class="global_seek" action="<%=request.getContextPath()%>/search" method="get">
					<fieldset>
						<legend>Smart Match 통합검색</legend>
						<div class="smKey">
							<input type="text" id="stext" title="검색어 입력" name="stext"
								placeholder="NEW JOB, NEW ME" maxlength="50"
								style="background: none;">
							<input type="submit" value="검색" class="submit spGnb"
								id="common_search_btn">
						</div>
					</fieldset>
				</form>
			</div>
			<!-- search // -->
			<div class="subSchArea">
				<div class="subSchLink">
					<a href="#" class="linkItem">
						<span class="spNav"> <span class="txIr">상세검색</span>
						</span>
					</a>
				</div>
			</div>
			<!-- // 배너 영역 -->
			<div class="headBann">
				<strong class="skip">잡코리아 주요 서비스</strong>
				<div class="headBannBtns">
					<button type="button" class="btnBannPrev spGnb">이전</button>
					<button type="button" class="btnBannNext spGnb">다음</button>
				</div>
				<div class="bannBx">
					<a href="#" target="_blank" title="새창 열림"
						class="bann-logo bann-albamon on"></a>
					<a href="#" target="_blank" title="새창 열림"
						class="bann-logo bann-gamejob"></a>
				</div>
				<!-- 배너 영역 // -->
			</div>
		</div>
		<!-- headerInner // -->
		<div id="headNavBar" class="headNavBar">
			<div class="navInner">
				<!-- 전체보기 버튼 클릭시 active 클래스 추가 -->
				<div class="allArea">
					<h2 class="skip">전체서비스</h2>
					<button type="button" class="btnAllService">
						<span class="spGnb"> <span class="txIr">전체서비스 열기</span>
							<div class="menu-ham">
								<svg xmlns="http://www.w3.org/2000/svg" width="18" height="14"
									viewBox="0 0 18 14" fill="none">
                                        <path class="line1"
										d="M0 0.75C0 0.335786 0.335786 0 0.75 0H16.75C17.1642 0 17.5 0.335786 17.5 0.75C17.5 1.16421 17.1642 1.5 16.75 1.5H0.75C0.335786 1.5 0 1.16421 0 0.75Z"
										fill="#171717"></path>
                                        <path class="line2"
										d="M0 6.75C0 6.33579 0.335786 6 0.75 6H16.75C17.1642 6 17.5 6.33579 17.5 6.75C17.5 7.16421 17.1642 7.5 16.75 7.5H0.75C0.335786 7.5 0 7.16421 0 6.75Z"
										fill="#171717"></path>
                                        <path class="line3"
										d="M0.75 12C0.335786 12 0 12.3358 0 12.75C0 13.1642 0.335786 13.5 0.75 13.5H16.75C17.1642 13.5 17.5 13.1642 17.5 12.75C17.5 12.3358 17.1642 12 16.75 12H0.75Z"
										fill="#171717"></path>
                                    </svg>
							</div>
						</span>
					</button>
					<!-- // 전체보기 레이어 -->
					<div class="lyNavArea" id="devGnbAllServiceMenu">
						<div class="lyNavWrap all-navWrap">
							<div class="lyNavInner">
								<div class="lyRow row01">
									<div class="lyCol col4">
										<div class="colItem">
											<strong class="titArea"><a href="<%=request.getContextPath()%>/jobPostingList/date" class="tit">
													채용정보<span class="spGnb"></span>
												</a></strong>
											<div class="listBx">
												<ul>
													<li>
														<a href="#">상세검색</a>
													</li>
													<li>
														<a href="#">지역별</a>
													</li>
													<li>
														<a href="#">직무별</a>
													</li>
													<li>
														<a href="#">산업별</a>
													</li>
													<li>
														<a href="#">기업별</a>
													</li>
													<li>
														<a href="#">TOP100</a>
													</li>
													<li>
														<a href="#">슈퍼기업관</a>
													</li>
													<li>
														<a href="#">전문채용관</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="lyCol col4">
										<div class="colItem">
											<strong class="titArea"> <a href="#" class="tit">
													공채<span class="spGnb"></span>
												</a>
											</strong>

											<div class="listBx">
												<ul>
													<li>
														<a href="#">1000대기업 공채</a>
													</li>
													<li>
														<a href="#">공채달력</a>
													</li>
													<li>
														<a href="#">공공기관 채용일정</a>
													</li>
													<li>
														<a href="#">기업공채전략</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="lyCol col4">
										<div class="colItem">
											<strong class="titArea"><a href="#" class="tit">
													헤드헌팅<span class="spGnb"></span>
												</a></strong>

											<div class="listBx">
												<ul>
													<li>
														<a href="#">헤드헌팅 채용정보</a>
													</li>
													<li>
														<a href="#">헤드헌터 찾기</a>
													</li>
													<li>
														<a href="#">헤드헌팅 채용상담</a>
													</li>
												</ul>
											</div>
											<div class="navWrapBanner">
												<a href="#" target="_black">
													<img
														src="//i.jobkorea.kr/content/images/main/nav_wrap_banner.png"
														alt="직무의 모든 것 커리어패스 Beta">
												</a>
											</div>
										</div>
									</div>
									<div class="lyCol col5">
										<div class="colItem">
											<strong class="titArea"><a href="#" class="tit">
													퓨처랩<span class="spGnb"></span>
												</a></strong>

											<div class="listBx">
												<ul>
													<li class="home">
														<a href="#">퓨처랩 홈</a>
													</li>
													<li>
														<a href="#">취업뉴스</a>
													</li>
													<li>
														<a href="#">잡코리아 TV</a>
													</li>
													<li>
														<a href="#">취업톡톡</a>
													</li>
													<li>
														<a href="#">직무인터뷰</a>
													</li>
												</ul>
												<ul>
													<li>
														<a href="#">공기업 모의고사</a>
													</li>
													<li>
														<a href="#">인성역량검사</a>
													</li>
													<li>
														<a href="#">AI면접</a>
													</li>
													<li>
														<a href="#">취업성공툴</a>
													</li>
													<li>
														<a href="#">문서서식 자료</a>
													</li>
													<li>
														<a href="#">역량테스트(MICT)</a>
													</li>
												</ul>
												<ul>
													<li>
														<a href="#">합격자소서</a>
													</li>
													<li>
														<a href="#">합격스펙</a>
													</li>
													<li>
														<a href="#">인적성∙면접후기</a>
													</li>
													<li>
														<a href="#">취업특강</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="lyCol col4">
										<div class="colItem">
											<strong class="titArea"><a href="${pageContext.request.contextPath}/businessList"
													class="tit beta">
													기업정보<span class="spGnb"></span>
												</a></strong>

											<div class="listBx">
												<ul>
													<li>
														<a href="#">기업리뷰</a>
													</li>
													<li>
														<a href="#">연봉</a>
													</li>
													<li>
														<a href="#">기업분석보고서</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 전체보기 레이어 // -->
				</div>
				<div class="jkNavArea">
					<h2 class="skip">주요서비스</h2>
					<ul class="serviceNav">
						<!-- 메뉴 활성화 클래스 navFixed 마우스 오버시 active 클래스 추가 -->
						<li id="gnbGi" class="navItem gi">
							<a href="<%=request.getContextPath()%>/jobPostingList/date" class="linkItem">
								<span class="spNav"><span class="txIr">채용정보</span></span>
							</a>
							<!-- // 채용정보 레이어 -->
							<div class="lyNavArea">
								<h3 class="skip">채용정보 세부메뉴</h3>
								<div class="lyNavWrap">
									<div class="lyNavInner side">
										<div class="lyRow row01">
											<div class="lyCol col2">
												<div class="colItem">
													<strong class="titArea"> <a href="#" class="tit">
															직무별<span class="spGnb"></span>
														</a>
													</strong>
													<div class="listBx listBx-col">
														<ul class="list-col">
															<li>
																<a href="#">기획·전략</a>
															</li>
															<li>
																<a href="#">인사·HR</a>
															</li>
															<li>
																<a href="#">마케팅·광고·MD</a>
															</li>
															<li>
																<a href="#">디자인</a>
															</li>
															<li>
																<a href="#">운전·운송·배송</a>
															</li>
															<li>
																<a href="#">고객상담·TM</a>
															</li>
															<li>
																<a href="#">식·음료</a>
															</li>
															<li>
																<a href="#">엔지니어링·설계</a>
															</li>
															<li>
																<a href="#">교육</a>
															</li>
															<li>
																<a href="#">의료·바이오</a>
															</li>
															<li>
																<a href="#">공공·복지</a>
															</li>
														</ul>
														<ul class="list-col">
															<li>
																<a href="#">법무·사무·총무</a>
															</li>
															<li>
																<a href="#">회계·세무</a>
															</li>
															<li>
																<a href="#">개발·데이터</a>
															</li>
															<li>
																<a href="#">물류·무역</a>
															</li>
															<li>
																<a href="#">영업</a>
															</li>
															<li>
																<a href="#">금융·보험</a>
															</li>
															<li>
																<a href="#">고객서비스·리테일</a>
															</li>
															<li>
																<a href="#">제조·생산</a>
															</li>
															<li>
																<a href="#">건축·시설</a>
															</li>
															<li>
																<a href="#">미디어·문화·스포츠</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="lyCol col4">
												<div class="colItem">
													<strong class="titArea"><a href="#" class="tit">
															산업별<span class="spGnb"></span>
														</a></strong>
													<div class="listBx">
														<ul>
															<li>
																<a href="#">서비스업</a>
															</li>
															<li>
																<a href="#">금융·은행업</a>
															</li>
															<li>
																<a href="#">IT·정보통신업</a>
															</li>
															<li>
																<a href="#">판매·유통업</a>
															</li>
															<li>
																<a href="#">제조·생산·화학업</a>
															</li>
															<li>
																<a href="#">교육업</a>
															</li>
															<li>
																<a href="#">건설업</a>
															</li>
															<li>
																<a href="#">의료·제약업</a>
															</li>
															<li>
																<a href="#">미디어·광고업</a>
															</li>
															<li>
																<a href="#">문화·예술·디자인업</a>
															</li>
															<li>
																<a href="#">기관·협회</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="lyCol col4 row02">
												<div class="colItem">
													<strong class="titArea"><a href="#" class="tit">
															지역별<span class="spGnb"></span>
														</a></strong>
													<div class="listBx">
														<ul class="colList joblistArea">
															<li class="begin">
																<a href="#">서울</a>
															</li>
															<li class="">
																<a href="#">경기</a>
															</li>
															<li class="">
																<a href="#">인천</a>
															</li>
															<li class="begin">
																<a href="#">대전</a>
															</li>
															<li class="">
																<a href="#">세종</a>
															</li>
															<li class="">
																<a href="#">충남</a>
															</li>
															<li class="begin">
																<a href="#">충북</a>
															</li>
															<li class="">
																<a href="#">광주</a>
															</li>
															<li class="">
																<a href="#">전남</a>
															</li>
															<li class="begin">
																<a href="#">전북</a>
															</li>
															<li class="">
																<a href="#">대구</a>
															</li>
															<li class="">
																<a href="#">경북</a>
															</li>
															<li class="begin">
																<a href="#">부산</a>
															</li>
															<li class="">
																<a href="#">울산</a>
															</li>
															<li class="">
																<a href="#">경남</a>
															</li>
															<li class="begin">
																<a href="#">강원</a>
															</li>
															<li class="">
																<a href="#">제주</a>
															</li>
															<li class="">
																<a href="#">전국</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="lyCol col4 row02">
												<div class="colItem">
													<strong class="titArea"><a href="#" class="tit">
															기업별<span class="spGnb"></span>
														</a></strong>
													<div class="listBx">
														<ul>
															<li>
																<a href="#">대기업</a>
															</li>
															<li>
																<a href="#">중견·강소기업</a>
															</li>
															<li>
																<a href="#">외국계기업</a>
															</li>
															<li>
																<a href="#">공기업·공사</a>
															</li>
															<li>
																<a href="#">상장기업</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<div class="sideCol">
											<div class="sideInner">
												<div class="row01">
													<div class="sideList">
														<ul>
															<li class="top100">
																<a href="#">
																	<span class="spGnb icnList"></span>TOP100
																</a>
															</li>
															<li class="my-recommend">
																<a href="#">
																	<span class="spGnb icnList"></span>스마트매치
																</a>
															</li>
															<li class="recruit-detail-search">
																<a href="#">
																	<span class="spGnb icnList"></span>채용공고 상세검색
																</a>
															</li>
														</ul>
													</div>
													<strong class="titArea"><a href="#">공채</a></strong>
													<div class="sideList">
														<ul>
															<li class="best1000">
																<a href="#">
																	<span class="spGnb icnList"></span>1000대기업 공채
																</a>
															</li>
															<li class="ort">
																<a href="#">
																	<span class="spGnb icnList"></span>공채예상일정
																</a>
															</li>
															<li class="intern">
																<a href="#">
																	<span class="spGnb icnList"></span>인턴채용
																</a>
															</li>
															<li class="cal">
																<a href="#">
																	<span class="spGnb icnList"></span>공채달력
																</a>
															</li>
														</ul>
													</div>
													<!-- row01 영역으로 이동 -->
													<div class="sideBtmBx">
														<div class="sideLinkType01">
															<a href="<%=request.getContextPath()%>/onpick"
																class="onepick">
																<strong>이직은 원픽</strong>
															</a>
														</div>
														<div class="sideLinkType01">
															<a href="#">
																<strong>슈퍼기업관</strong>
															</a>
														</div>
														<div class="sideLinkType01">
															<a href="#">
																<strong>전문채용관</strong>
															</a>
														</div>
													</div>
												</div>
											</div>
										</div>
										<button type="button" class="btnCloseNav spGnb">채용정보
											메뉴 닫기</button>
									</div>
								</div>
							</div>
							<!-- 채용정보 레이어 // -->
						</li>
						<li id="gnbStart" class="navItem start">
							<a href="#" class="linkItem">
								<span class="spNav"><span class="txIr">공채정보</span></span>
							</a>
							<!-- // 신입공채 레이어 -->
							<div class="lyNavArea">
								<h3 class="skip">신입공채 세부메뉴</h3>
								<div class="lyNavWrap">
									<div class="lyNavInner side">
										<div class="lyRow row01">
											<div class="lyCol col4">
												<div class="colItem">
													<strong class="titArea"> <a href="#" class="tit">
															공채<span class="spGnb"></span>
														</a>
													</strong>
													<div class="listBx">
														<ul>
															<li>
																<a href="#">1000대기업 공채</a>
															</li>
															<li>
																<a href="#">공채달력</a>
															</li>
															<li>
																<a href="#">공공기관 채용일정</a>
															</li>
															<li>
																<a href="#">기업공채전략</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<div class="sideCol">
											<div class="sideInner">
												<div class="row01">
													<div class="sideList">
														<ul>
															<li class="review">
																<a href="#">
																	<span class="spGnb icnList"></span>기업리뷰
																</a>
															</li>
															<li class="inside">
																<a href="#">
																	<span class="spGnb icnList"></span>기업분석보고서
																</a>
															</li>
															<li class="interview">
																<a href="#">
																	<span class="spGnb icnList"></span>직무인터뷰
																</a>
															</li>
															<li class="pass">
																<a href="#">
																	<span class="spGnbicnList"></span>합격자소서
																</a>
															</li>
															<li class="career">
																<a href="#" target="_blank" title="새창 열림">
																	<span class="spGnb icnList"></span>커리어패스
																</a>
															</li>
															<li class="tool">
																<a href="#">
																	<span class="spGnb icnList"></span>취업성공툴
																</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<button type="button" class="btnCloseNav spGnb">공채 메뉴
											닫기</button>
									</div>
								</div>
							</div>
							<!-- 신입공채 레이어 // -->
						</li>
						<li class="navItem lyNull theme" id="theme">
							<a href="<%=request.getContextPath()%>/onpick" class="linkItem">
								<span class="spNav"><span class="txIr">원픽</span></span>
							</a>
						</li>
						<li id="gnbHh" class="navItem hh">
							<a href="#" class="linkItem">
								<span class="spNav"><span class="txIr">헤드헌팅</span></span>
							</a>
							<!-- // 헤드헌팅 레이어 -->
							<div class="lyNavArea">
								<h3 class="skip">헤드헌팅 세부메뉴</h3>
								<div class="lyNavWrap">
									<div class="lyNavInner side">
										<div class="lyRow row01">
											<div class="lyCol col4">
												<div class="colItem">
													<strong class="titArea"><a href="#">
															헤드헌팅 채용정보<span class="spGnb"></span>
														</a></strong>
													<div class="listBx">
														<ul>
															<li>
																<a href="#">과장·차장급</a>
															</li>
															<li>
																<a href="#">부장급</a>
															</li>
															<li>
																<a href="#">임원·CEO</a>
															</li>
															<li>
																<a href="#">주임·대리급</a>
															</li>
															<li>
																<a href="#">팀장·실장</a>
															</li>
															<li>
																<a href="#">본부장</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="lyCol col4">
												<div class="colItem">
													<strong class="titArea"><a href="#"
															class="tit devNeedLogin"
															data-msg="팔로우 헤드헌터는 로그인 후 사용가능 합니다." data-url="#">
															팔로우 헤드헌터<span class="spGnb"></span>
														</a></strong>
												</div>
											</div>
											<div class="lyCol col4">
												<div class="colItem">
													<strong class="titArea"><a href="#" class="tit">
															헤드헌터 찾기<span class="spGnb"></span>
														</a></strong>

												</div>
											</div>

											<div class="lyCol col4">
												<div class="colItem">
													<strong class="titArea"><a href="#"
															class="tit devNeedLogin"
															data-msg="헤드헌팅 채용상담은 로그인 후 사용가능 합니다." data-url="#">
															채용상담<span class="spGnb"></span>
														</a></strong>

												</div>
											</div>
										</div>
										<div class="sideCol">
											<div class="sideInner">
												<div class="row01">
													<div class="sideBtmBx">
														<div class="gnbHhLink">
															<p class="tx">
																헤드헌터에게<strong>취업/이직 제의</strong>받으세요
															</p>
															<div class="link devApplyHeadhuning">
																<a href="# return false;">신청하기</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<button type="button" class="btnCloseNav spGnb">헤드헌팅
											메뉴 닫기</button>
									</div>
								</div>
							</div>
							<!-- 헤드헌팅 레이어 // -->
							<!-- // 헤드헌팅 신청 레이어 -->
							<div id="devHHReqLyArea" class="hhReqLyArea"
								style="display: none">
								<iframe id="devHHReqLyAreaFrame" width="522" height="444"
									scrolling="no" frameborder="0"
									data-src="https://www.jobkorea.co.kr/HeadHunting/Request/WriteM"
									src="" allowtransparency="true" title="헤드헌팅 신청"
									style="width: 980px; height: 850px;"></iframe>
							</div>
							<div id="devTplDim" class="tplDim" style="display: none;"></div>
							<!-- 헤드헌팅 신청 레이어 // -->
						</li>
						<li id="gnbSalary" class="navItem salary">
							<a href="${pageContext.request.contextPath}/businessList" class="linkItem">
								<span class="spNav"><span class="txIr">기업정보</span></span>
							</a>
							<!-- // 연봉 레이어 -->
							<div class="lyNavArea">
								<h3 class="skip">기업·연봉 세부메뉴</h3>
								<div class="lyNavWrap">
									<div class="lyNavInner full">
										<div class="lyRow row01">
											<div class="lyCol col4">
												<div class="colItem">
													<strong class="titArea"><a href="#"
															class="tit beta">
															기업리뷰<span class="spGnb"></span>
														</a></strong>
													<div class="listBx">
														<ul>
															<li>
																<a href="#">기업리뷰 홈</a>
															</li>
															<li>
																<a href="#">리뷰 비교</a>
															</li>
															<li>
																<a
																	href="javascript:if('' != '' &amp;&amp; '' != 'M'){alert('기업리뷰는 개인회원만 작성이 가능합니다.');}else{location.href='/Review/MyReview';}">MY
																	기업리뷰</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="lyCol col4">
												<div class="colItem">
													<strong class="titArea"><a href="#" class="tit">
															연봉 정보<span class="spGnb"></span>
														</a></strong>
													<div class="listBx">
														<ul>
															<li>
																<a href="#">기업별</a>
															</li>
															<li>
																<a href="#">분야별</a>
															</li>
															<li>
																<a href="#">직원별</a>
															</li>
															<li>
																<a href="#" class="tit">연봉뉴스</a>
															</li>

														</ul>
													</div>
												</div>
											</div>
											<div class="lyCol col4">
												<div class="colItem">
													<strong class="titArea"><a href="#" class="tit">
															기업심층분석<span class="spGnb"></span>
														</a></strong>
													<div class="listBx">
														<ul>
															<li>
																<a href="#">기업분석보고서</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<button type="button" class="btnCloseNav spGnb">기업·연봉
											메뉴 닫기</button>

									</div>
								</div>
							</div>
							<!-- 연봉 레이어 // -->
						</li>
						<li id="futurelab" class="navItem futurelab">
							<a href="#" class="linkItem">
								<span class="spNav"><span class="txIr">퓨처랩</span></span>
							</a>
							<!-- // 콘텐츠 레이어 -->
							<div class="lyNavArea">
								<h3 class="skip">퓨처랩 세부메뉴</h3>
								<div class="lyNavWrap">
									<div class="lyNavInner full">
										<div class="lyRow row01">
											<div class="lyCol col4">
												<div class="colItem">
													<strong class="titArea"><a href="#" class="tit">
															퓨처랩 홈<span class="spGnb"></span>
														</a></strong> <strong class="titArea p_top noraml"><a href="#"
															class="tit">
															진로탐색<span class="spGnb"></span>
														</a></strong>
													<div class="listBx">
														<ul>
															<li>
																<a href="#">취업뉴스</a>
															</li>
															<li>
																<a href="#">잡코리아 TV</a>
															</li>
															<li>
																<a href="#">취업톡톡</a>
															</li>

														</ul>
													</div>
												</div>
											</div>
											<div class="lyCol col4 row1">
												<div class="colItem">
													<strong class="titArea"><a href="#" class="tit">
															기업심층분석<span class="spGnb"></span>
														</a></strong>
													<div class="listBx">
														<ul>
															<li>
																<a href="#">기업분석보고서</a>
															</li>
															<li>
																<a href="#">직무인터뷰</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="lyCol col4">
												<div class="colItem">
													<strong class="titArea"><a href="#" class="tit">
															취업전략<span class="spGnb"></span>
														</a></strong>
													<div class="listBx">
														<ul>
															<li>
																<a href="#">합격자소서</a>
															</li>
															<li>
																<a href="#">합격스펙</a>
															</li>
															<li>
																<a href="#">인적성∙면접후기</a>
															</li>
															<li>
																<a href="#">취업특강</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<div class="lyCol col4">
												<div class="colItem">
													<strong class="titArea"><a href="#" class="tit">
															취업실전 TOOL<span class="spGnb"></span>
														</a></strong>
													<div class="listBx">
														<ul>
															<li>
																<a href="#">취업성공툴</a>
															</li>
															<li>
																<a href="#">공기업 모의고사</a>
															</li>
															<li>
																<a href="#">인성역량검사</a>
															</li>
															<li>
																<a href="#">AI면접</a>
															</li>
															<li>
																<a href="#">문서서식 자료</a>
															</li>
															<li class="mict_nav">
																<a href="javascript:void(0);">역량테스트(MICT)</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
										<button type="button" class="btnCloseNav spGnb">퓨처랩
											메뉴 닫기</button>
									</div>
								</div>
							</div>
							<!-- 콘텐츠 레이어 // -->
						</li>
						<li id="gnbQna" class="navItem qna lyNull">
							<a href="${pageContext.request.contextPath}/board/list" class="linkItem">
								<span class="spNav"><span class="txIr">취업톡톡</span></span>
							</a>
						</li>
						<li class="navItem careerpath lyNull" id="careerpath">
							<a href="#" class="linkItem" target="_black">
								<span class="spNav"><span class="txIr">커리어패스</span></span>
							</a>
						</li>
					</ul>
					<!-- my 홈일경우 클래스 myPage -->
					<ul id="devMyPage" class="userNav">
						<sec:authorize access="isAnonymous()">
							<li class="userNav-item login">
								<a href="<%=request.getContextPath() %>/login/" class="txt-button login-button">로그인</a>
							</li>
							<li class="userNav-item join">
								<a href="<%=request.getContextPath() %>/signup/person" class="txt-button join-button">회원가입</a>
							</li>
						</sec:authorize>
						<sec:authorize access="hasRole('ROLE_PERSON')">
							<li class="userNav-item resume">
								<a href="<%=request.getContextPath() %>/person/resume/write" class="txt-button ico-mng"
									onclick="GA_Event('공통_PC', 'gnb', '이력서 관리');">이력서 관리</a>
							</li>
							<li class="userNav-item my member">
								<a href="<%=request.getContextPath() %>/person/myPage" class="btnMyOpen txt-button ico-cp"
									onclick="GA_Event('공통_PC', 'gnb', '개인회원홈');">
									<span class="spGnb"></span><span class="user-name">${selectOnePerson.pname}</span><span
										class="skip">열기</span>
								</a>
								<div class="lyMyArea">
									<div class="myInner">
										<div class="myLists">
											<ul>
												<li>
													<a href="<%=request.getContextPath() %>/person/resume/write"
														onclick="GA_Event('공통_PC', 'gnb', '이력서 관리');">
														<span class="tx">이력서 관리</span>
													</a>
												</li>
												<li>
													<a href="<%=request.getContextPath() %>/person/apply/list"
														onclick="GA_Event('공통_PC', 'gnb', '입사지원 현황');">
														<span class="tx">입사지원 현황</span>
													</a>
												</li>
												<li>
													<a href="https://www.jobkorea.co.kr/User/PositionOffer"
														onclick="GA_Event('공통_PC', 'gnb', '이력서 열람기업');">
														<span class="tx">이력서열람 기업</span>
													</a>
												</li>
												<li>
													<a href="https://www.jobkorea.co.kr/User/Smartmatch"
														onclick="GA_Event('공통_PC', 'gnb', '스마트매치');">
														<span class="tx">스마트매치</span>
													</a>
												</li>
												<li>
													<a href="<%=request.getContextPath() %>/person/myPage"
														onclick="GA_Event('공통_PC', 'gnb', '스크랩');">
														<span class="tx">스크랩</span>
													</a>
												</li>
												<li>
													<a href="<%=request.getContextPath() %>/person/infoModifyPerson"
														onclick="GA_Event('공통_PC', 'gnb', '개인정보 수정');">
														<span class="tx">개인정보 수정</span>
													</a>
												</li>
											</ul>
										</div>
										<div class="lyRow">
											<div class="btnRowWrap">
												<form action="logout" method="post">
													<a href="<%=request.getContextPath() %>//Login/Logout.asp" class="btnLogOut"
														onclick="GA_Event('공통_PC', 'gnb', '로그아웃');">로그아웃</a>
												</form>
											</div>
										</div>
									</div>
									<span class="icnArr spGnb"></span>
								</div>
							</li>
						</sec:authorize>
						<sec:authorize access="hasRole('ROLE_BUSINESS')">
							<li class="userNav-item corp">
								<a href="<%=request.getContextPath() %>/login" target="_blank">
									<span class="spGnb">기업서비스</span>
								</a>
								<div class="lyMyArea">
									<div class="myInner">
										<div class="lyRow">
											<div class="btnRowWrap">
												<a href="<%=request.getContextPath() %>/login">기업회원 로그인</a>
											</div>
										</div>
										<div class="myLists">
											<ul>
												<li>
													<a href="https://www.jobkorea.co.kr/Corp/Main">
														<span class="tx">기업회원 홈</span>
													</a>
												</li>
												<li>
													<a href="business/jobpostingupload/list">
														<span class="tx">채용공고 관리</span>
													</a>
												</li>
												<li>
													<a href="https://www.jobkorea.co.kr/Corp/GiMng/List">
														<span class="tx">공고·지원자 관리</span>
													</a>
												</li>
												<li>
													<a href="https://www.jobkorea.co.kr/Corp/Person/Find">
														<span class="tx">인재검색 관리</span>
													</a>
												</li>
												<li>
													<a href="https://www.jobkorea.co.kr/OnePick/Intro">
														<span class="tx">원픽 서비스 이용</span>
													</a>
												</li>
												<li>
													<a href="https://www.jobkorea.co.kr/service/company/option">
														<span class="tx">기업회원 서비스 안내</span>
													</a>
												</li>
												<li>
													<a
														href="https://www.jobkorea.co.kr/service/headhunting/platinum">
														<span class="tx">서치펌 서비스 안내</span>
													</a>
												</li>
											</ul>
											<div class="lyRow">
												<div class="btnRowWrap">
													<form action="logout" method="post">
														<a href="<%=request.getContextPath() %>/Login/Logout.asp" class="btnLogOut"
															onclick="GA_Event('공통_PC', 'gnb', '로그아웃');">로그아웃</a>
													</form>
												</div>
											</div>
										</div>
									</div>
									<span class="icnArr spGnb"></span>
								</div>
							</li>
						</sec:authorize>
						<sec:authorize access="hasRole('ROLE_ADMIN')">
							<li class="userNav-item admin">
								<form action="logout" method="post">
									<a href="<%=request.getContextPath() %>/Login/Logout.asp" class="btnLogOut"
										onclick="GA_Event('공통_PC', 'gnb', '로그아웃');">로그아웃</a>
								</form>
							</li>
						</sec:authorize>
					</ul>
				</div>
			</div>
		</div>
		<div id="banner-area">
			<div class="bnr-big">
				<img
					src="<%=request.getContextPath()%>/resources/images/mainpagebnrimg.png"
					alt="대체텍스트" class="bnrimage" style="margin: 0px"></img>
			</div>
			<div class="bnr-service">
				<div class="swiper-container bnr-swiper">
					<ul class="swiper-wrapper">
						<li class="swiper-slide" data-swiper-slide-index="2"
							style="width: 214px;">
							<a href="/top100" target="_blank">
								<img
									src="//i.jobkorea.kr/content/images/personal/main/sv-banner1.png"
									alt="">
							</a>
						</li>
						<li class="swiper-slide" data-swiper-slide-index="1"
							style="width: 214px;">
							<a href="/User/Qstn/Index" target="_blank">
								<img
									src="//i.jobkorea.kr/content/images/personal/main/sv-banner2.png"
									alt="">
							</a>
						</li>
						<li class="swiper-slide" data-swiper-slide-index="0"
							style="width: 214px;">
							<a href="/Review/MyReview" target="_blank">
								<img
									src="//i.jobkorea.kr/content/images/personal/main/sv-banner3.png"
									alt="">
							</a>
						</li>
					</ul>
					<span class="swiper-notification" aria-live="assertive"
						aria-atomic="true"></span>
					<div class="btn-control">
						<div class="bnrs-prev" tabindex="0" role="button"
							aria-label="Previous slide"></div>
						<div class="bnrs-next" tabindex="0" role="button"
							aria-label="Next slide"></div>
					</div>
				</div>
			</div>
			<div class="bnr-marketing">
				<a href="#" target="_blank">
					<img src="<%=request.getContextPath()%>/resources/images/companylogo/companylogobn01.png"
						border="0" alt="전남조선업도약센터 ">
				</a>
			</div>
		</div>
		<div class="jkNavDimm-click"></div>
		<div class="jkNavDimm-hover1"></div>
		<div class="jkNavDimm-hover2"></div>
		<div class="jkNavDimm-hover3"></div>
		<div class="jkNavDimm-hover4"></div>
		<div class="jkNavDimm-hover5"></div>
	</header>
</div>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>
	var swiper = new Swiper('.bnr-swiper', {
	direction : 'horizontal',
	centeredSlides : true,
	watchOverflow : true,
	slidesPerView : 1,
	loop : true,
	navigation : {
	nextEl : ".bnrs-next",
	prevEl : ".bnrs-prev",
	},
	observer : true,
	observeParents : true,
	});

	document.addEventListener("DOMContentLoaded", function() {
		// DOMContentLoaded 이벤트가 발생하면 실행될 코드
		var btnLogOut = document.querySelector(".btnLogOut");
		if (btnLogOut) {
			btnLogOut.addEventListener("click", function(e) {
				e.preventDefault(); // 버튼 클릭 시 기본 동작을 중단
				var form = btnLogOut.closest("form"); // 가장 가까운 form 요소 찾기
				if (form) {
					form.submit(); // form 요소의 submit 호출
				}
			});
		}
	});
</script>