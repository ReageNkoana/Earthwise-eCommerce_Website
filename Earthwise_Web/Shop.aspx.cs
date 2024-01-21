using Earthwise_Web.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Earthwise_Web
{
    public partial class Shop : System.Web.UI.Page
    {

        Earthwise_ServiceClient sc = new Earthwise_ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            dynamic Home = sc.GetProducts("Home");
            string HDisplay = "";
            string HDisplay2 = "";
            dynamic Outdoor = sc.GetProducts("OutDoor");
            string ODisplay = "";
            string ODisplay2 = "";
            dynamic Clothing = sc.GetProducts("Clothing");
            string CDisplay = "";
            string CDisplay2 = "";

            int count = 0;


            foreach (Product m in Home)
            {
                if (count % 2 == 0)
                {
                    // Create HTML markup for each home product
                    HDisplay += "<div class='d-block d-md-flex menu-food-item'>";
                    HDisplay += "<div class='text order-1 mb-3'>";
                    HDisplay += "<img src='" + m.ProdImage + "' alt='" + m.ProdName + "' style='width: 400px; height: 300px;'>"; // Set width and height as needed
                    HDisplay += "<h3><a href='Single-Product.aspx?ID=" + m.ProdId + "'>" + m.ProdName + "</a></h3>";
                    HDisplay += "<p class='product-price'>R" + m.ProdPrice + "</p>";
                    HDisplay +="<a href='Cart.aspx?ProductID=" + m.ProdId + "' class='cart-btn'><i class='fas fa-shopping-cart'></i> Add to Cart</a>";
                    HDisplay += "</div></div>";

                }
                else
                {
                    
                    HDisplay2 += "<div class='d-block d-md-flex menu-food-item'>";
                    HDisplay2 += "<div class='text order-1 mb-3'>";
                    HDisplay2 += "<img src='" + m.ProdImage + "' alt='" + m.ProdName + "' style='width: 400px; height: 300px;'>"; // Set width and height as needed
                    HDisplay2 += "<h3><a href='Single-Product.aspx?ID=" + m.ProdId + "'>" + m.ProdName + "</a></h3>";
                    HDisplay2 += "<p class='product-price'>R" + m.ProdPrice + "</p>";
                    HDisplay2 += "<a href='Cart.aspx?ProductID=" + m.ProdId + "' class='cart-btn'><i class='fas fa-shopping-cart'></i> Add to Cart</a>";
                    HDisplay2 += "</div></div>";
                }

                count++;
            }



            count = 0;

            foreach (Product m in Outdoor)
            {
                if (count % 2 == 0)
                {

                    // Create HTML markup for each Outdoor product

                    ODisplay += "<div class='d-block d-md-flex menu-food-item'>";
                    ODisplay += "<div class='text order-1 mb-3'>";
                    ODisplay += "<img src='" + m.ProdImage + "' alt='" + m.ProdName + "' style='width: 400px; height: 300px;'>"; // Set width and height as needed
                    ODisplay += "<h3><a href='Single-Product.aspx?ID=" + m.ProdId + "'>" + m.ProdName + "</a></h3>";
                    ODisplay += "<p class='product-price'>R" + m.ProdPrice + "</p>";
                    ODisplay += "<a href='Cart.aspx?ProductID=" + m.ProdId + "' class='cart-btn'><i class='fas fa-shopping-cart'></i> Add to Cart</a>";
                    ODisplay += "</div></div>";
                }
                else
                {
                    ODisplay2 += "<div class='d-block d-md-flex menu-food-item'>";
                    ODisplay2 += "<div class='text order-1 mb-3'>";
                    ODisplay2 += "<img src='" + m.ProdImage + "' alt='" + m.ProdName + "' style='width: 400px; height: 300px;'>"; // Set width and height as needed
                    ODisplay2 += "<h3><a href='Single-Product.aspx?ID=" + m.ProdId + "'>" + m.ProdName + "</a></h3>";
                    ODisplay2 += "<p class='product-price'>R" + m.ProdPrice + "</p>";
                    ODisplay2 += "<a href='Cart.aspx?ProductID=" + m.ProdId + "' class='cart-btn'><i class='fas fa-shopping-cart'></i> Add to Cart</a>";
                    ODisplay2 += "</div></div>";


                }

                count++;


            }



            count = 0;

            foreach (Product m in Clothing)
            {
                if (count % 2 == 0)
                {

                    // Create HTML markup for each clothing product

                    CDisplay += "<div class='d-block d-md-flex menu-food-item'>";
                    CDisplay += "<div class='text order-1 mb-3'>";
                    CDisplay += "<img src='" + m.ProdImage + "' alt='" + m.ProdName + "' style='width: 400px; height: 300px;'>"; // Set width and height as needed
                    CDisplay += "<h3><a href='Single-Product.aspx?ID=" + m.ProdId + "'>" + m.ProdName + "</a></h3>";
                    CDisplay += "<p class='product-price'>R" + m.ProdPrice + "</p>";
                    CDisplay += "<a href='Cart.aspx?ProductID=" + m.ProdId + "' class='cart-btn'><i class='fas fa-shopping-cart'></i> Add to Cart</a>";
                    CDisplay += "</div></div>";
                }
                else
                {
                    CDisplay2 += "<div class='d-block d-md-flex menu-food-item'>";
                    CDisplay2 += "<div class='text order-1 mb-3'>";
                    CDisplay2 += "<img src='" + m.ProdImage + "' alt='" + m.ProdName + "' style='width: 400px; height: 300px;'>"; // Set width and height as needed
                    CDisplay2 += "<h3><a href='Single-Product.aspx?ID=" + m.ProdId + "'>" + m.ProdName + "</a></h3>";
                    CDisplay2 += "<p class='product-price'>R" + m.ProdPrice + "</p>";
                    CDisplay2 += "<a href='Cart.aspx?ProductID=" + m.ProdId + "' class='cart-btn'><i class='fas fa-shopping-cart'></i> Add to Cart</a>";
                    CDisplay2 += "</div></div>";
                    
                }

                count++;


            }


            HomeProducts.InnerHtml = HDisplay;
            HomeProducts2.InnerHtml = HDisplay2;
            OutdoorProducts.InnerHtml = ODisplay;
            OutdoorProducts2.InnerHtml = ODisplay2;
            ClothingProducts.InnerHtml = CDisplay;
            ClothingProducts2.InnerHtml = CDisplay2;


        }

      
    }
}