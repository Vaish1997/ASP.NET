<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="JustLikeNew.forgotpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href ="styles/textandbutton.css" rel ="stylesheet" type ="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style ="top:30%; right: 30%;">
        <table runat ="server">
            <tr>
                <td>
                    Enter New password:
                </td>
                <td>
                    <asp:TextBox ID ="newpass" TextMode ="Password" runat ="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Confirm New password:
                </td>
                <td>
                    <asp:TextBox ID ="confirmpass" TextMode ="Password" runat ="server"></asp:TextBox>
                     <asp:CompareValidator ID ="passcompare" runat ="server" ControlToValidate ="newpass" ControlToCompare ="confirmpass" ErrorMessage="Passwords do not match" ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID ="Update" Text="Update Password" runat ="server" OnClick="Update_Click"/>
                    
                </td>
            </tr>
           
        </table>
        </div>
   

   
</asp:Content>
