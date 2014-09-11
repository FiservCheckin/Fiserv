<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminFunction.aspx.cs" Inherits="WebApplication2.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
        <asp:Label ID="Label1" runat="server" Font-Size="30pt" ForeColor="#FF6600" Height="50px" style="text-align: center; margin-top: 0px" Text="Fiserv Admin" Width="500px"></asp:Label>
        </p>
    <div>
    
            <asp:Button ID="changePwsBtn" runat="server" Text="Click to reset password" OnClick="Button1_Click"/>
                &nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Change Welcome Message" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="View Attendee Data" />
    
    </div>
    <div>
    
    </div>
    </form>
</body>
</html>
