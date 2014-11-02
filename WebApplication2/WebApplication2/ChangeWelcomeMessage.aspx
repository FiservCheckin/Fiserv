<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangeWelcomeMessage.aspx.cs" Inherits="WebApplication2.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/default.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
        <div class="container">
<div class="headerbar"></div>
<div class="centercon">
<div class="logoarea">
<img src="logo.png"/>
</div>
<div class="mainbody">
<div class="spacer"></div>
<div class="formdiv">
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label2" runat="server" Font-Size="30pt" ForeColor="#FF6600" Height="50px" style="text-align: center; margin-top: 0px" Text="Change Welcome Message" Width="500px"></asp:Label>
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" style="width: 250px;">
                    <asp:Label ID="Label4" runat="server" Text="Please Enter a New Welcome Message" ></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
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
    </div></div></div></div>
</body>
</html>
