   <%@ Page Title="" Language="C#" MasterPageFile="~/Login_Master.Master" AutoEventWireup="true" CodeBehind="SinUp.aspx.cs" Inherits="Task7.SinUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <style type="text/css">
        .auto-style1 {
            width: 221px;
        }
        .auto-style3 {
            width: 221px;
            height: 47px;
        }
        .auto-style6 {
            width: 232px;
        }
        .auto-style7 {
            width: 232px;
            height: 47px;
        }
            .auto-style9 {
                width: 452px;
            }
            .auto-style10 {
                width: 452px;
                height: 47px;
            }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Tittle" runat="server">
    SignUp Form
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FormName" runat="server">
    SignUp
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainForm" runat="server">
    <form runat="server">
    <table style="width: 56%; height: 579px;">
            <tr>
                <td class="auto-style1">Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtname" placeholder="enter your name" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your name " ControlToValidate="txtname"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Password</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtpass" placeholder="enter your password" runat="server" TextMode="Password"  ></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter your password " ControlToValidate="txtpass"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Email</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtEmail" placeholder="enter your email" runat="server" TextMode="Email"></asp:TextBox>
                 <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your Email " ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                 --%>   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"> </asp:RegularExpressionValidator>
                    </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Cnic</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtcnic" placeholder="enter your cnic" runat="server"  ></asp:TextBox>
               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter your Cnic " ControlToValidate="txtcnic"></asp:RequiredFieldValidator>
              --%>   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[0-9]{5}-[0-9]{7}-[0-9]$"  ControlToValidate="txtcnic"></asp:RegularExpressionValidator>

                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style1">Phone Number</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtphone" placeholder="enter your phone number" runat="server" TextMode="Number" ></asp:TextBox>
             <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter your Phone " ControlToValidate="txtphone"></asp:RequiredFieldValidator>
            --%>  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtphone" ValidationExpression="^([\+]?[0-9]{1,3}[\s.-][0-9]{1,12})([\s.-]?[0-9]{1,4}?)$"></asp:RegularExpressionValidator>
                  
                    </td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style7">
                    <asp:Button ID="btn_signup" runat="server" Text="Sign Up" Width="135px" Height="35px" OnClick="btn_signup_Click" />
                </td>
                <td class="auto-style10">
  <%--                  <asp:Button ID="Login" runat="server" Height="28px" OnClick="Login_Click" Text="Login" Width="95px" />
  --%>                  <a href ="SignIn.aspx" class =" btn btn-info btn-em btn-em">already registerd.. singin now ! </a>

                    
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="message" runat="server"></asp:Label>
                </td>
               </tr>
           
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
       </form>
</asp:Content>

  
