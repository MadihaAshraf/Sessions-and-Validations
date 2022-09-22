<%@ Page Title="" Language="C#" MasterPageFile="~/Login_Master.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Task7.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <style type="text/css">
        .auto-style2 {
            height: 67px;
        }
        .auto-style3 {
            height: 49px;
        }
        .auto-style4 {
            width: 51%;
            height: 241px;
        }
    .auto-style5 {
        height: 67px;
        width: 195px;
    }
    .auto-style6 {
        height: 49px;
        width: 195px;
    }
    .auto-style7 {
        height: 85px;
        width: 195px;
    }
        .auto-style8 {
            height: 67px;
            width: 551px;
        }
        .auto-style9 {
                height: 49px;
                width: 551px;
            }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="Tittle" runat="server">
    SignIn Form
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FormName" runat="server">
    SignIn
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainForm" runat="server">



 <form runat="server" >
<table class="auto-style4">
            <tr>
                <td class="auto-style5">UserName</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtuname" placeholder="Name" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ControlToValidate="txtuname"></asp:RequiredFieldValidator>

                </td>
                <td class="auto-style2">
                    </td>
            </tr>
            <tr>
                <td class="auto-style6">Password</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtpswdd" placeholder="Password" runat="server" TextMode="Password" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required" ControlToValidate="txtpswdd"></asp:RequiredFieldValidator>
                    
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="SignInbtn" runat="server"  Text="Sign In" Width="154px" OnClick="SignInbtn_Click" Height="35px" />
                </td>
                <td class="auto-style9">
                 <%--   <asp:Button ID="Signup" runat="server" Height="33px" OnClick="SinUp_Click" Text="Signup" Width="141px" />
                  --%>  <a href ="SinUp.aspx" class =" btn btn-info btn-em btn-em" style="width: 395px">Not yet registered... Click Now  </a>
                         
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="message1" runat="server" Text="" ></asp:Label>
                </td>
               </tr>
         </table>
     </form>
</asp:Content>
