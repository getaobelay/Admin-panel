<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div class="text-sm-center">
    <div class="container">
        <div class="row">
           <div class="col-md-4">
                <h1>משתמשים</h1><br />
                <a href="Users.aspx"><asp:Image ID="Image1" runat="server" ImageUrl="~/images/site/set.png" /></a>
            </div>
             <div class="col-md-4">
                <h1>מוצרים</h1><br />
                <a href="ProductsList.aspx"><asp:Image ID="Image2" runat="server" ImageUrl="~/images/site/cart.png" /></a>
            </div>
             <div class="col-md-4">
                <h1>הזמנות</h1><br />
                <a href="OrderList.aspx"><asp:Image ID="Image3" runat="server" ImageUrl="~/images/site/order.png" /></a>
            </div>
        </div>
        </div>
    <br />
    <hr />
    <div class="container">
        <div class="row">
             <div class="col-md-4">
                <h1>מנהלים</h1><br />
                <a href="Admin.aspx"><asp:Image ID="Image4" runat="server" ImageUrl="~/images/site/admin.png" /></a>
            </div>
             <div class="col-md-4">
                <h1>הוסף מוצר</h1><br />
                <a href="add/AddProduct.aspx"><asp:Image ID="Image5" runat="server" ImageUrl="~/images/site/add.png" /></a>
            </div>
             <div class="col-md-4">
                <h1>ערוך מוצר</h1><br />
                <a href="edit/EditProducts.aspx"><asp:Image ID="Image6" runat="server" ImageUrl="~/images/site/edit.png" /></a>
            </div>
        </div>
    </div>
   </div>
</asp:Content>

