<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="aboutSite.aspx.cs" Inherits="JustLikeNew.aboutSite" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href ="styles/textandbutton.css" rel ="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>Just Like New </strong>is an online platform for buying pre owned goods and selling your used items.
    <p><strong>Selling:</strong>Did you not make enough of the items you currently own and still want to buy a new one? Does the show room not give you a reasonable buy back price? Are you afraid of owning too many things?</p>
    <p>You have come to the right place. You can sell your items at your own quoted price to an abundance of buyers who are in look out for not just old yet products. Just describe your product in the best way possible and wait for buyers to contact you. Be reasonable but. Somebody in in the same position as you.</p>
    <p><Strong>
        Buying:
       </Strong>
        I am sure you wanna look like that gadget geek out there. I also know you cannot just look like the kid. I feel you bro! I have been there. Don't worry! Nobody will 
    know where you bought your things from. Many of us compromise to refurbished, pre owned gadgets most of the times because the show room price is very high. We have all been to the store and returned with heavy hearts not being able to buy what we want.
        To calm you down, Just Like New is a warehouse(not just yet,but soon) of pre owned gadgets. Why don't you fulfill your wants of owning cool stuffs by buying it from someone who is able to afford a show room price. You just have to visit our site to view the products and contact the seller for negotiations.It is easy as that. No we don;t talk money yet. The seller does, talk to them.
    </p>
    <asp:Button ID ="products" runat ="server" Text ="Sign in or Register to Continue" PostBackUrl ="~/login.aspx" />&nbsp;&nbsp;

</asp:Content>
