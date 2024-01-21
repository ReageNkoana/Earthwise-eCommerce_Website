using Earthwise_Web.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Earthwise_Web
{
    public partial class Product_Add : System.Web.UI.Page
    {
        Earthwise_ServiceClient sc = new Earthwise_ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Add_Click(object sender, EventArgs e)
        {
            // Get product details from the form inputs
            string prodName = pname.Value;
            string prodDescr = description.Value;
            decimal prodPrice = Convert.ToDecimal(price.Value); // Assuming the price is a decimal
            string prodCategory = category.Value;
            string prodImage = image.Value;
            int prodActive = Convert.ToInt32(active.Value); // Assuming active is an integer
            int OnSpecial = Convert.ToInt32(special.Value); // Assuming OnSpecial is an integer

            // Call the AddProduct method to add the product to the database
            bool productAdded = sc.AddProduct(prodName, prodDescr, prodPrice, prodCategory, prodImage, prodActive, OnSpecial);

            if (productAdded)
            {
                // Product added successfully, you can show a success message
                lblSuccess.Text = "Product added successfully!";
                // Clear the form or perform any other necessary actions
                lblSuccess.Visible = true;
            }
            else
            {
                // Product could not be added, handle the error or show an error message
                lblSuccess.Text = "Failed to add the product. Please try again.";
                lblSuccess.Visible = true;
            }
        }
    }
}