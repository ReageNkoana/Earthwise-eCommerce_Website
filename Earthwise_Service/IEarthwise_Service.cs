using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Earthwise_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IEarthwise_Service" in both code and config file together.
    [ServiceContract]
    public interface IEarthwise_Service
    {

        [OperationContract]
        List<Product> GetProducts(string category);

        [OperationContract]
        Product GetSingleProduct(int id);

        [OperationContract]
        bool Signup(string name, string surname, string email, string password, string userType);

        [OperationContract]
        int Login(string email, string password);

        [OperationContract]
        bool isManager(int id);

        [OperationContract]
        bool Contact(string name, string email, string phone, string subject, string message);




   





        //put other  contracts here

        [OperationContract]
        bool updateProductInfo(int prodID, string prodName, string prodDescr, decimal prodPrice, string prodCategory, string prodImage, int prodActive, int prodOnSpecial);

        [OperationContract]
        bool removeProduct(int prodID);


        //for managers to add products

        [OperationContract]
        bool AddProduct(string prodName, string prodDescr, decimal prodPrice, string prodCategory, string prodImage, int prodActive, int OnSpecial);

        [OperationContract]
        void addToCart(int UserID, int prodID, int Quantity);

        [OperationContract]
        bool isInCart(int UserID, int prodID);

        [OperationContract]
        List<Cart> getCartItems(int UserID);

        [OperationContract]
        void removeFromCart(int UserID, int prodID);

        [OperationContract]
        void editCartQuantity(int UserID, int prodID, int Quantity);

        [OperationContract]
        void clearCart(int UserID);

        [OperationContract]
        int AddTransaction(int UserID, DateTime TransacDate, string TransacType, decimal TotalAmount, decimal Tax, decimal Discount, decimal Shipping, int LoyaltyPoints);

        [OperationContract]
        Transaction getTransaction(int TransacID);

        [OperationContract]
        List<Transaction> getUserTransaction(int UserID);

        [OperationContract]
        bool doesTransactionExist(int UserID);
		[OperationContract]
        Invoice generateInvoice(int transactionid,string invoicenumber,Transaction transaction);


    }
}
