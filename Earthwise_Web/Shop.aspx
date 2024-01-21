<%@ Page Title="" Language="C#" MasterPageFile="~/EarthWise.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="Earthwise_Web.Shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- title -->
	<title>Shop</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Sustainable & Organic</p>
						<h1>Shop</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->



    <!--products-->
<div class="product-section mt-150 mb-150">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="product-filters">
                    <ul>
                        <li class="active" data-filter="*">All</li>
                        <li data-filter=".home">Home</li>
                        <li data-filter=".outdoor">Outdoor</li>
                        <li data-filter=".clothing">Clothing</li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="center">
            <!-- To be dynamically populated, id is productList -->
            <div class="row product-lists" id="productList">
                <!-- Home Product -->
                <div class="col-lg-4 col-md-6 text-center home">

                   
                    <div class="single-product-item" id="HomeProducts" runat="server">
                        <!-- Product content will be populated here -->
                    </div>
                     <bbr></bbr>
                </div>
                <div class="col-lg-4 col-md-6 text-center home">
                    <div class="single-product-item" id="HomeProducts2" runat="server">
                        <!-- Product content will be populated here -->
                    </div>
                     <bbr></bbr>
                </div>

                <!-- Outdoor Product -->
                <div class="col-lg-4 col-md-6 text-center outdoor">
                    <div class="single-product-item" id="OutdoorProducts" runat="server">
                        <!-- Product content will be populated here -->
                    </div>
                     <bbr></bbr>
                </div>
                <!-- Outdoor Products 2 -->
                <div class="col-lg-4 col-md-6 text-center outdoor">
                    <div class="single-product-item" id="OutdoorProducts2" runat="server">
                        <!-- Product content will be populated here -->
                    </div>
                     <bbr></bbr>
                </div>

                <!-- Clothing Product -->
                <div class="col-lg-4 col-md-6 text-center clothing">
                    <div class="single-product-item" id="ClothingProducts" runat="server">
                        <!-- Product content will be populated here -->
                    </div>
                     <bbr></bbr>
                </div>
                <!-- Clothing Products 2 -->
                <div class="col-lg-4 col-md-6 text-center clothing">
                    <div class="single-product-item" id="ClothingProducts2" runat="server">
                        <!-- Product content will be populated here -->
                    </div>
                     <bbr></bbr>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end products -->



</asp:Content>
