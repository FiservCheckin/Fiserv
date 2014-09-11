<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangeWelcomeMessage.aspx.cs" Inherits="WebApplication2.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 253px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label2" runat="server" Font-Size="30pt" ForeColor="#FF6600" Height="50px" style="text-align: center; margin-top: 0px" Text="Change Welcome Message" Width="500px"></asp:Label>
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Please Enter a New Welcome Message"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="356px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
            <asp:Button ID="submit0" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
            </tr>
        </table>
        <br />
    
    </div>
&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
