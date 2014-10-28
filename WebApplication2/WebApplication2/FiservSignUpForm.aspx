<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FiservSignUpForm.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fiserv Sign Up Form</title>
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

        }
        .auto-style1 {
            height: 43px;
        }
        .auto-style2 {
            height: 44px;
        }
        .auto-style3 {
            height: 45px;
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
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="30pt" ForeColor="#FF6600" style="text-align: center" Text="Fiserv Career Fair Sign up Form"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="welcomeMsg" runat="server"></asp:Label>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">First Name:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Fname" runat="server" Width="201px" ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Fname" ErrorMessage="First Name Is Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Fname" ErrorMessage="Invalid Name" Font-Italic="True" ForeColor="Red" ValidationExpression="^[A-Za-z ]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Lname" runat="server" Width="207px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Lname" ErrorMessage="Last Name Is Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Lname" ErrorMessage="Invalid Name" Font-Italic="True" ForeColor="Red" ValidationExpression="^[A-Za-z ]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email Address:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Email" runat="server" Width="207px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email" ErrorMessage="Email Is Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Email" ErrorMessage="Invalid Email" Font-Italic="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Phone Number:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="PhoneNo" runat="server" Width="207px"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="PhoneNo" ErrorMessage="Invalid Number" Font-Italic="True" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <asp:UpdatePanel ID="upMajorPickPane" runat="server" UpdateMode="Always">
                <ContentTemplate>
                    <tr>
                        <td class="auto-style2">Degree:</td>
                        <td class="auto-style3">
                            <asp:DropDownList ID="ddlDegree" runat="server" Width="210px" OnSelectedIndexChanged="ddlDegree_SelectedIndexChanged" AutoPostBack="true">
                                <asp:ListItem>Select A Degree</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlDegree" ErrorMessage="Degree Is Required" Font-Italic="True" ForeColor="Red" InitialValue="Select A Degree" EnableClientScript="true"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Major</td>
                        <td class="auto-style3">
                            <asp:DropDownList ID="ddlMajor" runat="server" Height="20px" style="margin-top: 8px" Width="209px">
                                <asp:ListItem>What is your major studied?</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlMajor" ErrorMessage="Major Is Required" Font-Italic="True" ForeColor="Red" InitialValue="What is your major studied?" EnableClientScript="true"></asp:RequiredFieldValidator>
                            <br />
                        </td>
                    </tr>
                </ContentTemplate>
            </asp:UpdatePanel>
            <tr>
                <td class="auto-style2">Graduation Year:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="GradSem" runat="server" Width="125px">
                        <asp:ListItem>Select Semester</asp:ListItem>
                        <asp:ListItem>Semester 1</asp:ListItem>
                        <asp:ListItem>Semester 2</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="GradYear" runat="server">
                        <asp:ListItem>Select Year</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="GradSem" EnableClientScript="true" ErrorMessage="Semester Is Required" Font-Italic="True" ForeColor="Red" InitialValue="Select Semester"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="GradYear" EnableClientScript="true" ErrorMessage="Year Is Required" Font-Italic="True" ForeColor="Red" InitialValue="Select Year"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;Role:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="Role" runat="server" Width="210px">
                        <asp:ListItem>Select A Role</asp:ListItem>
                        <asp:ListItem>Software Developer</asp:ListItem>
                        <asp:ListItem>Software Architect</asp:ListItem>
                        <asp:ListItem>QA Test Analyst</asp:ListItem>
                        <asp:ListItem>Test Engineer</asp:ListItem>
                        <asp:ListItem>Systems Administrator</asp:ListItem>
                        <asp:ListItem>Application Support Specialist</asp:ListItem>
                        <asp:ListItem>User Experience Designer</asp:ListItem>
                        <asp:ListItem>Project Manager</asp:ListItem>
                        <asp:ListItem>Business Analyst</asp:ListItem>
                        <asp:ListItem>Scrum Master</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Role" EnableClientScript="true" ErrorMessage="Role Is Required" Font-Italic="True" ForeColor="Red" InitialValue="Select A Role"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
