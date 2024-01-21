<%@ Page Title="" Language="C#" MasterPageFile="~/EarthWise.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Earthwise_Web.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Login</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Login into your account</p>
						<h1>Login</h1>
					</div>
				</div>
			</div>
		</div>
	</div>


    



    <!-- Signup panel. Also aligns to center -->
<div class="panel panel-default text-center">

        <!-- Signup form -->
        <div class="contact-from-section mt-150 mb-150">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 mb-5 mb-lg-0">
                        <div id="form_status"></div>
                        <div class="contact-form">
                            <!-- form for user registration -->
                            <form runat="server" method="post" id="signupForm" onsubmit="return valid_datas(this);">
                           
                                <p>
                                    <input type="email" placeholder="Email" name="email" runat="server" id="email1" required>
                                </p>
                                <p>
                                    <input type="password" placeholder="Password" name="password" runat="server" id="password1" style="width: 49%;" required>
                                </p>
                                
                                <p>
                                    User Type:
                                    <select name="userType" id="userType" runat="server">
                                        <option value="Customer">Customer</option>
                                        <option value="Manager">Manager</option>
                                    </select>
                                </p>
                                <p>
                            <asp:Button ID="loginButton" runat="server" Text="Login" OnClick="Login_Click" Height="63px" Width="108px" />
                                </p>
                                <p>
                                    &nbsp;</p>
                                <p>
                                    <asp:Label ID="lblerror" runat="server" Text="Label" visible="false"></asp:Label>
                                </p>
                                <asp:Label ID="lblsignuplink" runat="server">
    <a href="signup.aspx">You don't have an account? Sign up</a>
</asp:Label>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end signup form -->
    </div>

<!-- End signup panel -->



</asp:Content>
