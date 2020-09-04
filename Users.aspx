<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div dir="rtl" style="padding:50px;">
            <header>
                <h1>משתמשים</h1>
            </header>
        </div>
    <div>
                        <asp:HyperLink runat="server" NavigateUrl="~/add/AddUsers.aspx">הוסף משתמש</asp:HyperLink>

    </div>
            <div class=”table-responsive” dir="rtl">
        <asp:GridView ID="gvUser" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" DataKeyNames="Id"  >
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="username" HeaderText="שם משתמש" SortExpression="username" />
                <asp:BoundField DataField="email" HeaderText="אימייל" SortExpression="email" />
                <asp:BoundField DataField="Address" HeaderText="כתובת" SortExpression="Address" />
                <asp:BoundField DataField="fname" HeaderText="שם פרטי" SortExpression="fname" />
                <asp:BoundField DataField="lname" HeaderText="שם משתמש" SortExpression="lname" />
            </Columns>
        </asp:GridView>
            </div>
</asp:Content>

