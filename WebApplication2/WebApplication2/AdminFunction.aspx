<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminFunction.aspx.cs" Inherits="WebApplication2.WebForm5" %>

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
                <img src="logo.png" />
            </div>
            <div class="mainbody">
                <div class="spacer"></div>
                <div class="formdiv">
                    <form id="form1" runat="server">
                        <p>
                            <asp:Label ID="Label1" runat="server" Font-Size="30pt" ForeColor="#FF6600" Height="50px" Style="text-align: center; margin-top: 0px" Text="Fiserv Admin" Width="500px"></asp:Label>
                        </p>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Change Welcome Message" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="changePwsBtn" runat="server" Text="Click to reset password" OnClick="Button1_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="View Attendee Data" />
                                </td>
                            </tr>
                            <tr>

                                <td>
                                    <asp:Button ID="returnBtn" runat="server" OnClick="returnBtn_Click" Text="Return to the form" style="margin-top:5px;"/>
                                    <br />
                                    <div class="radioButtonDiv">
                                        <asp:RadioButton ID="RadioButton1" runat="server" Text="active" GroupName="livetime" />
                                        <asp:RadioButton ID="RadioButton2" runat="server" Text="inactive" GroupName="livetime" />
                                    </div>
                                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Submit" />
                                    <br />

                                    <asp:Label ID="statusLbl" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button5" runat="server" Text="Logout" OnClick="Button5_Click" />
                                </td>
                            </tr>
                        </table>
                        <div>
                        
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
