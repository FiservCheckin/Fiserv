<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClosedForm.aspx.cs" Inherits="WebApplication2.WebForm7" %>

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
        <p>
    
        <asp:Label ID="Label2" runat="server" Font-Size="30pt" ForeColor="#FF6600" Height="50px" style="text-align: center; margin-top: 0px" Text="Sorry! Fiserv Sign Up Closed" Width="500px"></asp:Label>
        <br />
        </p>
        <p>
            <asp:Label ID="Label3" class="errorMsg" runat="server" Text="Sorry, The Fiserv sign up is now closed."></asp:Label>
        </p>
    </form>
    </div></div></div></div>
</body>
</html>
