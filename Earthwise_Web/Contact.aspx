<%@ Page Title="" Language="C#" MasterPageFile="~/EarthWise.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Earthwise_Web.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- title -->
	<title>Contact</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- breadcrumb-section -->
	<div class="breadcrumb-section breadcrumb-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<p>Get 24/7 Support</p>
						<h1>Contact us</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

<!-- contact form -->
<div class="contact-from-section mt-150 mb-150">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mb-5 mb-lg-0">
                <div class="form-title">
                    <h2>Questions? Message Us!</h2>
                    <p>We're here to help! If you have any questions or need assistance, please don't hesitate to reach out. 
                        Our friendly team is just a message away, ready to provide you with the support and information you need. 
                        Your satisfaction is our priority.</p>
                </div>
                <div id="form_status"></div>
                <div class="contact-form">
                    <!-- form for getting user input -->
                    <form runat="server" method="POST" id="Form1" onsubmit="return valid_datas(this);">
                        <p>
                            <input type="text" placeholder="Name" name="name" id="Name" runat="server">
                            <input type="email" placeholder="Email" name="email" id="Email" runat="server">
                        </p>
                        <p>
                            <input type="tel" placeholder="Phone" name="phone" id="Phone" runat="server">
                            <input type="text" placeholder="Subject" name="subject" id="Subject" runat="server">
                        </p>
                        <p>
                            <textarea name="message" id="Message" cols="30" rows="10" placeholder="Message" runat="server"></textarea>
                        </p>
                        <input type="hidden" name="token" value="FsWga4&@f6aw" />
                        <p>
                            <asp:Button ID="submitMessage" runat="server" Text="Submit" OnClick="SubmitMessage_Click" Height="68px" Width="129px" />
                        </p>
                        <p>
                            &nbsp;</p>
                        <p>
                            <asp:Label ID="lblSuccess" runat="server" visible="false" Text="Label"></asp:Label>
                        </p>
                    </form>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="contact-form-wrap">
                    <div class="contact-form-box">
                        <h4><i class="fas fa-map"></i> Shop Address</h4>
                        <p>27 Impala Rd <br> Sandton, South Africa</p>
                    </div>
                    <div class="contact-form-box">
                        <h4><i class="far fa-clock"></i> Shop Hours</h4>
                        <p>MON - FRIDAY: 8 to 9 PM <br> SAT - SUN: 10 to 8 PM </p>
                    </div>
                    <div class="contact-form-box">
                        <h4><i class="fas fa-address-book"></i> Contact</h4>
                        <p>Phone: 0846610552 <br> Email: support@earthwise.com</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end contact form -->

	<!-- find our location -->
	<div class="find-location blue-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<p> <i class="fas fa-map-marker-alt"></i> Find Our Location</p>
				</div>
			</div>
		</div>
	</div>
	<!-- end find our location -->

	<!-- google map section -->
	<div class="embed-responsive embed-responsive-21by9">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3582.5045060906764!2d28.049835875355104!3d-26.11508856035054!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1e950ccde70bb727%3A0x22ba498943ce0c7!2s27%20Impala%20Rd%2C%20Chislehurston%2C%20Sandton%2C%202196!5e0!3m2!1sen!2sza!4v1696498622280!5m2!1sen!2sza" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" class="embed-responsive-item"></iframe>
	</div>
	<!-- end google map section -->

</asp:Content>
