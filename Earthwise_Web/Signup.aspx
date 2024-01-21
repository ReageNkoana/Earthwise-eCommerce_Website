<%@ Page Title="" Language="C#" MasterPageFile="~/EarthWise.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Earthwise_Web.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <title>SignUp</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
       <!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Create your account</p>
						<h1>SignUp</h1>
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
                                    <input type="text" placeholder="Name" name="name" runat="server" id="name" required>
                                </p>
                                <p>
                                    <input type="text" placeholder="Surname" name="surname" runat="server" id="surname" required>
                                </p>
                                <p>
                                    <input type="email" placeholder="Email" name="email" runat="server" id="email" required>
                                </p>
                                <p>
                                    <input type="password" placeholder="Password" name="password" runat="server" id="password" style="width: 49%;" required>
                                </p>
                                <p>
                                    <input type="password" placeholder="Confirm Password" runat="server" name="confirmPassword" id="confirmPassword" style="width: 49%;" required>
                                </p>
                                <!--p>
                                    User Type:
                                    <select name="userType" id="userType" runat="server">
                                        <option value="Customer">Customer</option>
                                        <option value="Manager">Manager</option>
                                    </select>
                                </!--p-->
                                <p>
                                    <asp:Button ID="signupButton" runat="server" Text="Sign Up" OnClick="Signup_Click" Height="54px" Width="152px" />
                                </p>
                                <p>
                                    &nbsp;</p>
                                <p>
                                    <asp:Label ID="lblerror" runat="server" Text="Label" visible="false"></asp:Label>
                                </p>
                                <asp:Label ID="lblloginlink" runat="server">
                                <a href="login.aspx">Already have an account? Log in</a>
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
