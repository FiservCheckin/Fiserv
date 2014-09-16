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
                    Export Data to Excel Sheet:</td>
                <td>
                    <asp:Button ID="Export" runat="server" Text="Export" OnClick="Export_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Clear Database</td>
                <td>
                    <asp:Button ID="deleteBtn" runat="server" OnClick="deleteBtn_Click" Text="Delete" onclientclick="return confirm('Do you want to delete all the data?');" Height="26px"/>
                </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
