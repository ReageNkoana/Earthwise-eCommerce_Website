using Earthwise_Web.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Earthwise_Web
{
    public partial class Contact : System.Web.UI.Page
    {
        Earthwise_ServiceClient sc = new Earthwise_ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitMessage_Click(object sender, EventArgs e)
        {
            string name = Name.Value;
            string email = Email.Value;
            string phone = Phone.Value;
            string subject = Subject.Value;
            string message = Message.Value;

            bool result = sc.Contact(name, email, phone, subject, message);

            if (result)
            {
                // Contact information was saved successfully, display a success message
                lblSuccess.Text = "Thank you for your message! We'll get back to you soon.";
                lblSuccess.ForeColor = System.Drawing.Color.Green; // Set text color to green
                lblSuccess.Visible = true; // Make the label visible
            }
            else
            {
                // Handle the case when contact information could not be saved (e.g., display an error message).
                lblSuccess.Text = "An error occurred while saving your message. Please try again later.";
                lblSuccess.ForeColor = System.Drawing.Color.Red; // Set text color to red
                lblSuccess.Visible = true; // Make the label visible
            }

        }
    }
}