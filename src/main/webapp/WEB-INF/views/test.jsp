<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
  <!-- ================================================================================================ -->
     <!-- 사이드바 시작 -->
  <div class="d-flex" id="wrapper" style= "padding=5px;">
    <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading" style="text-align: center; margin : 50px;"> <h5><strong>My Page</strong></h5>  </div>
      <div class="list-group list-group-flush" id="sidebar">
      <style>
      	.list-group-item {text-align: center;}
      </style>
      <!-- 사이드바 출력 구분 -->
 <script>
        var strSidebar = "";
    	var memberType = "admin"; /* DB연동 필요 */
    	
  function sidebarConditional() {
        
    	if(memberType==="admin") {
    		/* 관리자 사이드 바 */
    		strSidebar += '<a href="/desert/src/main/webapp/WEB-INF/views/myPage/adminPage/adminSellerManage.jsp" class="list-group-item list-group-item-action bg-light">판매자 관리</a>';
    		strSidebar += '<a href="www.naver.com" class="list-group-item list-group-item-action bg-light">회원 관리</a>';
    		strSidebar += '<a href="myPage/adminPage/adminNoticeManage.jsp" class="list-group-item list-group-item-action bg-light">공지사항 관리</a>';
    		strSidebar += '<a href="myPage/adminPage/adminEventManage.jsp" class="list-group-item list-group-item-action bg-light">이벤트 관리</a>';
    		strSidebar += '<a href="myPage/adminPage/adminQNAManage.jsp" class="list-group-item list-group-item-action bg-light">1:1 문의 답변</a>';
    	} else {
    		/* 구매자 사이드 바 */
    		 strSidebar += '<a href="#" class="list-group-item list-group-item-action bg-light">주문 내역</a>';
             strSidebar += '<a href="#" class="list-group-item list-group-item-action bg-light">포인트 내역</a>';
             strSidebar += '<a href="#" class="list-group-item list-group-item-action bg-light">쿠폰 조회</a>';
             strSidebar += '<a href="#" class="list-group-item list-group-item-action bg-light">정보 수정/탈퇴</a>';
             strSidebar += '<a href="#" class="list-group-item list-group-item-action bg-light">1:1 문의하기</a>';
             strSidebar += '<a href="#" class="list-group-item list-group-item-action bg-light">나의 리뷰 관리</a>';
    	} if(memberType==="seller") {
        	/* 판매자 사이드 바 */
            strSidebar += '<a class="list-group-item list-group-item-action bg-#5BB9A8" style="background-color : #5BB9A8;color : white">판매자 메뉴</a>';
            strSidebar += '<a href="#" class="list-group-item list-group-item-action bg-light">상품 등록</a>';
            strSidebar += '<a href="#" class="list-group-item list-group-item-action bg-light">내 상품 리스트</a>';
            strSidebar += '<a href="#" class="list-group-item list-group-item-action bg-light">주문 관리</a>';
            strSidebar += '<a href="#" class="list-group-item list-group-item-action bg-light">판매 데이터 조회</a>';
            strSidebar += '<a href="#" class="list-group-item list-group-item-action bg-light">상품 1:1 문의 답변</a>';
        }       
    	
    	document.getElementById('sidebar').innerHTML=strSidebar;
     }
  </script>
  
      </div>
    </div>
    <!-- 사이드바 끝 -->
 <!-- ================================================================================================ -->
    <!-- 페이지 본문 내용을 입력하세요 -->
 <!-- ========================================= -->
    <!-- 회원, 타입, 등급, 포인트. 쿠폰 -->
    <div style="margin : 0 auto;">
    <div class="mypage_top" style=" width: auto; height : 100px; background-color : #F2F2F2 ; display : block ; margin : 25px; padding : 10px;">
    <style>
    	.infoBox{
    	width: 300px; height :50px; text-align=center; margin:0 auto; display : inline-block ; padding : 20px;
    	}
    </style>
    	   <span class="infoBox" id="memberTypeBox">
			<!-- fuction memberTypeBox() -->
			<script>
			function memberTypeBoxConditional(){
		        var strMemberTypeBox = "";
		    	var memberType = "admin"; /* DB연동 필요 */
		    	
		    	if(memberType==="admin"){
		    		strMemberTypeBox = "<h3>관리자님 환영합니다.</h3>";
		    	}
		    	else if(memberType==="seller"){
		    		strMemberTypeBox = "<h3>판매자님 환영합니다.</h3>";
		    	}else{
		    		strMemberTypeBox = "";
		    	}
		    	document.getElementById('memberTypeBox').innerHTML=strMemberTypeBox;
			}
			</script>
   			</span>
   			 <span class="infoBox">
    	   <h3>적립금 : 100원</h3>
   			</span>
   			 <span class="infoBox">
    	  <h3>소유 쿠폰 : 2 개</h3>
   			</span>
    </div>
		<br />
     <!— ========================================= —>
     <script>
     window.onload=function(){
 		    sidebarConditional();
 		    memberTypeBoxConditional();
 	 };
 	 </script>
</body>
</html>