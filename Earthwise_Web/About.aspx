<%@ Page Title="" Language="C#" MasterPageFile="~/EarthWise.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Earthwise_Web.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <!-- title -->
	<title>About</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>We sell organic and eco-friendly products in the strive for a better tomorrow</p>
						<h1>About Us</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- featured section -->
	<div class="feature-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-7">
					<div class="featured-text">
						<h2 class="pb-3">Why <span class="orange-text">EarthWise</span></h2>
						<div class="row">
							<div class="col-lg-6 col-md-6 mb-4 mb-md-5">
								<div class="list-box d-flex">
									<div class="list-icon">
										<i class="fas fa-shipping-fast"></i>
									</div>
									<div class="content">
										<h3>Home Delivery</h3>
										<p>Experience the excitement of sustainable living delivered to your doorstep with EarthWise's seamless home delivery. 
										Unwrap eco-friendly surprises hassle-free, knowing that your commitment to the environment has never been this convenient.</p>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 mb-5 mb-md-5">
								<div class="list-box d-flex">
									<div class="list-icon">
										<i class="fas fa-money-bill-alt"></i>
									</div>
									<div class="content">
										<h3>Best Price</h3>
										<p>At EarthWise, we believe that sustainability should be accessible to all. 
										That's why we offer the best prices on curated organic goods, so you can embrace an eco-conscious lifestyle without breaking the bank.</p>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6 mb-5 mb-md-5">
								<div class="list-box d-flex">
									<div class="list-icon">
										<i class="fas fa-briefcase"></i>
									</div>
									<div class="content">
										<h3>Custom Packaging</h3>
										<p>Your EarthWise experience is as unique as you are. With our custom packaging service, you have the freedom to choose products that align with your values and preferences. 
										Embrace a journey that reflects your personal commitment to sustainability.</p>
									</div>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="list-box d-flex">
									<div class="list-icon">
										<i class="fas fa-sync-alt"></i>
									</div>
									<div class="content">
										<h3>Quick Refund</h3>
										<p>Your satisfaction matters to us. Our quick refund policy ensures that you're delighted with every EarthWise delivery. 
										If you're not completely happy with your package, we're here to make it right and keep you on track to a greener future.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end featured section -->

	<!-- shop banner -->
	<section class="shop-banner">
    	<div class="container">
        	<h3>August sale is on! <br> with big <span class="orange-text">Discount...</span></h3>
            <div class="sale-percent"><span>Sale! <br> Up to</span>15% <span>off</span></div>
            <a href="Shop.aspx" class="cart-btn btn-lg">Shop Now</a>
        </div>
    </section>
	<!-- end shop banner -->

	<!-- team section -->
	<div class="mt-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="section-title">
						<h3>Our <span class="orange-text">Team</span></h3>
						<p>Behind every EarthWise surprise package and every thought-provoking blog post, there's a dedicated team working tirelessly to bring our vision to life. Our diverse and passionate group of individuals shares a common goal: to empower you on your journey towards sustainable and organic living.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="single-team-item">
						<div class="team-bg team-bg-1"></div>
						<h4>Jimmy Doe <span>Marketer</span></h4>
						<ul class="social-link-team">
							<li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-team-item">
						<div class="team-bg team-bg-2"></div>
						<h4>Marry Doe <span>Farmer</span></h4>
						<ul class="social-link-team">
							<li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 offset-md-3 offset-lg-0">
					<div class="single-team-item">
						<div class="team-bg team-bg-3"></div>
						<h4>Simon Joe <span>CEO</span></h4>
						<ul class="social-link-team">
							<li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end team section -->

	<!-- testimonail-section -->
	<div class="testimonail-section mt-80 mb-150">
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
								<h3>David Niph <span>Loyal Customer</span></h3>
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

</asp:Content>
