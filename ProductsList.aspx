<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="ProductsList.aspx.cs" Inherits="ProductsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <script type="text/javascript">
        /*Tooltip*/
        $(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>
    <link href="css/product.css" rel="stylesheet" type="text/css"/>
     <style type="text/css">
         .auto-style1 {
             text-align: center;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1 class="auto-style1">מוצרים</h1>
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>
            <div class="container">
                <div class="row">
        </HeaderTemplate>
        <ItemTemplate>
             <div class="col-sm-4">
                <h3><%#Eval("PNAME") %></h3>
                        <a href="edit/EditProducts.aspx"><img src="./images/<%#Eval("Picture") %>"></a>             
                        <p ><%#Eval("DESC") %></p>
                           
                        <div class="card-subtitle">
                            <span class="price-new">&#x20AA;<%#Eval("Price") %></span><a href="edit/EditProducts.aspx">מוצרים&nbsp;</a>   
                        </div>     
                                        
                    </div>
                </figure>
        </ItemTemplate>
        <FooterTemplate>
                </div>
            </div>
        </FooterTemplate>
    </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [T_Product]"></asp:SqlDataSource>
</asp:Content>

