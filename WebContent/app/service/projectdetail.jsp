<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
<%@ page errorPage = "/app/error/errorpage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Set The Table | 프로젝트디테일</title>
    <!-- 파비콘 -->
    <link rel="icon" href="${cp}/img/favicon.ico" />
    <!-- 글꼴 -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@100;200;300;400;500;600;700&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css"
      rel="stylesheet"
    />
    <!-- 아이콘 -->
    <script
      src="https://kit.fontawesome.com/bd7db36e77.js"
      crossorigin="anonymous"
    ></script>
    <!-- css -->
    <link rel="stylesheet" href="${cp}/css/common.css" />
    <link rel="stylesheet" href="${cp}/css/projectdetail.css" />
</head>
<body>
  <%@ include file="/fix/loginheader.jsp" %>
    <section id="projectdetail"class="inner">
      <div id="pjdetail" class="grid">
        <div id="pjtitle">
          <div id="title">IT·프로그래밍 / 웹사이트・모바일앱 신규 제작</div>
          <h1 id="subtitle">웹사이트 or 어플리케이션 프로토타입개발</h1>
        </div>
        <div id="withouttitle">
          <div id="pjmethod" class="grid">
            <div class="question">프로젝트 진행 방식</div>
            <div class="answer">
              외주 : 외부 프리랜서 & 사업자와 프로젝트 진행
            </div>
          </div>
          <div id="porb" class="grid">
            <div class="question">개인 / 기업 여부</div>
            <div class="answer">기업 (법인/개인사업자/예비창업자)</div>
          </div>
          <div id="pjcontents" class="grid">
            <div class="question">구체적인 내용 설명</div>
            <div class="answer">
              1. 프로젝트 개요
              <br />
              첨부파일의 인트로 및 커버, 홈(1차) 부분에 대해 개발 의뢰 드립니다.
              웹 개발과 어플리케이션 개발 각각 1차 견적 부탁드리며, 웹과
              어플리케이션 중 한 부분만 먼저 개발 계획입니다.
              <br />
              <br />
              2. 상세내용
              <br />
              - 상세 기획서는 추후 미팅 통해 전달 가능함
              <br />
              - 인트로 및 커버, 홈(1차) 완성 후 추후 나머지 부분도 의뢰 가능함
              <br />
              - 별도로 희망하는 개발 언어 없음
              <br />
              <br />
              3. 기한 및 예산
              <br />
              - 기한 : 11월 15일
              <br />
              - 예산 : 제안 가능
            </div>
            <div class="fileup">
              <section>
                <div></div>
                <p>
                  <i class="fa-regular fa-file"></i>
                  (주)더하이픈어플기획내용.png
                </p>
              </section>
            </div>
          </div>
          <div class="grid">
            <div class="question">프로젝트 작업 마감 일자</div>
            <div class="answer">2022.11.15</div>
          </div>
          <div class="grid">
            <div class="question">작업 기간 (일)</div>
            <div class="answer">100</div>
          </div>
        </div>
      </div>
      <div id="pjoffer">
        <div class="pjbox">
          <div id="rqinfo">
            <div id="requester">
              <div id="imgwrap">
                <img src="${cp}/img/logo2.png" alt="" />
                <div id="cong"></div>
              </div>
              <div>더*****</div>
            </div>
            <div id="money">
              <div id="tax">
                <div>세금계산서</div>
                <div>필요</div>
              </div>
              <div id="budget">
                <div>예산</div>
                <div class="fs24"><span>10,000,000</span>원</div>
              </div>
            </div>
            <div id="bt">
              <button><span>제안하기</span></button>
              <div id="closingdate">
                마감일까지
                <div>9일</div>
                남았습니다.
              </div>
            </div>
          </div>
          <div id="similarpj">
            <div id="sm1">비슷한 프로젝트 의뢰하기</div>
            <div id="sm2">프로젝트 의뢰하고, 딱 맞는 전문가를 만나보세요.</div>
            <a href="" id="sm3"> 비슷한 프로젝트 의뢰하기 </a>
          </div>
        </div>
      </div>
    </section>
    <!-- FOOTER -->
    <%@ include file="/fix/footer.jsp" %>     
</body>
</html>