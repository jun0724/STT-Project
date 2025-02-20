<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cp" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경 STT</title>
<!-- 파비콘 -->
<link rel="icon" href="${cp}/img/favicon.ico" />
<!-- 글꼴 -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@100;200;300;400;500;600;700&display=swap"
	rel="stylesheet" />
<link
	href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css"
	rel="stylesheet" />
<link rel="stylesheet" href="${cp}/css/modifypw.css" />
<link rel="stylesheet" href="${cp}/css/common.css" />
<script defer src="${cp}/js/modifypw.js"></script>
<script src="https://use.fontawesome.com/350e7194d8.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- jQuery에 주요 업데이트가 있을 경우 콘솔에 경고 표시, 해결할 수 있는 문제들은 스스로 해결 -->
<script src="https://code.jquery.com/jquery-migrate-1.2.1.js"></script>
</head>
<body>
<%String userid = request.getParameter("userid"); %>
	<div class="container">
		<img src="${cp}/img/logo.png" alt="">
		<div class="header">
			<h2>안녕하세요, STT입니다!</h2>
		</div>
		<div class="center">
			<div class="center_menu">
				<h3 class="check_wan">비밀번호 변경!</h3>
				<form name="modifyPwForm" action="${cp}/admin/modifypwok.ad" method="post"
					onsubmit="return sendit()">
					<input type="hidden" name="userid" value="<%=userid%>">
					<div class="pw">
						<div class="input_wrapper" id="userpw1">
							<input type="text" class="input_login" name="userpw"
								id="userpw" placeholder="새 비밀번호" />
								<i class="fa fa-eye fa-lg" ></i>
								
						</div>
						<div class="input_wrapper" id="userpw2">
							<input type="text" class="input_login" name="userpw_re"
								id="userpw_re" placeholder="비밀번호 확인" onblur="pwcheck()" />
							<i class="fa fa-eye fa-lg"></i>
						</div>
					</div>
					<div class="join_button">
						<input type="submit" value="비밀번호 변경 완료!" class="join_btn" />
					</div>
				</form>
			</div>
		</div>
	</div>
	<script>
      function All(selectAll) {
        const checkboxes = document.getElementsByName("chk");

        checkboxes.forEach((checkbox) => {
          checkbox.checked = selectAll.checked;
        });
      }
      
    </script>
    <script>
    $(document).ready(function(){
	    $('.input_wrapper i').on('click',function(){
	        $('input').toggleClass('active');
	        if($('input').hasClass('active')){
	            $(this).attr('class',"fa fa-eye-slash fa-lg")
	            .prev('input').attr('type',"text");
	        }else{
	            $(this).attr('class',"fa fa-eye fa-lg")
	            .prev('input').attr('type','password');
	        }
	    });
	});
    
    </script>
</body>
</html>