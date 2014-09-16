<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminFunction.aspx.cs" Inherits="WebApplication2.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
        <asp:Label ID="Label1" runat="server" Font-Size="30pt" ForeColor="#FF6600" Height="50px" style="text-align: center; margin-top: 0px" Text="Fiserv Admin" Width="500px"></asp:Label>
        </p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2">
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Change Welcome Message" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
    
            <asp:Button ID="changePwsBtn" runat="server" Text="Click to reset password" OnClick="Button1_Click"/>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="View Attendee Data" />
    
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Active" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="returnBtn" runat="server" OnClick="returnBtn_Click" Text="return to the form" />
                </td>
            </tr>
        </table>
    <div>
    
                &nbsp;
            
    </div>
    </form>
</body>
</html>
