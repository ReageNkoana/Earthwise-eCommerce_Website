using Earthwise_Web.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Earthwise_Web
{
    public partial class Single_Product : System.Web.UI.Page
    {

        Earthwise_ServiceClient sc = new Earthwise_ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack && Request.QueryString["ID"] != null)
            {
                int productId;
                if (int.TryParse(Request.QueryString["ID"], out productId))
                {
                    // Retrieve the product by its ID
                    Product product = sc.GetSingleProduct(productId);

                    if (product != null)
                    {
                        /// Create HTML markup for the product including its description
                        string productDisplay = "<div class='container'>";
                        productDisplay += "<div class='row'>";
                        productDisplay += "<div class='col-md-6 text-center'>";
                        productDisplay += "<div class='product-image'>";
                        productDisplay += "<img src='" + product.ProdImage + "' alt='Product Image'>";
                        productDisplay += "</div>";
                        productDisplay += "</div>";
                        productDisplay += "<div class='col-md-6'>";
                        productDisplay += "<h1>" + product.ProdName + "</h1>";
                        productDisplay += "<p class='product-description'>" + product.ProdDescription + "</p>";
                        productDisplay += "<p class='product-price'>Price: R" + product.ProdPrice + "</p>";
                        productDisplay += "<a href='Cart.aspx' class='cart-btn'><i class='fas fa-shopping-cart'></i> Add to Cart</a>";
                        productDisplay += "</div>";
                        productDisplay += "</div>";
                        productDisplay += "</div>";

                        // Inject the product details HTML directly into the page
                        productDetailsPlaceholder.InnerHtml = productDisplay;

                    }
                }
            }
        }

    }
}