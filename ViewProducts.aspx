<%@ Page Title="" Language="C#" MasterPageFile="~/RestofthesiteMaster.Master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="JustLikeNew.ViewProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <h1><asp:Label ID="name" runat ="server"></asp:Label></h1>
    <div>
        <asp:Button ID ="PostAd" Text ="Sell" runat ="server" style ="right:80px;position:absolute; background-color: gray; 
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;" PostBackUrl="~/SellProduct.aspx" />
    </div>
    <br />
    <div style ="left:30%;position:absolute;">
    <asp:DataList ID ="view" runat ="server">
        <ItemTemplate>
            <table>
                 
                <tr>
                    <td>
                         <b>Product ID</b><span><%# Eval("ProductID") %></span><br /><b>Product Type </b><span><%# Eval("ProductName") %></span><br />  
                            <b>Brand Name</b><span><%# Eval("BrandName")%></span><br /><b>Bought Price</b><span><%# Eval("BoughtPrice")%></span><br /><b>Selling Price</b><span><%# Eval("SellingPrice")%></span><br />
                        <b> Seller Email:</b> <span>  <%# Eval("emailID")%> </span><br />
                        <b> Seller Phone: </b> <span> <%# Eval("phoneNumber")%></span>
                    </td>
                    
                </tr>
               
               
            </table>
             
                    
                <br />
        </ItemTemplate>
    </asp:DataList>
        </div>
</asp:Content>
