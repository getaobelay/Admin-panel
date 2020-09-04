<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddAdmin.aspx.cs" Inherits="add_AddAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <style type="text/css">
        .auto-style1 {
            margin-top: 20px;
            padding: 20px;
            margin-bottom: 0;
            font-size: 1rem;
            color: inherit;
            background-color: #f7f7f7;
            border-bottom: 1px solid #ebebeb;
            border-top-left-radius: calc(.3rem - 1px);
            border-top-right-radius: calc(.3rem - 1px);
            text-align: center;
        }

        .auto-style2 {
            color: #212529;
            background-color: #f8f9fa;
            border-color: #f8f9fa;
            margin-right: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="auto-style1">
        <h1>הוסף אדמין
    </h1>
    </div>
    <div dir="rtl" class="text-center" style="padding:30px;">
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="שם משתמש" AssociatedControlID="txtUsername"></asp:Label><br />
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="שם משתמש חובה" ControlToValidate="txtUsername" Display="Dynamic" ValidationGroup="Add_P">*</asp:RequiredFieldValidator>
        </div>

        <div  class="form-group">

            <asp:Label ID="Label2" runat="server" Text="סיסמא" AssociatedControlID="txtPassword"></asp:Label><br />
            <asp:TextBox ID="txtPassword" runat="server"  CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="סיסמא חובה" ControlToValidate="txtPassword" Display="Dynamic" ValidationGroup="Add_P">*</asp:RequiredFieldValidator>
        </div>

       
    <div class="text-center" style="margin-top:20px;">
        <asp:Button ID="btnAdd" runat="server" Text="הוסף" OnClick="btnAdd_Click" ValidationGroup="Add_P" CssClass="btn-primary" Width="78px" />
        <asp:Button ID="btnClear" runat="server" Text="נקה טופס"   CssClass="btn-primary"  style="margin-left:5px;" Width="78px" OnClick="btnClear_Click" />

    </div>

    </div>
</asp:Content>

