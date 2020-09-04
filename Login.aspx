<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" ></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" ></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="text-center">
        <div dir="rtl" style="padding:50px;">
            <header>
                <h1>התחברות</h1>
            </header>
        </div>
        <div style="padding: 100px;">
            <div class="form-group">
            <asp:Label ID="UserNameLabel" runat="server" Text="שם משתמש"></asp:Label><br />
            <asp:TextBox ID="txtUserName" runat="server" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="שם משתמש חובה" ControlToValidate="txtUserName" Display="Dynamic" ValidationGroup="LoginVald">*</asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
            <asp:Label ID="PassLabel" runat="server" Text="סיסמא"></asp:Label><br />
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="סיסמא חובה" ControlToValidate="txtPass" Display="Dynamic" EnableTheming="True" ValidationGroup="LoginVald">*</asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Button ID="Loginbtn" runat="server" Text="התחבר" OnClick="Loginbtn_Click" ValidationGroup="LoginVald"/>
            </div>
        </div>
        <div class="auto-style1">
            <asp:Literal ID="ltlMsg" runat="server"></asp:Literal>
        </div>

</div>

    </form>
</body>
</html>
