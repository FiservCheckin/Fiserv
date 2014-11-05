<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataView.aspx.cs" Inherits="WebApplication2.WebForm2" %>

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
            <div class="mainbody" style="width: 1150px;">
                <div class="spacer"></div>
                <div class="formdiv">
                    <form id="form1" runat="server">
                        <asp:Label ID="Label1" runat="server" Font-Size="30pt" ForeColor="#FF6600" Height="50px" Style="text-align: center; margin-top: 0px" Text="Attendee Details Table" Width="500px"></asp:Label>
                        <div>

                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <%--<asp:BoundField DataField="CareerCode" HeaderText="CareerCode" ReadOnly="True" SortExpression="CareerCode" />--%>
                                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                                    <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                                    <asp:BoundField DataField="GradSem" HeaderText="GradSem" SortExpression="GradSem" />
                                    <asp:BoundField DataField="GradYear" HeaderText="GradYear" SortExpression="GradYear" />
                                    <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                                    <asp:BoundField DataField="Role2" HeaderText="Role2" SortExpression="Role2" />
                                    <%--<asp:BoundField DataField="JobAvailability" HeaderText="JobAvailability" SortExpression="JobAvailability" />--%>
                                    <%--<asp:BoundField DataField="LinkedIn" HeaderText="LinkedIn" SortExpression="LinkedIn" />--%>
                                    <asp:BoundField DataField="Role3" HeaderText="Role3" SortExpression="Role3" />
                                    <asp:BoundField DataField="InputTime" HeaderText="InputTime" SortExpression="InputTime" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />

                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FiservConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [Email], [PhoneNo], [Degree], [GradSem], [GradYear], [Role], [Role2], [Role3], [InputTime] FROM [Attendee]"></asp:SqlDataSource>

                        </div>
                        <table class="auto-style1">
                            <tr>
                                <td >Export All Data to Excel Sheet:</td>
                                <td class="auto-style3">
                                    <br />
                                    <asp:Button ID="Export" runat="server" Text="Export All" OnClick="Export_Click" Style="text-align: left" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td class="auto-style6">Export
                    Role:</td>
                                <td class="auto-style5">
                                    <asp:TextBox ID="ExportText" runat="server" Height="22px" Style="margin-left: 0px" Width="135px"></asp:TextBox>
                                </td>
                                <td style="text-align: left">
                                    <asp:Button ID="ExportRole" causesvalidation="true" validationgroup="exportRoleGroup" runat="server" OnClick="ExportRole_Click" Text="Export" />
                                    <asp:RequiredFieldValidator ID="roleExportRequiredFieldValidator" runat="server" ControlToValidate="ExportText" validationgroup="exportRoleGroup" ErrorMessage="At least one charactor is needed" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">Clear Database</td>
                                <td class="auto-style8">
                                    <asp:Label ID="Label2" runat="server" Text="Password required for data deletion"></asp:Label>
                                    <asp:TextBox ID="pswdTextBox" runat="server" Font-Strikeout="False" TextMode="Password" Style="margin: 10px 0;"></asp:TextBox>
                                    <br />
                                    <asp:Button ID="deleteBtn" runat="server" OnClick="deleteBtn_Click" Text="Delete" />
                                </td>
                                <td class="auto-style9"></td>
                                <td class="auto-style10">Available Roles To Export:</td>
                                <td class="auto-style11">Business Analyst, C# . Net Developer, Mobile Deveopler (iOS), Mobile Developer (Android), Mobile Developer (Windows), QA, Tester</td>
                            </tr>
                        </table>
                        <p>
                            &nbsp;
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
