using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


    public class Products
    {
        private int ProductID;
        private int PID;
        public int _ProductID
        {
            get { return PID; }
            set { PID = value; }
        }
        private int ProductPrice;
        public int _Price
        {
            get { return ProductPrice; }
            set { ProductPrice = value; }
        }
        private string ProductName;
        public string _PName
        {
            get { return ProductName; }
            set { ProductName = value; }
        }
        private string Pic;
        public string _Picture
        {
            get { return Pic; }
            set { Pic = value; }
        }
        private int Quantity;
        public int _Quantity
        {
            get { return Quantity; }
            set { Quantity = value; }
        }

        public Products(int ProdID, int Price, int Quantity, string ProdName, string Picture)
        {
            this.ProductID = ProdID;
            this.ProductPrice = Price;
            this.ProductName = ProdName;
            this.Pic = Picture;
            this.Quantity = Quantity;
        }
 }
