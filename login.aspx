<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="JustLikeNew.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href ="styles/textandbutton.css" rel ="stylesheet" type ="text/css" />
    <style>
        input[type = password]
        {
             width: 100%;
    padding:20px;
    margin: 8px 0;
    box-sizing: border-box;
    
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <asp:Label ID="user" runat ="server" Text ="" Font-Bold ="true" Font-Size="X-Large"></asp:Label>
    <div>
        <br />
        <div style ="width : 60%;top:20%;right:30%;position:absolute;">
            <table runat ="server">
                <tr>
                    <td>
                        <strong>User Name:</strong>
                    </td>
                    <td>
                        <asp:TextBox ID ="username" runat ="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID ="unamevalidator" ControlToValidate ="username" runat ="server" ErrorMessage ="* Required Field" ForeColor ="#cc0000">

                        </asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Password:</strong>
                    </td>
                    <td>
                        <asp:TextBox ID ="password" runat ="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:LinkButton ID ="forgotpass" runat ="server"  Text ="Forgot Password" OnClick="forgotpass_Click" CausesValidation="False"></asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID ="loginbutton" runat ="server" Text ="LOGIN" OnClick="loginbutton_Click" />
                    </td>
                    <td>
                        <asp:Label ID ="status" runat ="server" Visible ="false"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Not a User Yet?</strong>
                    </td>
                    <td>
                        <asp:LinkButton ID ="register" runat ="server" PostBackUrl ="~/Register.aspx" Text ="Register Here" CausesValidation="False"></asp:LinkButton>
                    </td>
                </tr>
            </table>
            

        </div>
    </div>
</asp:Content>
