<%@include file="/WEB-INF/views/template/header.jsp"%>



<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<img class="first-slide home-image"
				src="<c:url value="/resources/images/back1.jpg" />"
				alt="First slide">

			<div class="container">
				<div class="carousel-caption">
					<h1>Electronics Shop</h1>

					<p>Here you can browse and buy electronics</p>

				</div>
			</div>
		</div>
		<div class="item">
			<img class="second-slide home-image"
				src="<c:url value="/resources/images/back2.jpg" />"
				alt="Second slide">

			<div class="container">
				<div class="carousel-caption">
					<h1>Electronics shop</h1>

					<p></p>

				</div>
			</div>
		</div>
	</div>
	<a class="left carousel-control" href="#myCarousel" role="button"
		data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
		aria-hidden="true"></span> <span class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#myCarousel" role="button"
		data-slide="next"> <span class="glyphicon glyphicon-chevron-right"
		aria-hidden="true"></span> <span class="sr-only">Next</span>
	</a>
</div>
<!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

	<!-- Three columns of text below the carousel -->
	<div class="row">
		<div class="col-lg-4">
			<a class="btn btn-default"
				href="<c:url value="/product/productList?searchCondition=mobilePhone" />"
				role="button"> <img class="img"
				src="<c:url value="/resources/images/phone-icon.png" />"
				alt="phone-image" width="140" height="140"></a>

			<h2>Mobile Phone</h2>
			<p>The newest mobile phone</p>

		</div>
		<!-- /.col-lg-4 -->



		<div class="row">
			<div class="col-lg-4">
				<a class="btn btn-default"
					href="<c:url value="/product/productList?searchCondition=pc" />"
					role="button"> <img class="img"
					src="<c:url value="/resources/images/pc-icon.png" />"
					alt="pc-image" width="140" height="140"></a>

				<h2>Personal computer</h2>
				<p>The newest personal computer</p>

			</div>
			<!-- /.col-lg-4 -->

			<div class="row">
				<div class="col-lg-4">
					<a class="btn btn-default"
						href="<c:url value="/product/productList?searchCondition=accessory" />"
						role="button"> <img class="img"
						src="<c:url value="/resources/images/accessories-icon.png" />"
						alt="Accesory-image
                Image" width="140"
						height="140"></a>

					<h2>Accessories</h2>
					<p>All electronics and related geeky goods..</p>

				</div>
				<!-- /.col-lg-4 -->


			</div>
			<!-- /.row -->
			<%@include file="/WEB-INF/views/template/footer.jsp"%>