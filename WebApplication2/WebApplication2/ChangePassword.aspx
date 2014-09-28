<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="WebApplication2.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>Reset Password</div>
        <p>
            <asp:Label ID="oldPswlb" runat="server" Text="Current password: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Double" Font-Bold="False" Font-Italic="False" Font-Strikeout="False" ForeColor="#999999" Height="20px" TextMode="Password" Width="200px">Enter your current password here</asp:TextBox>
            <asp:Label ID="Label4" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="newPswLb" runat="server" Text="New Password: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px" BorderStyle="Double" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="*Password contains numbers and letters*"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Confirm New Password: "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="200px" BorderStyle="Double" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    </form>
</body>
</html>
