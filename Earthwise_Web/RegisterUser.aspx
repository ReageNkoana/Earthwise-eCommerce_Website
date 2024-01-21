<%@ Page Title="" Language="C#" MasterPageFile="~/EarthWise.Master" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="Earthwise_Web.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Register a user</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

           <!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Create accounts for other Managers or Customers</p>
						<h1>Register</h1>
					</div>
				</div>
			</div>
		</div>
	</div>



<!-- Signup panel. Also aligns to center -->
<div class="panel panel-default text-center">

        <!-- Manager register users and other managers form -->
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
                                <p>
                                    User Type:
                                    <select name="userType" id="userType" runat="server">
                                        <option value="Manager" >Manager</option>
                                        <option value="Customer" >Customer</option>
                                        
                                    </select>
                                </p>
                                <p>
                                    <asp:Button ID="signupButton" runat="server" Text="Sign Up" OnClick="Signup_Click" Height="54px" Width="152px" />
                                </p>

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
