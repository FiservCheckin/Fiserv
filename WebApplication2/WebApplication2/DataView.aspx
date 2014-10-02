<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataView.aspx.cs" Inherits="WebApplication2.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 307px;
            text-align: right;
        }
        .auto-style3 {
            width: 94px;
        }
        .auto-style5 {
            width: 136px;
        }
        .auto-style6 {
            width: 83px;
        }
        .auto-style7 {
            width: 307px;
            text-align: right;
            height: 12px;
        }
        .auto-style8 {
            width: 94px;
            height: 12px;
        }
        .auto-style9 {
            width: 83px;
            height: 12px;
        }
        .auto-style10 {
            width: 136px;
            height: 12px;
            text-align: right;
        }
        .auto-style11 {
            height: 12px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Size="30pt" ForeColor="#FF6600" Height="50px" style="text-align: center; margin-top: 0px" Text="Attendee Details Table" Width="500px"></asp:Label>
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FiservConnectionString %>" SelectCommand="SELECT * FROM [Attendee]"></asp:SqlDataSource>
    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="AttendeeId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <%--<asp:BoundField DataField="CareerCode" HeaderText="CareerCode" ReadOnly="True" SortExpression="CareerCode" />--%>
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                            <asp:BoundField DataField="DegreeName" HeaderText="Degree" SortExpression="DegreeName" />
                            <asp:BoundField DataField="MajorName" HeaderText="Major" SortExpression="MajorName" />
                            <asp:BoundField DataField="GradSem" HeaderText="GradSem" SortExpression="GradSem" />
                            <asp:BoundField DataField="GradYear" HeaderText="GradYear" SortExpression="GradYear" />
                            <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
                            <%--<asp:BoundField DataField="JobAvailability" HeaderText="JobAvailability" SortExpression="JobAvailability" />--%>
                            <%--<asp:BoundField DataField="LinkedIn" HeaderText="LinkedIn" SortExpression="LinkedIn" />--%>
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
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    Export All Data to Excel Sheet:</td>
                <td class="auto-style3">
                    <br />
                    <asp:Button ID="Export" runat="server" Text="Export All" OnClick="Export_Click" style="text-align: left" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style6">
                    Export
                    Role:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="ExportText" runat="server" Height="22px" style="margin-left: 0px" Width="135px"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:Button ID="ExportRole" runat="server" OnClick="ExportRole_Click" Text="Export" />
                &nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Clear Database</td>
                <td class="auto-style8">
                    <asp:Label ID="Label2" runat="server" Text="Password required for data deletion"></asp:Label>
            <asp:TextBox ID="pswdTextBox" runat="server" BorderStyle="Double" Font-Bold="False" Font-Italic="False" Font-Strikeout="False" ForeColor="Black" Height="20px" TextMode="Password" Width="200px"></asp:TextBox>
                    <br />
                    <asp:Button ID="deleteBtn" runat="server" OnClick="deleteBtn_Click" Text="Delete" 
                        
                        Height="26px"/>
                </td>
                <td class="auto-style9">
                    </td>
                <td class="auto-style10">
                    Available Roles To Export:</td>
                <td class="auto-style11">
                    &nbsp;Software Developer, QA Test Analyst, Test Engineer, Systems Administrator, Application Support Specialist, User Experience Designer, Project Manager, Business Analyst, Scrum Master</td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
