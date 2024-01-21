using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Earthwise_Service
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Earthwise_Service" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Earthwise_Service.svc or Earthwise_Service.svc.cs at the Solution Explorer and start debugging.
    public class Earthwise_Service : IEarthwise_Service
    {

        DataClasses1DataContext db = new DataClasses1DataContext();


        //get a list of products from Products database
        public List<Product> GetProducts(string category)
        {
            dynamic MI = (from m in db.Products
                          where m.Active.Equals(1) &&
                          m.ProdCategory.Equals(category)
                          select m).DefaultIfEmpty();

            var returnProducts = new List<Product>();

            if (MI != null)
            {
                foreach (Product mni in MI)
                {
                    var NMI = new Product
                    {
                        ProdId = mni.ProdId,
                        ProdImage = mni.ProdImage,
                        ProdPrice = mni.ProdPrice,
                        ProdName = mni.ProdName,

                    };
                    returnProducts.Add(NMI);
                }

                return returnProducts;
            }
            else
            {
                return null;
            }
        }



        //get a single product from table Products(used in the About page)

        public Product GetSingleProduct(int id)
        {
            var MI = (from m in db.Products
                      where m.Active.Equals(1) &&
                      m.ProdId.Equals(id)
                      select m).FirstOrDefault();

            if (MI != null)
            {
                var NMI = new Product
                {
                    ProdImage = MI.ProdImage,
                    ProdPrice = MI.ProdPrice,
                    ProdName = MI.ProdName,
                    ProdDescription = MI.ProdDescription,
                };
                return NMI;
            }
            else
            {
                return null;
            }
        }



        //get managers, if true or not
        public bool isManager(int id)
        {
            var user = (from s in db.Users
                        where s.UserId.Equals(id)      //check if id exist in table         
                        select s).FirstOrDefault();

            String manager = "Manager";

            if (user != null)
            {
                if (manager.Equals(user.UserType))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }





        //login function
        public int Login(string email, string password)
        {
            try
            {
                // Hash the provided password for comparison.
                string hashedPassword = Secrecy.HashPassword(password);

                // Query the database to find the user with the provided email and hashedPassword.
                var user = (from s in db.Users
                            where s.Email.Equals(email)
                            && s.Password.Equals(hashedPassword)
                            select s).FirstOrDefault();

                if (user != null)
                {
                    return user.UserId;
                }
                else
                {
                    return 0;
                }
            }
            catch (Exception ex)
            {
                // Handle exceptions and return 0 to indicate login failure.
                ex.GetBaseException();
                return 0;
            }
        }




        //signup function
        public bool Signup(string name, string surname, string email, string password, string userType)
        {


            try
            {
                // Hash the provided password. For security
                string hashedPassword = Secrecy.HashPassword(password);

                var newUser = new User
                {
                    Name = name,
                    Surname = surname,
                    Email = email,
                    Password = hashedPassword, // Store the hashed password in the database.
                    UserType = userType
                };

                db.Users.InsertOnSubmit(newUser);
                try
                {
                    db.SubmitChanges();
                    return true;
                }
                catch (Exception ex)
                {
                    // Handle exceptions and return false to indicate registration failure.
                    ex.GetBaseException();
                    return false;
                }
                //return true;
            }
            catch (Exception ex)
            {
                // Handle exceptions and return false to indicate registration failure.
                ex.GetBaseException();
                return true;
            }

        }




        public bool Contact(string name, string email, string phone, string subject, string message)
        {
            try
            {
             
                var contact = new Contact
                {
                    Name = name,
                    Email = email,
                    Phone = phone,
                    Subject = subject,
                    Message = message
                };

                // Add the contact to the database and save changes.
                db.Contacts.InsertOnSubmit(contact);
                db.SubmitChanges();

                return true; // Contact information saved successfully
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
                return false;
            }
        }






        //for managers to add products
        public bool AddProduct(string prodName, string prodDescr, decimal prodPrice, string prodCategory, string prodImage, int prodActive, int OnSpecial)
        {
            try
            {
                // Create a new Product instance and set its properties
                Product newProduct = new Product
                {
                    ProdName = prodName,
                    ProdDescription = prodDescr,
                    ProdPrice = prodPrice,

                    ProdCategory = prodCategory,
                    ProdImage = prodImage,
                    Active = prodActive,
                    OnSpecial = OnSpecial
                };

                // Add the new product to the database
                db.Products.InsertOnSubmit(newProduct);
                db.SubmitChanges();

                return true; // Product added successfully
            }
            catch (Exception ex)
            {
                // Handle exceptions, log errors, or return false on failure
                ex.GetBaseException();
                return false;
            }
        }




        //get a list of products from Cart database
        public List<Cart> getCartItems(int UserID)
        {
            dynamic MI = (from m in db.Carts
                          where m.UserId.Equals(UserID)
                          select m).DefaultIfEmpty();

            var returnProducts = new List<Cart>();

            if (MI != null)
            {
                foreach (Cart mni in MI)
                {
                    var NMI = new Cart
                    {
                        ProdId = mni.ProdId,

                        UserId = mni.UserId,
                         Quantity = mni.Quantity,
                        TotalPrice = mni.TotalPrice

                    };
                    returnProducts.Add(NMI);
                }

                return returnProducts;
            }
            else
            {
                return null;
            }
        }


        //enter your code here for invoices, transactions ect.....



        public bool updateProductInfo(int prodID, string prodName, string prodDescr, decimal prodPrice, string prodCategory, string prodImage, int prodActive, int prodOnSpecial)
        {
            bool UpdateInfo = false;
            Product reqProduct = (from u in db.Products where u.ProdId.Equals(prodID) select u).FirstOrDefault();
            reqProduct.ProdName = prodName;
            reqProduct.ProdDescription = prodDescr;
            reqProduct.ProdPrice = prodPrice;
            reqProduct.ProdCategory = prodCategory;
            reqProduct.ProdImage = prodImage;
            reqProduct.Active = prodActive;
            reqProduct.OnSpecial = prodOnSpecial;
            try
            {
                db.SubmitChanges();
                UpdateInfo = true;
            }
            catch (Exception ex)
            {
                UpdateInfo = false;
                ex.GetBaseException();
            }
            return UpdateInfo;
        }

        public bool removeProduct(int prodID)
        {
            bool prodRemove = false;
            Product removeItem = (from u in db.Products where u.ProdId.Equals(prodID) select u).FirstOrDefault();
            db.Products.DeleteOnSubmit(removeItem);
            try
            {
                db.SubmitChanges();
                prodRemove = true;
            }
            catch (Exception ex)
            {
                prodRemove = false;
                ex.GetBaseException();
            }
            return prodRemove;
        }






        public void addToCart(int UserID, int prodID, int Quantity)
        {
            Cart newItem = new Cart
            {
                UserId = UserID,
                ProdId = prodID,
                Quantity = Quantity
            };
            db.Carts.InsertOnSubmit(newItem);
            try
            {
                db.SubmitChanges();
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
            }
        }

        public bool isInCart(int UserID, int prodID)
        {
            bool isInCart = false;
            var checkProd = (from u in db.Carts where u.UserId.Equals(UserID) && u.ProdId.Equals(prodID) select u).FirstOrDefault();
            if (checkProd is Cart)
            {
                isInCart = true;
            }
            else
            {
                isInCart = false;
            }
            return isInCart;
        }

        /*
        public List<Cart> getCartItems(int UserID)
        {
            List<Cart> cartItems = new List<Cart>();
            var userCart = (from u in db.Carts where u.UserId.Equals(UserID) select u).FirstOrDefault();
            while (userCart != null)
            {
                cartItems.Add(userCart);
            }

            return cartItems;
        }
        */

        public void removeFromCart(int UserID, int prodID)
        {
            Cart removeItem = (from u in db.Carts where u.UserId.Equals(UserID) && u.ProdId.Equals(prodID) select u).FirstOrDefault();
            db.Carts.DeleteOnSubmit(removeItem);
            try
            {
                db.SubmitChanges();
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
            }
        }

        public void clearCart(int UserID)
        {
            List<Cart> deleteItems = new List<Cart>();
            Cart userItem = (from u in db.Carts where u.UserId.Equals(UserID) select u).FirstOrDefault();
            while (userItem != null)
            {
                deleteItems.Add(userItem);
            }
            db.Carts.DeleteAllOnSubmit(deleteItems);
            try
            {
                db.SubmitChanges();
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
            }
        }

        public void editCartQuantity(int UserID, int prodID, int Quantity)
        {
            var cartItem = (from u in db.Carts where u.UserId.Equals(UserID) && u.ProdId.Equals(prodID) select u).FirstOrDefault();
            cartItem.Quantity = Quantity;
            try
            {
                db.SubmitChanges();
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
            }
        }

        public int AddTransaction(int UserID, DateTime TransacDate, string TransacType, decimal TotalAmount, decimal Tax, decimal Discount, decimal Shipping, int LoyaltyPoints)
        {
            int ID = 0;
            Transaction newTransaction = new Transaction
            {
                UserId = UserID,
                TransactionDate = TransacDate,
                TransactionType = TransacType,
                TotalAmount = TotalAmount,
                TaxAmount = Tax,
                DiscountAmount = Discount,
                ShippingAmount = Shipping,
                LoyaltyPointsEarned = LoyaltyPoints
            };
            db.Transactions.InsertOnSubmit(newTransaction);
            try
            {
                db.SubmitChanges();
                ID = newTransaction.TransactionId;
            }
            catch (Exception ex)
            {
                ex.GetBaseException();
            }
            return ID;
        }

        public Transaction getTransaction(int TransacID)
        {
            Transaction reqTransaction = null;
            var getTransaction = (from u in db.Transactions where u.TransactionId.Equals(TransacID) select u).FirstOrDefault();
            if (getTransaction is Transaction)
            {
                reqTransaction = getTransaction;
            }
            return reqTransaction;
        }

        public List<Transaction> getUserTransaction(int UserID)
        {
            List<Transaction> listTransaction = new List<Transaction>();
            var userTransaction = (from u in db.Transactions where u.UserId.Equals(UserID) select u).FirstOrDefault();
            while (userTransaction != null)
            {
                listTransaction.Add(userTransaction);
            }
            return listTransaction;
        }

        public bool doesTransactionExist(int UserID)
        {
            bool isAvailable = false;
            var userTransaction = (from u in db.Transactions where u.UserId.Equals(UserID) select u).FirstOrDefault();
            if (userTransaction is Transaction)
            {
                isAvailable = true;
            }
            else
            {
                isAvailable = false;
            }
            return isAvailable;
        }

        public Invoice generateInvoice(int transactionid, string invoicenumber, Transaction transaction)
        {
            var Addinvoice = new Invoice
            {
                TransactionId = transactionid,
                InvoiceNumber = invoicenumber,
                Transaction = transaction
            };
            db.Invoices.InsertOnSubmit(Addinvoice);
            try { db.SubmitChanges(); return Addinvoice; } catch (Exception ex) { ex.GetBaseException(); return null; }
        }













    }
}
