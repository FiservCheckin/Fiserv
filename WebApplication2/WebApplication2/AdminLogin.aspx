<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebApplication2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label2" runat="server" Font-Size="30pt" ForeColor="#FF6600" Height="50px" style="text-align: center; margin-top: 0px" Text="Fiserv Admin Login" Width="500px"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Please login"></asp:Label>
        <br />
        Password:<asp:TextBox ID="PW" runat="server" TextMode="Password" ValidateRequestMode="Enabled"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PW" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <p>
            <asp:Button ID="Login" runat="server" OnClick="Loginbutton_Click" Text="Log In" />
        </p>
    </form>
</body>
</html>
