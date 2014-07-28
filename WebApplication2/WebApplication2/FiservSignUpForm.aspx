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
            width: 212px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Size="30pt" ForeColor="#FF6600" style="text-align: center" Text="Fiserv Career Fair Sign up Form"></asp:Label>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">First Name:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Fname" runat="server" Width="180px" ></asp:TextBox>
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
                    <asp:TextBox ID="Lname" runat="server" Width="180px"></asp:TextBox>
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
                    <asp:TextBox ID="Email" runat="server" Width="180px"></asp:TextBox>
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
                    <asp:TextBox ID="PhoneNo" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PhoneNo" ErrorMessage="Phone Number Is Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="PhoneNo" ErrorMessage="Invalid Number" Font-Italic="True" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Degree:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="Degree" runat="server" Width="210px">
                        <asp:ListItem>Select A Degree</asp:ListItem>
                        <asp:ListItem>Bachelor of Computer Science</asp:ListItem>
                        <asp:ListItem>Bachelor of Engineering</asp:ListItem>
                        <asp:ListItem>Bachelor of Business</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Degree" ErrorMessage="Degree Is Required" Font-Italic="True" ForeColor="Red" InitialValue="Select A Degree"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Major</td>
                <td class="auto-style3">
                    <asp:TextBox ID="Major" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Major" ErrorMessage="Major Is Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="Major" ErrorMessage="Invalid Characters" Font-Italic="True" ForeColor="Red" ValidationExpression="^[A-Za-z ]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Graduation Year:</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="GradMonth" runat="server">
                        <asp:ListItem>Select Month</asp:ListItem>
                        <asp:ListItem>January</asp:ListItem>
                        <asp:ListItem>February</asp:ListItem>
                        <asp:ListItem>March</asp:ListItem>
                        <asp:ListItem>April</asp:ListItem>
                        <asp:ListItem>May</asp:ListItem>
                        <asp:ListItem>June</asp:ListItem>
                        <asp:ListItem>July</asp:ListItem>
                        <asp:ListItem>August</asp:ListItem>
                        <asp:ListItem>September</asp:ListItem>
                        <asp:ListItem>October</asp:ListItem>
                        <asp:ListItem>November</asp:ListItem>
                        <asp:ListItem>December</asp:ListItem>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="GradMonth" ErrorMessage="Month Is Required" Font-Italic="True" ForeColor="Red" InitialValue="Select Month"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="GradYear" ErrorMessage="Year Is Required" Font-Italic="True" ForeColor="Red" InitialValue="Select Year"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Dream Role:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="DreamRole" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DreamRole" ErrorMessage="Dream Role Is Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="DreamRole" ErrorMessage="Invalid Characters" Font-Italic="True" ForeColor="Red" ValidationExpression="^[A-Za-z ]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Job Availability</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="JobAvailability" runat="server">
                        <asp:ListItem>Select Job Availability</asp:ListItem>
                        <asp:ListItem>Full Time</asp:ListItem>
                        <asp:ListItem>Part Time</asp:ListItem>
                        <asp:ListItem>Casual</asp:ListItem>
                        <asp:ListItem>Any</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="JobAvailability" ErrorMessage="Job Availability Is Required" Font-Italic="True" ForeColor="Red" InitialValue="Select Job Availability"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">LinkedIn Profile URL:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="LinkedIn" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Selfie:</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Career Code:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="CareerCode" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="CareerCode" ErrorMessage="Career Code Is Required" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="CareerCode" ErrorMessage="Invalid Characters" Font-Italic="True" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" style="height: 26px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
