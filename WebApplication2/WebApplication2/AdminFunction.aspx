<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminFunction.aspx.cs" Inherits="WebApplication2.WebForm2" %>

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
        <asp:Label ID="Label1" runat="server" Font-Size="30pt" ForeColor="#FF6600" Height="50px" style="text-align: center; margin-top: 0px" Text="Fiserv Admin" Width="500px"></asp:Label>
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FiservConnectionString %>" SelectCommand="SELECT * FROM [Attendee]"></asp:SqlDataSource>
    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CareerCode" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="CareerCode" HeaderText="CareerCode" ReadOnly="True" SortExpression="CareerCode" />
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
                            <asp:BoundField DataField="Degree" HeaderText="Degree" SortExpression="Degree" />
                            <asp:BoundField DataField="Major" HeaderText="Major" SortExpression="Major" />
                            <asp:BoundField DataField="GradMonth" HeaderText="GradMonth" SortExpression="GradMonth" />
                            <asp:BoundField DataField="GradYear" HeaderText="GradYear" SortExpression="GradYear" />
                            <asp:BoundField DataField="DreamRole" HeaderText="DreamRole" SortExpression="DreamRole" />
                            <asp:BoundField DataField="JobAvailability" HeaderText="JobAvailability" SortExpression="JobAvailability" />
                            <asp:BoundField DataField="LinkedIn" HeaderText="LinkedIn" SortExpression="LinkedIn" />
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
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
