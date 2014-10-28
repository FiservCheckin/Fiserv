<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminFunction.aspx.cs" Inherits="WebApplication2.WebForm5" %>

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
	border: 1px solid #666;
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
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="returnBtn" runat="server" OnClick="returnBtn_Click" Text="return to the form" />
                    <br />
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="active" GroupName="livetime" />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="inactive" GroupName="livetime" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="submit" />
                    <br />
                    <asp:Label ID="statusLbl" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <div>
    
                &nbsp;
            
        </div>
    </form>
    </div></div></div></div>
</body>
</html>
