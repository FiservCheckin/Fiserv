<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FiservSignUpForm.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fiserv Sign Up Form</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 357px;
            text-align: right;
        }
        .auto-style3 {
            width: 239px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="30pt" ForeColor="#FF6600" style="text-align: center" Text="Fiserv Career Fair Sign up Form"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                <td class="auto-style2">Phone Number:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="PhoneNo" runat="server" Width="207px"></asp:TextBox>
                </td>
                <td>
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
                <td class="auto-style2">Selfie:</td>
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
