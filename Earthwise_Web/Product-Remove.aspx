<%@ Page Title="" Language="C#" MasterPageFile="~/EarthWise.Master" AutoEventWireup="true" CodeBehind="Product-Remove.aspx.cs" Inherits="Earthwise_Web.Product_Remove" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="assets/css/myCustomStyle.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="height:100px";></div>
    

    <!-- Form -->
<div class="box-outer">
    <form name="add_form" method="post"  autocomplete="off" runat="server">
        <h2 class="heading">Product removal form</h2>

        <label>Product name</label>
        <input type="text" name="product_name" class="input-control" placeholder="Name of product" id="pname" runat="server">

        <label>Product ID</label>
        <input type="text" name="product_id" class="input-control" placeholder="ID of product" id="pid" runat="server">


    

        <asp:Button ID="Button2" runat="server" Text="Remove product" class="btn btn-primary btn-lg btn-block" OnClick="Remove_Click" Height="91px" Width="1521px" />
    </form>
    <hr>
   
</div>
<!-- Form End -->

</asp:Content>
