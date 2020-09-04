<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        font-size: xx-large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div dir="rtl" style="padding:50px;">
            <header>
                <h1 class="text-sm-center">מנהלים</h1>
            </header>
        </div>
    <div class="text-sm-center">
                        <asp:HyperLink runat="server" NavigateUrl="~/add/AddAdmin.aspx" CssClass="auto-style1">הוסף אדמין</asp:HyperLink>

    </div>
            <div class=”table-responsive” dir="rtl">
        <asp:GridView ID="gvAdmin" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" DataKeyNames="Id" >
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="username" HeaderText="שם משתמש" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="סיסמא" SortExpression="password" />
            </Columns>
            
        </asp:GridView>
            </div>
</asp:Content>

