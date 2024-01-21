<%@ Page Title="" Language="C#" MasterPageFile="~/EarthWise.Master" AutoEventWireup="true" CodeBehind="Product-Edit.aspx.cs" Inherits="Earthwise_Web.Product_Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="assets/css/myCustomStyle.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:100px";></div>
    

    <!-- Form -->
<div class="box-outer">
    <form name="add_form" method="post"  autocomplete="off" runat="server">
        <h2 class="heading">Product editing form</h2>

        <label>Product ID</label>
        <input type="text" name="product_name" class="input-control" placeholder="ID of current product" id="pid" runat="server">

        <label>Product name</label>
        <input type="text" name="product_name" class="input-control" placeholder="New name of product" id="pname" runat="server">

        <label>Product quantity</label>
        <input type="text" name="product_quantity" class="input-control" placeholder="New quantity of product" id="quantity" runat="server">


        <label>Product description</label>
        <p><textarea name="description" id="description" cols="30" rows="10" placeholder="New description of product" runat="server"></textarea></p>

    

        <asp:Button ID="Button2" runat="server" Text="Edit product" class="btn btn-primary btn-lg btn-block" OnClick="Edit_Click" Height="93px" Width="1537px" />
    </form>
    <hr>
   
</div>
<!-- Form End -->

</asp:Content>
