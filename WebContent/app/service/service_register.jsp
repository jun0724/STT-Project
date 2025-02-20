<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
 	<%--    <c:choose>
   <c:when test ="${loginUser != null}">
   <%@ include file="/fix/loginheader.jsp" %>
   </c:when>
   <c:otherwise>
   <%@ include file="/fix/header.jsp" %>
   </c:otherwise>
</c:choose> --%>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>서비스 등록</title>
    <link rel="stylesheet" href="${cp}/css/service_register.css">
</head>
<body>
<div id="header"></div>
        <p id="service_up">내 서비스 등록</p>
        <form action="${cp}/service/serviceregisterok.sv" enctype="multipart/form-data" >
            <div class="wrap">
                <p>서비스 기본 정보</p>
                <div class="info">
                    <ul>
                        <li>
                             <div class="cont_sub">
                             <label class="cont_title" for="">제목</label> <br><br>
                             <input id="servicetitle" name="servicetitle" type="text" size="83" placeholder="서비스를 잘 드러낼 수 있는 제목을 지어주세요." maxlength="30">
                            </div>
                        </li>
                        <li>
                            <div class="cont_sub">
                             <label class="cont_title" for="">카테고리</label><br><br>
                             <select name="servicecategory" id="servicecategory">
                                <option value="" disabled selected>선택해주세요</option>
                                <option value="1">IT · 프로그래밍</option>
                                <option value="2">디자인</option>
                                <option value="3">마케팅</option>
                                <option value="4">문서 · 글쓰기</option>
                                <option value="5">영상 · 사진 · 음향</option>
                             </select>
                            </div>
                        </li> 
                        <li>
                            <div class="cont_sub">
                                <label class="cont_title" for="">서비스 타입</label><br><br>
                                <select name="servicetype"class="servicetype">
                                    <option value="" disabled selected>선택해주세요</option>
                                    <option value="1">신입·초급 : 소스분석/수정</option>
                                    <option value="2">중급 : 설계/코딩</option>
                                    <option value="3">고급 : 최적화 설계</option>
                                    <option value="4">전문가</option>
                                 </select>
                                <input  type="number" id="serviceteamscale" name="serviceteamscale" min="1"  size="" placeholder="팀 규모(최소 1명)">
                                <input  type="checkbox" value="able" name="able" onclick='checkOnlyOne(this)'> 상주 가능
                                <input  type="checkbox" value="unable" name="unable" onclick='checkOnlyOne(this)'> 상주 불가능
                            </div>
                        </li>
                        <li>
                            <div class="cont_sub">
                                <label class="cont_title" for="">금액</label><br><br> <input id="serviceprice" name="serviceprice" type="text" size="83" placeholder="서비스 금액을 적어주세요.">
                            </div>
                        </li>
                        <li>
                            <div class="cont_sub">
                                <label class="cont_title" for="">작업 기간</label><br><br> <input id="serviceperiod" name="serviceperiod" type="text" size="83" placeholder="작업 기간을 정해주세요. ex) 45일">
                            </div>
                        </li> 
                     </ul>
                </div>
            </div>
            <div class="wrap">
                <p>서비스 설명</p>
                <div class="info">
                    <div id="service_box">
                        <textarea name="serviceinfo" id="serviceinfo" cols="30" rows="10" placeholder="서비스에 대한 설명을 적어주세요."></textarea>
                    </div>
                </div>
            </div>
            <div class="wrap">
                <p>의뢰인 준비사항</p>
                <div class="info">
                    <div id="service_box">
                        <textarea name="serviceinfo2" id="serviceinfo2" cols="30" rows="10" placeholder="의뢰인 준비 사항을 적어주세요."></textarea>
                    </div>
                </div>
            </div>
            <div class="wrap">
                <p>서비스 썸네일</p>
                <div class="container">
                    <div class="image-upload" id="image-upload">
                            <div class="button">
                                <label for="chooseFile">이미지 선택</label>
                            </div>
                            <input type="file" id="chooseFile" name="chooseFile" accept="image/*" onchange="loadFile(this)">
                        <div class="fileContainer">
                            <div class="fileInput">
                                <p>FILE NAME: </p>
                                <p id="fileName"></p>
                            </div>
                            <div class="buttonContainer">
                     <input type="button" class="submitButton" id="submitButton" value="submit">
                            </div>
                        </div>
                        
                    </div>
                    <div class="image-show" id="image-show"></div>
                </div>
            </div>
            <div id="fin">
                <button id="fin_btn">서비스 등록하기</button>
            </div>
        </form>
        <%@ include file="/fix/footer.jsp" %>
        <script src="http://code.jquery.com/jquery-lastest.js"></script>
        <script type="text/javascript" src="${cp}/js/service_register.js"></script>
</body>
</html>