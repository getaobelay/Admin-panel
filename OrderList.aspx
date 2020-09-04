<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="OrderList.aspx.cs" Inherits="OrderList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <meta name="viewport" content="width=device-width, initial-scale=1">
         <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div dir="rtl" style="padding:50px;">
            <header>
                <h1>הזמנות</h1>
            </header>
        </div>
      <div class=”table-responsive” dir="rtl">
        <asp:GridView ID="gvOrder" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" DataKeyNames="OrderID" >
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="מספר הזמנה" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="CustomerID" HeaderText="מספר לקוח" SortExpression="CustomerID" />
                <asp:BoundField DataField="ProductID" HeaderText="מספר מוצר" SortExpression="ProductID" />
                <asp:BoundField DataField="Quantity" HeaderText="כמות" SortExpression="Quantity" />
                <asp:BoundField DataField="Total" HeaderText="סהכ" SortExpression="Total" />
                <asp:TemplateField>
                    <ItemTemplate> 
                        <a href="UpdateOrder.aspx">ערוך</a>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
            </div>
</asp:Content>

