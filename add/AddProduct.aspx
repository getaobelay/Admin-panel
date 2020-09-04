<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="auto-style1">
        <h1>הוסף מוצר
    </h1>
    </div>
    <div dir="rtl" class="text-center" style="padding:30px;">
        <div class="form-group">
            <asp:Label ID="Label1" runat="server" Text="שם מוצר" AssociatedControlID="txtPNAMe"></asp:Label><br />
            <asp:TextBox ID="txtPNAMe" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="שם מוצר חובה" ControlToValidate="txtPNAMe" Display="Dynamic" ValidationGroup="Add_P">*</asp:RequiredFieldValidator>
        </div>

        <div  class="form-group">

            <asp:Label ID="Label2" runat="server" Text="מחיר" AssociatedControlID="txtPrice"></asp:Label><br />
            <asp:TextBox ID="txtPrice" runat="server"  CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="מחיר חובה" ControlToValidate="txtPrice" Display="Dynamic" ValidationGroup="Add_P">*</asp:RequiredFieldValidator>
        </div>

        <div  class="form-group">

            <asp:Label ID="Label3" runat="server" Text="תיאור מוצר" AssociatedControlID="txtDesc"></asp:Label><br />
            <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Rows="10" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="תיאור מוצר חובה" ControlToValidate="txtDesc" Display="Dynamic" ValidationGroup="Add_P">*</asp:RequiredFieldValidator>
           
        </div>
    <div  class="form-group">

        <asp:Label ID="Label4" runat="server" Text="כמות" AssociatedControlID="txtQuantity"></asp:Label><br />
        <asp:TextBox ID="txtQuantity" runat="server"  CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="כמות חובה" ControlToValidate="txtQuantity" Display="Dynamic" ValidationGroup="Add_P">*</asp:RequiredFieldValidator>
    </div>

    <div>

        <asp:Label ID="Label5" runat="server" Text="הוסף תמונה" AssociatedControlID="fu_image"></asp:Label><br />
        <asp:FileUpload ID="fu_image" runat="server" CssClass="auto-style2" Width="193px" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="תמונה חובה" ControlToValidate="fu_image" Display="Dynamic" ValidationGroup="Add_P">*</asp:RequiredFieldValidator>
    </div>
    <div class="text-center" style="margin-top:20px;">
        <asp:Button ID="btnAdd" runat="server" Text="הוסף" OnClick="btnAdd_Click" ValidationGroup="Add_P" CssClass="btn-primary" Width="78px" />
        <asp:Button ID="btnClear" runat="server" Text="נקה טופס"   CssClass="btn-primary"  style="margin-left:5px;" Width="78px" OnClick="btnClear_Click" />

    </div>

    </div>
</asp:Content>

