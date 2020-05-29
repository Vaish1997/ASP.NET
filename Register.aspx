<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="JustLikeNew.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles/textandbutton.css" type="text/css" rel ="stylesheet" />
    <style>
        input[type=password]
        {
             width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    
        }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          <table runat ="server" style ="width:50%; left: 193px;">
         <tr> <td><asp:Label ID="label1" runat ="server" Text = "First Name:"></asp:Label></td><td><asp:TextBox ID="fname" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID ="fnamevalidator" runat ="server" ControlToValidate="fname" ErrorMessage="* Required" ForeColor="#CC0000"></asp:RequiredFieldValidator></td></tr>
              
          <tr> <td><asp:Label ID="label2" runat ="server" Text = "Last Name:"></asp:Label></td><td> <asp:TextBox ID="lname" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID ="RequiredFieldValidator1" runat ="server" ControlToValidate="lname" ErrorMessage="* Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                                                                                               </td>

          </tr>
          <tr>
              <td>
                  Email Address: 
              </td>
              <td>
                  <asp:TextBox ID="emailID" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID ="RequiredFieldValidator2" runat ="server" ControlToValidate="emailID" ErrorMessage="* Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
              </td>
          </tr>
           
      <tr>
          <td>
               Confirm Email:
          </td>
          <td>
               <asp:TextBox ID="cemailID" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID ="RequiredFieldValidator3" runat ="server" ControlToValidate="cemailID" ErrorMessage="* Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
              <asp:CompareValidator ID ="emailvalidate" runat ="server" ControlToCompare="cemailID" ErrorMessage="Email Addresses don't match" ControlToValidate="emailID"></asp:CompareValidator>
          </td>
      </tr>
           <tr>
               <td>
                  Phone Number:
               </td>
               <td>
                   <asp:TextBox ID="phNO" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator ID ="RequiredFieldValidator4" runat ="server" ControlToValidate="phNO" ErrorMessage="* Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
               </td>
           </tr>
            <tr>
                <td>
                    User Name:
                </td>
                <td>
                    <asp:TextBox ID="userID" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID ="RequiredFieldValidator7" runat ="server" ControlToValidate="userID" ErrorMessage="* Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
              <tr>
                  <td>
                      Password:
                  </td>
                  <td>
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                      <asp:RequiredFieldValidator ID ="RequiredFieldValidator5" runat ="server" ControlToValidate="password" ErrorMessage="* Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </td>
              </tr>
             <tr>
                 <td>
                      Retype Password:
                 </td>
                 <td>
                     <asp:TextBox ID="retypepassword" runat="server" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID ="RequiredFieldValidator6" runat ="server" ControlToValidate="retypepassword" ErrorMessage="* Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                     <asp:CompareValidator ID = "comparePassword" runat ="server" ControlToCompare="retypepassword" ControlToValidate="password" ErrorMessage="Passwords do not match"></asp:CompareValidator>
                     
                 </td>
             </tr>
           
       <tr>
           <td>
               <asp:Button ID ="register" runat ="server" Text ="Register" OnClick="register_Click" /></td>
           <td>
               <asp:Button ID ="login" runat ="server" Text ="Click Here to Login" visible ="false" PostBackUrl="~/login.aspx" CausesValidation="False" />
           </td>
           
       </tr>
            </table>
            <br />
            <asp:Label ID ="status" runat ="server"></asp:Label>
       </div>
    </form>
</body>
</html>
