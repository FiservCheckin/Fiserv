<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignupSuccessPage.aspx.cs" Inherits="WebApplication2.SuccessPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
            
      body {
	background-color: #FD620E;
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.container {
	width:100%;
}
.headerbar {
	background-color:white;
	height:50px;
}
.centercon {
	width: 900px;
	margin-right: auto;
	margin-left: auto;
}
.logoarea {
	height:60px;
}
.mainbody {
	background-color:white;
	min-height:800px;
	box-shadow: 5px 5px 5px #000;
}
.formdiv {
	width:60%;
	margin-left:auto;
	margin-right:auto;
	//border: 1px solid #666;
}

select {
    float:right;
    width:200px;
    border:2px solid #dadada;
    border-radius:5px;
    font-size:20px;
    padding:5px;
    margin-top: -10px;    
}


input:focus { 
    outline:none;
    border-color:#9ecaed;
    box-shadow:0 0 10px #9ecaed; 
}
.spacer {
	height:50px;	
}
    </style>
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
    
        <asp:Label ID="Label1" runat="server" Font-Size="30pt" ForeColor="#FF6600" style="text-align: center" Text="Fiserv Career Fair Sign up Form"></asp:Label>
    
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
                    <asp:Button ID="Return" runat="server" OnClick="Return_Click" Text="Return To Form" Width="111px" />
                    <asp:Button ID="closeBtn" runat="server" OnClick="Button1_Click" style="margin-left: 57px" Text="Close" Width="92px" />
                </td>
            </tr>
        </table>
    </form>
    </div></div></div></div>
</body>
</html>
