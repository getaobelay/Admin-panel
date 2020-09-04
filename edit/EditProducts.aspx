<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="EditProducts.aspx.cs" Inherits="EditProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div dir="rtl" style="padding:50px;">
            <header class="text-sm-center">
                <h1>ערוך מוצרים</h1>
            </header>
        </div>
    <br />
          <div>
        <asp:HiddenField ID="hf" runat="server" />
        <table align="center" dir="rtl">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="שם מוצר"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPnames" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="מחיר"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                </td>
            </tr>
          
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="תמונה"></asp:Label>
                </td>
                <td colspan="2">
                    <div class="text-sm-center">
                    <asp:FileUpload ID="fu_image" runat="server" CssClass="auto-style1" Width="227px" />
                    </div>
                    <br />
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="כמות"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                </td>
            </tr>
                <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="תיאור"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtDesc" TextMode="MultiLine" Height="123px" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    <br /><br /><br />
                </td>
                <td colspan="2">
                    <asp:Button ID="btnDel" runat="server" OnClick="btnDel_Click" OnClientClick="return confirm('האם למחוק רשומה זו?');" Text="מחק" Width="78px" />
                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="עדכן"  Width="78px" />
                    <asp:Button ID="btnCLear" runat="server" OnClick="btnCLear_Click" Text="נקה"  Width="78px" />
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <asp:Literal ID="ltlSuccess" runat="server"></asp:Literal>
                </td>
            </tr>
             <tr>
                <td>

                </td>
                <td>
                    <asp:Literal ID="ltlError" runat="server"></asp:Literal>
                </td>
            </tr>
        </table>
              <hr />
        <br />
        <div class=”table-responsive” dir="rtl">
        <asp:GridView ID="gvProduct" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" DataKeyNames="PID"  >
            <Columns>
                <asp:BoundField DataField="PID" HeaderText="מספר מוצר" InsertVisible="False" ReadOnly="True" SortExpression="PID" />
                <asp:BoundField DataField="PNAME" HeaderText="שם מוצר" SortExpression="PNAME" />
                <asp:BoundField DataField="Picture" HeaderText="תמונה" SortExpression="Picture" />
                <asp:BoundField DataField="Price" HeaderText="מחיר" SortExpression="Price" />
                <asp:BoundField DataField="DESC" HeaderText="תיאור" SortExpression="DESC" />        
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:TemplateField>
                    <ItemTemplate> 
                        <asp:LinkButton ID="LinkButton1"  runat="server" CommandArgument='<%# Eval("PID") %>' onClick="updLink">צפה</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
            </div>
    </div> 


</asp:Content>

