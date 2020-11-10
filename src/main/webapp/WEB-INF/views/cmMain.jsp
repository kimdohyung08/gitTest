<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- <% --%>
<!--  	String contentPage = request.getParameter("contentPage"); -->
<!--  if (contentPage == null) { -->
<!--  	contentPage = "startView.jsp"; -->
<!--  } -->
<%-- %> --%> 
<!DOCTYPE html>
<html>
<head>
<!-- My CSS -->
<link rel="stylesheet" href="css/style.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<meta charset="UTF-8">
<title>메인 페이지 입니다.</title>

<style>
.carousel-container {
	width: 900px;
	margin: 30px auto;
	border: 0px solid #000;
	overflow: hidden;
	position: relative;
}

.carousel-slide {
	display: flex;
	width: 100%;
	height: 450px;
}

#prevBtn {
	position: absolute;
	top: 50%;
	left: 0;
	transform: translate(0%, -50%);
	width: 20px;
	height: 36px;
	background: url(img/carousel_prevBtn.png) no-repeat;
	text-indent: -9999px;
}

#nextBtn {
	position: absolute;
	top: 50%;
	right: 0;
	transform: translate(0%, -50%);
	width: 20px;
	height: 36px;
	background: url(img/carousel_nextBtn.png) no-repeat;
	text-indent: -9999px;
}

/* .container { */
/*   width: 70%; */
/*   height: 200px; */
/*   overflow: hidden; */
/* } */
/* .container img { */
/*   max-width: 100%; */
/*   height: auto; */
/*   display: block; */
/* } */
</style>

<script type="text/javascript">

const carouselSlide = document.querySelector('.carousel-slide');
const carouselImages = document.querySelectorAll('.carousel-slide img');

const prevBtn = document.querySelector('#prevBtn');
const nextBtn = document.querySelector('#nextBtn');

let counter = 1;
const size = carouselImages[0].clientWidth;
carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';

// Buttons
nextBtn.addEventListener('click', ()=> {
  if(counter >= carouselImages.length -1) return;
  carouselSlide.style.transition = "transform 0.4s ease-in-out";
  counter++;
  carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
});

prevBtn.addEventListener('click', ()=> {
  if(counter <= 0) return;
  carouselSlide.style.transition = "transform 0.4s ease-in-out";
  counter--;
  carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
});

// Jump to First/Last Slide
carouselSlide.addEventListener('transitionend', () => {
  console.log(carouselImages[counter]);
  if (carouselImages[counter].id === 'lastClone'){
    carouselSlide.style.transition = 'none'; // 트랜지션 효과 없애기
    counter = carouselImages.length -2; // couter 초기화
    carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)'; // 실제 마지막 이미지로 이동.
  } else if (carouselImages[counter].id === 'firstClone') {
    carouselSlide.style.transition = 'none';
    counter = carouselImages.length - counter; // couter 초기화
    carouselSlide.style.transform = 'translateX(' + (-size * counter) + 'px)';
  }
});
</script>

</head>
<body>
	<div class="carousel-container">
		<div class="carousel-slide">
			<img src="resources/img/Choco.jpg" id="lastClone"> 
			<img src="resources/img/StawberryBread.jpg"> 
			<img src="resources/img/Strawberry.jpg"> 
			<img src="resources/img/Choco.jpg"> 
			<img src="resources/img/StawberryBread.jpg" id="firstClone">
		</div>
		<button id="prevBtn">Prev</button>
		<button id="nextBtn">Next</button>
	</div>
	<table>
		<tr class="thumbnails">
			<td height="200" width="30" class="span4">
				<a href="#" class="thumbnail">
					<img class="container" src="resources/img/Choco.jpg" alt="이미지 준비중"> 
					<img class="container" src="resources/img/StawberryBread.jpg" alt="이미지 준비중"> 
					<img class="container" src="resources/img/Choco.jpg" alt="이미지 준비중"> 
					<img class="container" src="resources/img/Strawberry.jpg" alt="이미지 준비중">
				</a> 
			</td>
		</tr>
	</table>
</body>
</html>