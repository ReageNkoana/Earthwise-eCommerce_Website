<%@ Page Title="" Language="C#" MasterPageFile="~/EarthWise.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Earthwise_Web.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- title -->
	<title>Cart</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	  <form runat="server">

    <!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Sustainable & Organic</p>
						<h1>Cart</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- cart -->
	<div class="cart-section mt-150 mb-150">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-12">
					<div class="cart-table-wrap">

						
						<table class="cart-table">
							<thead class="cart-table-head">
								<tr class="table-head-row">
									<th class="auto-style1"></th>
									<th class="auto-style2">Product Image</th>
									<th class="auto-style1">Name</th>
									<th class="auto-style1">Price</th>
									<th class="auto-style1">Quantity</th>
									<th class="auto-style1">Total</th>
								</tr>
							</thead>
							<!-- To be dynamically populated, id is cartTable-->
							<tbody runat="server" id="cartTable" ClientIDMode="Static">
								
								
							</tbody>
						</table>
					</div>
				</div>

				<div class="col-lg-4">
					<div class="total-section">
						<table class="total-table">
							<thead class="total-table-head">
								<tr class="table-total-row">
									<th>Total</th>
									<th>Price</th>
								</tr>
							</thead>
							<!-- To be dynamically populated, id is cartTotal-->
							<tbody runat="server" id="cartTotal">
								<tr class="total-data" id="totalData" runat="server">
									
								</tr>
								
							</tbody>
						</table>
						<div class="cart-buttons">

						</div>
					</div>

					
				</div>
				<div>

							<asp:Button ID="btnUpdateCart" runat="server" Text="Update Cart" CssClass="boxed-btn" OnClick="UpdateCart_Click" Height="66px" Width="160px" />
						
							<asp:Button ID="Button2" runat="server" Text="Check Out" CssClass="boxed-btn black" OnClick="CheckOut_Click" Height="67px" Width="139px" />


			</div>
								<div>


			</div>
		  	<div>
			

<asp:Label ID="lbllogin" runat="server" Visible="false" Text="Please login to see your cart" ForeColor="Red"></asp:Label>

			</div>
		</div>
	</div>
		</div>

	<!-- end cart -->

		  </form>

</asp:Content>
