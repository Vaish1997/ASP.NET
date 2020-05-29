<%@ Page Title="" Language="C#" MasterPageFile="~/RestofthesiteMaster.Master" AutoEventWireup="true" CodeBehind="ViewByHeadPhone.aspx.cs" Inherits="JustLikeNew.ViewByHeadPhone" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><asp:Label ID="name" runat ="server"></asp:Label></h1>
    <br />
    <div style ="left:30%;position:absolute;">
    <asp:DataList ID ="view" runat ="server">
        <ItemTemplate>
            <table>
                 
                <tr>
                    <td>
                         <b>Product ID</b><span><%# Eval("ProductID") %></span><br />  
                            <b>Product Type </b><span><%# Eval("ProductName") %></span><br />  
                            <b>Brand Name</b><span><%# Eval("BrandName")%></span><br /> 
                        <b>Bought Price</b><span><%# Eval("BoughtPrice")%></span><br /> 
                        <b>Selling Price</b><span><%# Eval("SellingPrice")%></span><br /> 
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
