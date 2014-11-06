<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignupSuccessPage.aspx.cs" Inherits="WebApplication2.SuccessPage" %>

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
                        <div>

                            <asp:Label ID="Label1" runat="server" Font-Size="30pt" ForeColor="#FF6600" Style="text-align: center" Text="Fiserv Career Fair Sign up Form"></asp:Label>

                        </div>
                        <table class="auto-style1">
                            <tr>
                                <td>Thanks for singingup for Fiserv! Your application has been submitted successfully.<br />
                                    For more information about Fiserv, you can go to our website: <a href="http://jobs.fiserv.co.nz/">http://jobs.fiserv.co.nz/</a>.<br />
                                    Or click the button below to either return to the form or close the window.<br />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Return" runat="server" OnClick="Return_Click" Text="Return To Form" Width="211px" />
                                    <asp:Button ID="closeBtn" runat="server" OnClick="Button1_Click" Style="margin-left: 57px" Text="Close" Width="92px" />
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
