<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<style>
/*메인페이지 채용공고 4개씩*/
.grid-container {
	display: grid;
	grid-template-columns: auto auto auto auto;
	gap: 10px;
	background-color: rgba(33, 150, 243, 0);
	padding: 10px;
	height: 100%;
}
</style>
<body>
	<script>
		$(function() {
			$(window).scroll(function() {
				if ($(this).scrollTop() > 500) {
					$('.go_top').fadeIn();
				} else {
					$('.go_top').fadeOut();
				}
			});

			$(".go_top").click(function() {
				$('html, body').animate({
					scrollTop : 0
				}, 0);
				return false;
			});
		});

		$(document).ready(function() {
			$("[data-jid]").each(function() {
				var jid = $(this).data("jid");
				var scrapButton = $(this);

				// 서버에서 JSON 데이터 가져오기
				var selectListScrapJson = '${selectListScrapJson}';

				if (selectListScrapJson) {
					var selectListScrap = JSON.parse(selectListScrapJson);

					if (Array.isArray(selectListScrap)) {
						var selectOneScrap = selectListScrap
								.find(function(item) {
									return item.jid === jid;
								});

						if (selectOneScrap) {
							var isScrapAction = JSON
									.parse(selectOneScrap.isScrapAction);

							if (isScrapAction) {
								scrapButton.addClass('scraped');
								scrapButton.text('스크랩됨');
								scrapButton.removeClass('scrap');
							} else {
								scrapButton.removeClass('scraped');
								scrapButton.text('채용정보 스크랩');
								scrapButton.addClass('scrap');
							}
						}
					}
				}
			});
		});

		// 스크랩 버튼 클릭 시
		function setScrap(jid) {
			var mid = "${mid}";
			var scrapButton = $('[data-jid="' + jid + '"]');

			// 현재 스크랩 상태 가져오기
			var isScrapAction = scrapButton.hasClass('scrap'); // 스크랩 버튼이 'scrap' 클래스를 가지고 있는지 여부에 따라 설정

			$.ajax({
			url : "${pageContext.request.contextPath}/person/myPage",
			type : "post",
			contentType : "application/json", // JSON 형식으로 데이터 전송
			data : JSON.stringify({
			jid : jid,
			mid : mid,
			isScrapAction : isScrapAction.toString()
			// 문자열로 변환하여 보냄
			}),
			success : function(result) {
				if (result === "스크랩 성공") {
					// 스크랩 성공 처리
					scrapButton.toggleClass('scraped');
					scrapButton.text('스크랩됨');
					scrapButton.removeClass('scrap');
					alert("스크랩 성공");
				} else if (result === "스크랩 해제 성공") {
					// 스크랩 해제 성공 처리
					scrapButton.toggleClass('scraped');
					scrapButton.text('채용정보 스크랩');
					scrapButton.addClass('scrap');
					alert("스크랩 해제 성공");
				} else {
					// 스크랩 실패 처리
					alert("스크랩 실패");
				}
			},
			error : function(xhr, status, error) {
				if (xhr.status === 400) {
					alert("클라이언트 오류"); // 클라이언트 오류
				} else if (xhr.status === 500) {
					alert("서버 오류"); // 서버 오류
				} else {
					alert("알 수 없는 오류: " + xhr.status); // 기타 오류
				}
			}
			});
		}

		function getinfo(jid) {
			location.href = '${pageContext.request.contextPath}/jobpostinginfo?jid=' + jid;
		}
	</script>
	<section class="First VVIP 채용관">
		<div class="bannerwrap">
			<h5>
				<b>검색 결과</b>
			</h5>
		</div>
		<ul class="grid-container">
			<c:forEach items="${getJobPostingByKeywords}" var="item">
				<li class="bannereach">
					<form id="scrapForm">
						<div>
							<img src="${item.LI}" alt="이미지">
						</div>
						<div class="compName" onclick="getinfo('${item.JID}')">${item.BIZNAME}</div>
						<div class="recruitInfo" data-jid="${item.JID}"
							onclick="getinfo('${item.JID}')">
							${item.RE_TITLE}<br> <br>
						</div>
						<div id="applyscrap">
							<c:choose>
								<c:when test="${item.TODAY == 0}">
									<div class="applydateWithApply">오늘시작</div>
								</c:when>
								<c:when test="${item.DDAY == 0}">
									<div class="applydateWithApply">오늘마감</div>
								</c:when>
								<c:when test="${item.DDAY <= 7}">
									<button onclick="" class="applynow">즉시지원</button>
									<div class="applydateWithApply">D-${item.DDAY}</div>
								</c:when>
								<c:otherwise>
									<div class="applydateWithApply">D-${item.DDAY}</div>
								</c:otherwise>
							</c:choose>
							<!-- 클릭한 채용 정보 데이터를 폼에 담아 서버로 전송 -->
							<input type="hidden" name="jid" value="${item.JID}">
							<input type="hidden" name="recruitField"
								value="${item.RECRUIT_FIELD}">
							<input type="hidden" name="bizname" value="${item.BIZNAME}">
							<input type="hidden" name="brno" value="${item.BRNO}">
							<input type="hidden" name="userEducation"
								value="${item.USER_EDUCATION}">
							<input type="hidden" name="salary" value="${item.SALARY}">
							<input type="hidden" name="minSalary" value="${item.MIN_SALARY}">
							<input type="hidden" name="maxSalary" value="${item.MAX_SALARY}">
							<input type="hidden" name="registDate"
								value="${item.REGIST_DATE}">
							<input type="hidden" name="closeDate" value="${item.CLOSE_DATE}">
							<input type="hidden" name="reTitle" value="${item.RE_TITLE}">
							<input type="hidden" name="career" value="${item.CAREER}">
							<input type="hidden" name="workType" value="${item.WORK_TYPE}">
							<input type="hidden" name="empTypeCode"
								value="${item.EMP_TYPE_CODE}">
							<button type="button" onclick="setScrap('${item.JID}')"
								data-jid="${item.JID}" class="scrap">채용정보 스크랩</button>
						</div>
					</form>
				</li>
			</c:forEach>
		</ul>
	</section>
</body>
</html>