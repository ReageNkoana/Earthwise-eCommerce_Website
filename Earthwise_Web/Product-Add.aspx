<%@ Page Title="" Language="C#" MasterPageFile="~/EarthWise.Master" AutoEventWireup="true" CodeBehind="Product-Add.aspx.cs" Inherits="Earthwise_Web.Product_Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link rel="stylesheet" href="assets/css/myCustomStyle.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
        <!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Add a new product into the databse</p>
						<h1>Add Product</h1>
					</div>
				</div>
			</div>
		</div>
	</div>

     <div style="height:100px";></div>
    

    <!-- Form -->
<div class="box-outer">
    <form name="add_form" method="post"  autocomplete="off" runat="server">
       

<label>Product name</label>
<input type="text" name="product_name" class="input-control" placeholder="Name of product" id="pname" runat="server">

<label>Product price</label>
<input type="text" name="product_price" class="input-control" placeholder="Price of product" id="price" runat="server">

<label>Product description</label>
<textarea name="product_description" id="description" class="input-control" placeholder="Product description" runat="server" rows="4"></textarea>

<label>Product category</label>
<input type="text" name="product_category" class="input-control" placeholder="Category of product" id="category" runat="server">

<label>Product image</label>
<input type="text" name="product_image" class="input-control" Text="assets/img/products/bathroom-kit.jpg" placeholder="URL of product image" id="image" runat="server">

<label>Active</label>
<input type="text" name="product_active" class="input-control" placeholder="0(no) or 1(yes)" id="active" runat="server">

<label>On Special</label>
<input type="text" name="product_special" class="input-control" placeholder="0(no) or 1(yes)" id="special" runat="server">

<asp:Button ID="Button2" runat="server" Text="Add product" class="btn btn-primary btn-lg btn-block" OnClick="Add_Click" Height="94px" Width="387px" />

        <asp:Label ID="lblSuccess" Visible="false" runat="server" Text="Label"></asp:Label>

    </form>
    <hr>
   
</div>
<!-- Form End -->

</asp:Content>
