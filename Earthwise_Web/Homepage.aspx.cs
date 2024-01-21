using Earthwise_Web.ServiceReference1;
using System;

namespace Earthwise_Web
{
    public partial class Homepage : System.Web.UI.Page
    {

        Earthwise_ServiceClient sc = new Earthwise_ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {
            //displaying the 3 products on home page 

            int homeProductId = 1; // ID of a Home product
            int outdoorProductId = 4; //  ID of an Outdoor product
            int clothingProductId = 6;// ID of an clothing product


            dynamic Home = sc.GetSingleProduct(homeProductId);
            string HDisplay = "";
          
            dynamic Outdoor = sc.GetSingleProduct(outdoorProductId);
            string ODisplay = "";
         
            dynamic Clothing = sc.GetSingleProduct(clothingProductId);
            string CDisplay = "";




            // HTML markup for Home product
            HDisplay += "<div class='d-block d-md-flex menu-food-item'>";
            HDisplay += "<div class='text order-1 mb-3'>";
            HDisplay += "<img src='" + Home.ProdImage + "' alt='" + Home.ProdName + "' style='width: 400px; height: 300px;'>";
            HDisplay += "<h3><a href='Single-Product.aspx?ID=" + homeProductId + "'>" + Home.ProdName + "</a></h3>";
            HDisplay += "<p class='product-price'>R" + Home.ProdPrice + "</p>";
            HDisplay += "</div></div>";

            // HTML markup for Outdoor product
            ODisplay += "<div class='d-block d-md-flex menu-food-item'>";
            ODisplay += "<div class 'text order-1 mb-3'>";
            ODisplay += "<img src='" + Outdoor.ProdImage + "' alt='" + Outdoor.ProdName + "' style='width: 400px; height: 300px;'>";
            ODisplay += "<h3><a href='Single-Product.aspx?ID=" + outdoorProductId + "'>" + Outdoor.ProdName + "</a></h3>";
            ODisplay += "<p class='product-price'>R" + Outdoor.ProdPrice + "</p>";
            ODisplay += "</div></div>";

            // HTML markup for Clothing product
            CDisplay += "<div class='d-block d-md-flex menu-food-item'>";
            CDisplay += "<div class='text order-1 mb-3'>";
            CDisplay += "<img src='" + Clothing.ProdImage + "' alt='" + Clothing.ProdName + "' style='width: 400px; height: 300px;'>";
            CDisplay += "<h3><a href='Single-Product.aspx?ID=" + clothingProductId + "'>" + Clothing.ProdName + "</a></h3>";
            CDisplay += "<p class='product-price'>R" + Clothing.ProdPrice + "</p>";
            CDisplay += "</div></div>";


            // Set the HTML content of the placeholders
            homeProduct.InnerHtml = HDisplay;
            outdoorProduct.InnerHtml = ODisplay;
            clothingProduct.InnerHtml = CDisplay;

        }

    }
}