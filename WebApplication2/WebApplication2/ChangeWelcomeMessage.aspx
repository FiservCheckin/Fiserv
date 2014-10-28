<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangeWelcomeMessage.aspx.cs" Inherits="WebApplication2.WebForm6" %>

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
label { 
    display:block;
    width:420px;
    overflow:auto;
    font-family:sans-serif;
    font-size:20px;
    color:#444;
    text-shadow:0 0 2px #ddd;
    padding:20px 10px 10px 10px;
}

input {
    float:right;
    width:200px;
    border:2px solid #dadada;
    border-radius:7px;
    font-size:20px;
    padding:2px;
    margin-top:-10px;
    margin-bottom: 0px;
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
    
        <asp:Label ID="Label2" runat="server" Font-Size="30pt" ForeColor="#FF6600" Height="50px" style="text-align: center; margin-top: 0px" Text="Change Welcome Message" Width="500px"></asp:Label>
        <br />
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Please Enter a New Welcome Message"></asp:Label>
                </td>
                <td>
        <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="356px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
            <asp:Button ID="submit0" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
            </tr>
        </table>
        <br />
    
    </div>
&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
    </div></div></div></div>
</body>
</html>
