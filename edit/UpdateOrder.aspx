
<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="UpdateOrder.aspx.cs" Inherits="UpdateOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div dir="rtl" style="padding:50px;">
            <header>
                <h1 class="text-sm-center">עדכון הזמנות</h1>
            </header>
        </div>
    <div>
        <asp:HiddenField ID="hf" runat="server" />
        <table align="center" dir="rtl">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="מספר הזמנה"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtOID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="מספר לקוח"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtCID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="מספר מוצר"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="כמות"></asp:Label>
                </td>
                <td colspan="2"> 
                    <asp:TextBox ID="txtQy" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="סהכ"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
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
        <br />
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
                        <asp:LinkButton ID="LinkButton1"  runat="server" CommandArgument='<%# Eval("OrderID") %>' onClick="updLink">צפה</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
            </div>
    </div>
</asp:Content>

