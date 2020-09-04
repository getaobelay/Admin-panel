<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddUsers.aspx.cs" Inherits="AddUsers" %>

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
        הוסף מוצר
    </div>
    <div dir="rtl" class="text-center" style="padding:30px;">
        <div>
            <asp:Label ID="Label1" runat="server" Text="שם משתמש" AssociatedControlID="txtUsername"></asp:Label><br />
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="שם משתמש חובה" ControlToValidate="txtUsername" Display="Dynamic" ValidationGroup="Add_P">*</asp:RequiredFieldValidator>
        </div>

        <div class="text-center">

            <asp:Label ID="Label2" runat="server" Text="סיסמא" AssociatedControlID="txtPassword"></asp:Label><br />
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="סיסמא חובה" ControlToValidate="txtPassword" Display="Dynamic" ValidationGroup="Add_P">*</asp:RequiredFieldValidator>
        </div>

        <div class="text-center">

            <asp:Label ID="Label3" runat="server" Text="אימייל" AssociatedControlID="txtEmail"></asp:Label><br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" אימייל חובה" ControlToValidate="txtEmail" Display="Dynamic" ValidationGroup="Add_P">*</asp:RequiredFieldValidator>
           
        </div>
    <div>

        <asp:Label ID="Label4" runat="server" Text="שם פרטי" AssociatedControlID="txtFname"></asp:Label><br />
        <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="שם פרטי חובה" ControlToValidate="txtFname" Display="Dynamic" ValidationGroup="Add_P">*</asp:RequiredFieldValidator>
    </div>

    <div>

        <asp:Label ID="Label5" runat="server" Text="שם משפחה" AssociatedControlID="txtLname"></asp:Label><br />
         <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="שם משפחה חובה" ControlToValidate="txtLname" Display="Dynamic" ValidationGroup="Add_P">*</asp:RequiredFieldValidator>
    </div>
    <div class="text-center" style="margin-top:20px;">
        <asp:Button ID="btnAdd" runat="server" Text="הוסף" OnClientClick="return confirm('האם אתה בטוח?');" OnClick="btnAdd_Click" ValidationGroup="Add_P" CssClass="btn-primary" Width="78px" />
        <asp:Button ID="btnClear" runat="server" Text="נקה טופס"   CssClass="btn-primary"  style="margin-left:5px;" Width="78px" OnClick="btnClear_Click" />

    </div>

    </div>
</asp:Content>

