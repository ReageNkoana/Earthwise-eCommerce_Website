using Earthwise_Web.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Earthwise_Web
{
    public partial class Cart : System.Web.UI.Page
    {

        Earthwise_ServiceClient sc = new Earthwise_ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if a session variable that indicates login status exists
            if (Session["LoggedInUserID"] == null)
            {
                lbllogin.Visible = true;
            }
            else
            {
                // Ensure the shopping cart session exists or create an empty one
                if (Session["UserCart"] == null)
                {
                    Session["UserCart"] = new List<Cart>();
                }

                if (!IsPostBack)
                {
                    // Retrieve the product ID from the query string
                    string productId = Request.QueryString["ProductID"];

                    // Ensure the product ID is valid and can be parsed
                    if (!string.IsNullOrEmpty(productId) && int.TryParse(productId, out int productID))
                    {
                        // Get the user's ID from the session
                        int userID = Convert.ToInt32(Session["LoggedInUserID"]);

                        // Check if the product is already in the user's cart
                        bool isProductInCart = sc.isInCart(userID, productID);
                        int Quantity = 1;

                        if (!isProductInCart)
                        {
                            // Call the service method to add the product to the Cart table
                            sc.addToCart(userID, productID, Quantity);
                        }

                        // Retrieve the user's cart products from the Cart table
                        dynamic userCartItems = sc.getCartItems(userID);

                        // Store the user's cart in the session variable
                        Session["UserCart"] = userCartItems;

                        string productDisplay = "";

                        foreach (var cartItem in userCartItems)
                        {
                            // Retrieve the product information using prodID
                            dynamic product = sc.GetSingleProduct(cartItem.ProdId);

                            productDisplay += "<tr class='table-body-row'>";
                            productDisplay += "<td class 'product-remove'><a href='#'><i class='far fa-window-close'></i></a></td>";
                            productDisplay += "<td class='product-image'><img src='" + product.ProdImage + "' alt='" + product.ProdName + "'></td>";
                            productDisplay += "<td class='product-name'>" + product.ProdName + "</td>";
                            productDisplay += "<td class='product-price'>R" + product.ProdPrice + "</td>";
                            productDisplay += "<td class='product-quantity'><input type='number' id='quantity_" + cartItem.ProdId + "' value='" + cartItem.Quantity + "'></td>";
                            productDisplay += "<td class='product-total'>R" + product.ProdPrice+ "</td>";
                            productDisplay += "</tr>";
                        }

                        // Update the cart display
                        cartTable.InnerHtml = productDisplay;
                    }
                }
            }
        }



        protected void UpdateCart_Click(object sender, EventArgs e)
        {
            // Checking  if a session variable that indicates login status exists
            if (Session["LoggedInUserID"] == null )
            {
                // User is not logged in, so redirect to the login page
                Response.Redirect("Login.aspx");
            }
            else
            {
                // User is logged in, proceed to update the cart

                //cart update code goes here






                Response.Redirect("Cart.aspx");


            }
        }

        protected void CheckOut_Click(object sender, EventArgs e)
        {

            // Check if a session variable that indicates login status exists
            if (Session["LoggedInUserID"] == null )
            {
                // User is not logged in, so redirect to the login page
                Response.Redirect("Login.aspx");
            }
            else
            {
                // User is logged in, proceed to checkout
                Response.Redirect("Checkout.aspx");
            }

        }
    }



}