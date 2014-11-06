<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="WebApplication2.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password</title>
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
<div class="spacer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Font-Size="30pt" ForeColor="#FF6600" style="text-align: center" Text="Change Password"></asp:Label>
        <br />
    <br />
        </div>
<div class="formdiv">
    <form id="form1" runat="server">
    <div class="auto-style2" style="margin-bottom: 40px;">
        <br />
        <br />
        Reset Password</div>
        <p>
            <asp:Label ID="oldPswlb" runat="server" Text="Current password: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Font-Strikeout="False"  TextMode="Password" >Enter your current password here</asp:TextBox>
            <asp:Label ID="Label4" runat="server" CssClass="errorMsg"></asp:Label>
        </p>
        <p>
            <asp:Label ID="newPswLb" runat="server" Text="New Password: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" style="margin-left:18px;" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" CssClass="errorMsg"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="*Password only contains numbers and letters*" CssClass="errorMsg"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Confirm New Password: "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="260px" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" CssClass="errorMsg"></asp:Label>
        </p>
        
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" style="margin: 20px 100px;"/>
    </form>
    </div>
    </div>
    </div>
        </div>
</body>
</html>
