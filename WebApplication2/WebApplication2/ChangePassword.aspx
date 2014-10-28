<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="WebApplication2.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password</title>
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
<div class="spacer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Font-Size="30pt" ForeColor="#FF6600" style="text-align: center" Text="Change Password"></asp:Label>
        <br />
    <br />
        </div>
<div class="formdiv">
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        Reset Password</div>
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
            <asp:Label ID="Label5" runat="server" Text="*Password only contains numbers and letters*"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Confirm New Password: "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="200px" BorderStyle="Double" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </p>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
    </form>
    </div>
    </div>
    </div>
        </div>
</body>
</html>
