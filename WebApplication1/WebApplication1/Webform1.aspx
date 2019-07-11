<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Webform1.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="w" runat="server" contentplaceholderid="MainContent">
    <br />
    <span style="color: #009900">&nbsp;<strong><span style="font-size: x-large">Welcome to TMC (Tehran Medical Council)&nbsp; Database</span></strong></span><br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TehranMedicalCouncilConnectionString %>" SelectCommand="SELECT name FROM Sys.Tables"></asp:SqlDataSource>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #336600"><strong>Tables</strong></span><br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="White" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" ForeColor="#990099" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged2">
    </asp:DropDownList>
    <span style="color: #336600"><strong>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource4" DataTextField="name" DataValueField="name" ForeColor="#990099">
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:TehranMedicalCouncilConnectionString %>" SelectCommand="select name 
from sys.tables
where name='Hospital' or name='Category' or name='Laboratory' or name='Time_slot' or name='Doctor'"></asp:SqlDataSource>
    </strong></span>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="#CC99FF" BorderColor="#990099" BorderStyle="Ridge" ForeColor="#336600" OnClick="Button1_Click" Text="Confirm" Width="71px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" BackColor="#CC99FF" BorderColor="#990099" BorderStyle="Solid" ForeColor="#336600" Text="Search" Width="72px" OnClick="Button2_Click" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>
    </p>
</asp:Content>

