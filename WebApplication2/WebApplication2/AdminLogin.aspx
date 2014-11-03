<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebApplication2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/default.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    </style>
</head>
<body>
    <div class="container">
        <div class="headerbar"></div>
        <div class="centercon">
            <div class="logoarea">
                <img src="logo.png" />
            </div>
            <div class="mainbody">
                <div class="spacer"></div>
                <div class="formdiv">
                    <form id="form1" runat="server">
                        <asp:Label ID="Label2" runat="server" Font-Size="30pt" ForeColor="#FF6600" Height="50px" Style="text-align: center; margin-top: 0px" Text="Fiserv Admin Login" Width="500px"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Please login" Style="display:block;"></asp:Label>
                        <br />
                        Password:<asp:TextBox ID="PW" runat="server" TextMode="Password" ValidateRequestMode="Enabled" style="margin-left: 20px;"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PW" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <p>
                            <asp:Button ID="Login" runat="server" OnClick="Loginbutton_Click" Text="Log In" style="margin-left: 88px;"/>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
