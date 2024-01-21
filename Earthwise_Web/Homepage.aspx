<%@ Page Title="" Language="C#" MasterPageFile="~/EarthWise.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Earthwise_Web.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- hero area -->
	<div class="hero-area hero-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 offset-lg-2 text-center">
					<div class="hero-text">
						<div class="hero-text-tablecell">
							<p class="subtitle">Sustainable & Organic</p>
							<h1>Neatly packaged organic goodies</h1>
							<div class="hero-btns">
								<a href="Shop.aspx" class="boxed-btn">View Products</a>
								<a href="Contact.aspx" class="bordered-btn">Contact Us</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end hero area -->

	<!-- features list section -->
	<div class="list-section pt-80 pb-80">
		<div class="container">

			<div class="row">
				<div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
					<div class="list-box d-flex align-items-center">
						<div class="list-icon">
							<i class="fas fa-shipping-fast"></i>
						</div>
						<div class="content">
							<h3>Free Shipping</h3>
							<p>Delivered to doorstep</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
					<div class="list-box d-flex align-items-center">
						<div class="list-icon">
							<i class="fas fa-phone-volume"></i>
						</div>
						<div class="content">
							<h3>24/7 Support</h3>
							<p>Get support all day</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="list-box d-flex justify-content-start align-items-center">
						<div class="list-icon">
							<i class="fas fa-sync"></i>
						</div>
						<div class="content">
							<h3>Refund</h3>
							<p>Get refund within 3 days!</p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- end features list section -->

	<!-- product section -->
	<div class="product-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="section-title">	
						<h3><span class="orange-text">Our</span> products</h3>
						<p>Earthwise is your destination for sustainable shopping. 
							Our e-commerce website is dedicated to offering a curated selection of eco-friendly and organic products that are designed to help you 
							make environmentally conscious choices while enjoying the best in quality and style.</p>
					</div>
				</div>
			</div>

		<!-- To be dynamically populated, id is homeMenu -->
		<div class="row" id="homeMenu">
			<!-- Home Product -->
			<div class="col-lg-4 col-md-6 text-center">
				<div class="single-product-item" id="homeProduct" runat="server">
					<!-- Product content will be populated here -->
				</div>
			</div>

			<!-- Outdoor Product -->
			<div class="col-lg-4 col-md-6 text-center">
				<div class="single-product-item" id="outdoorProduct" runat="server">
					<!-- Product content will be populated here -->
				</div>
			</div>

			<!-- Clothing Product -->
			<div class="col-lg-4 col-md-6 text-center">
				<div class="single-product-item" id="clothingProduct" runat="server">
					<!-- Product content will be populated here -->
				</div>
			</div>
		</div>

		</div>
	</div>
	<!-- end product section -->

	

	<!-- testimonail-section -->
	<div class="testimonail-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1 text-center">
					<div class="testimonial-sliders">
						<div class="single-testimonial-slider">
							<div class="client-avater">
								<img src="assets/img/avaters/avatar1.png" alt="">
							</div>
							<div class="client-meta">
								<h3>Saira Hakira <span>Local shop owner</span></h3>
								<p class="testimonial-body">
									"I am thrilled to express my support for EarthWise as a local shop owner. Their dedication to sourcing sustainable and organic products aligns 
									perfectly with what I strive to offer in my store. Partnering with EarthWise has not only expanded my 
									customer base but has also reinforced my belief in conscious consumerism. The weekly deliveries bring a unique touch to my 
									offerings, and the free doorstep delivery makes it even more appealing for my customers. If you're looking to enhance your shopping experience while 
									supporting local businesses, EarthWise is the way to go!"
								</p>
								<div class="last-icon">
									<i class="fas fa-quote-right"></i>
								</div>
							</div>
						</div>
						<div class="single-testimonial-slider">
							<div class="client-avater">
								<img src="assets/img/avaters/avatar2.png" alt="">
							</div>
							<div class="client-meta">
								<h3>David Niph <span>Loyal customer</span></h3>
								<p class="testimonial-body">
									"I've been a proud EarthWise customer for over a year now, and I can't recommend them enough! 
									Their weekly deliveries of sustainable and organic products have not only simplified my life but also aligned with my values. 
									The element of surprise with each delivery is exciting, and the free doorstep delivery just adds to the convenience. 
									Join EarthWise and elevate your sustainable living effortlessly!"
								</p>
								<div class="last-icon">
									<i class="fas fa-quote-right"></i>
								</div>
							</div>
						</div>
						<div class="single-testimonial-slider">
							<div class="client-avater">
								<img src="assets/img/avaters/avatar3.png" alt="">
							</div>
							<div class="client-meta">
								<h3>Jacob Sikim <span>Farmer</span></h3>
								<p class="testimonial-body">
									"As a dedicated farmer, EarthWise has truly impressed me. Their unwavering commitment to sustainability and organic products resonates with my values. 
									Seeing my hard-earned produce featured in their deliveries is a proud moment. This partnership has opened up a wider market and allowed more people to enjoy farm-fresh
									goodness. EarthWise is not just a service; it's a bridge connecting farmers like me with conscious consumers. Kudos to EarthWise for fostering a greener future!"
								</p>
								<div class="last-icon">
									<i class="fas fa-quote-right"></i>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end testimonail-section -->
	
	<!-- advertisement section -->
	<div class="abt-section mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-12">
					<div class="abt-bg">
						<a href="https://www.youtube.com/watch?v=0Puv0Pss33M" class="video-play-btn popup-youtube"><i class="fas fa-play"></i></a>
					</div>
				</div>
				<div class="col-lg-6 col-md-12">
					<div class="abt-text">
						<p class="top-sub">Since 2020</p>
						<h2>We are <span class="orange-text">EarthWise</span></h2>
						<p>Earthwise is your destination for sustainable living. We're passionate about offering eco-friendly and organic products that empower you to 
							make responsible choices for a greener planet. With transparency and integrity at our core, we curate a selection of high-quality items that 
							align with your values. Join us in creating a brighter, more sustainable future, one purchase at a time. Welcome to Earthwise.</p>
						<a href="About.aspx" class="boxed-btn mt-4">Know more</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end advertisement section -->
	
	<!-- shop banner -->
	<section class="shop-banner">
    	<div class="container">
        	<h3>October sale is on! <br> with big <span class="orange-text">Discount...</span></h3>
            <div class="sale-percent"><span>Save! <br> Up to</span>15% <span>off</span></div>
            <a href="Shop.aspx" class="cart-btn btn-lg">Shop Now</a>
        </div>
    </section>
	<!-- end shop banner -->

	<!-- logo carousel -->
	<div class="logo-carousel-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="logo-carousel-inner">
						<div class="single-logo-item">
							<img src="assets/img/company-logos/1.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/2.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/3.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/4.png" alt="">
						</div>
						<div class="single-logo-item">
							<img src="assets/img/company-logos/5.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end logo carousel -->
</asp:Content>
