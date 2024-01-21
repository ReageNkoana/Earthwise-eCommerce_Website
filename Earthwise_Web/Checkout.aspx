<%@ Page Title="" Language="C#" MasterPageFile="~/EarthWise.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Earthwise_Web.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- title -->
	<title>Check Out</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Sustainable & Organic</p>
						<h1>Check Out</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- check out section -->
	<div class="checkout-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="checkout-accordion-wrap">
						<div class="accordion" id="accordionExample">
						  <div class="card single-accordion">
						    <div class="card-header" id="headingOne">
						      <h5 class="mb-0">
						        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
						          Billing Address
						        </button>
						      </h5>
						    </div>

						    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
						      <div class="card-body">
						        <div class="billing-address-form">
						        	<form action="index.html">
						        		<p><input type="text" placeholder="Name" id="uName" runat="server"></p>
						        		<p><input type="email" placeholder="Email" id="uEmail" runat="server"></p>
						        		<p><input type="text" placeholder="Address" id="uAddress" runat="server"></p>
						        		<p><input type="tel" placeholder="Phone" id="uPhone" runat="server"></p>
						        		<p><textarea name="bill" cols="30" rows="10" placeholder="Say Something" id="uMessage" runat="server"></textarea></p>
						        	</form>
						        </div>
						      </div>
						    </div>
						  </div>
							

							<div class="card single-accordion">
						    <div class="card-header" id="headingTwo">
						      <h5 class="mb-0">
						        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
						          Billing Details
						        </button>
						      </h5>
						    </div>

						    <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionExample">
						      <div class="card-body">
						        <div class="billing-address-form">
						        	<form action="Homepage.aspx">
										<!-- Form input controls, preferably hash these values before storing, security risk-->
						        		<p><input type="text" placeholder="Card Number" id="uCardNumber" runat="server"></p>
						        		<p><input type="text" placeholder="Expiry Date" id="uCardDate" runat="server"></p>
						        		<p><input type="text" placeholder="CVV" id="uCVV" runat="server"></p>										        		
						        	</form>
						        </div>
						      </div>
						    </div>




								
						  </div>


						  
						</div>

					</div>
				</div>

				<div class="col-lg-4">
					<div class="order-details-wrap">
						<table class="order-details">
							<thead>
								<tr>
									<th>Your order Details</th>
									<th>Price</th>
								</tr>
							</thead>
							<!-- To be dynamically populated, id is orderDetails-->
							<tbody class="order-details-body" runat="server" id="orderDetails">
								<tr>
									<td>Product</td>
									<td>Total</td>
								</tr>
								<tr>
									<td>Emerald</td>
									<td>R600</td>
								</tr>
								<tr>
									<td>Ruby</td>
									<td>R400</td>
								</tr>
								<tr>
									<td>Sapphire</td>
									<td>R200</td>
								</tr>
							</tbody>
							<!-- To be dynamically populated, id is orderTotal-->
							<tbody class="checkout-details" runat="server" id="orderTotal">
								<tr>
									<td>Subtotal</td>
									<td>R1200</td>
								</tr>
								<tr>
									<td>Shipping</td>
									<td>R0</td>
								</tr>
								<tr>
									<td>Total</td>
									<td>R1200</td>
								</tr>
							</tbody>
						</table>
						<a href="Shop.aspx" class="boxed-btn">Place Order</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end check out section -->

</asp:Content>
