<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CategoryTable.aspx.cs" Inherits="WebApplication1.CategoryTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <span style="color: #336600"><strong>For inserting data :</strong></span></p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;<table style="width: 100%;">
            <tr>
                <td style="height: 26px">ID:</td>
                <td style="height: 26px">
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#CC99FF" BorderColor="#006600" BorderStyle="Double" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>time_slot_id:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#CC99FF" BorderColor="#006600" BorderStyle="Double" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>doctor_id:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" BackColor="#CC99FF" BorderColor="#006600" BorderStyle="Double"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>cat_name:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" BackColor="#CC99FF" BorderColor="#006600" BorderStyle="Double"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#00CC00" BorderColor="#006600" ForeColor="#660066" OnClick="Button1_Click" Text="Insert" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="LinqDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="time_slot_id" HeaderText="time_slot_id" SortExpression="time_slot_id" />
                <asp:BoundField DataField="doctor_id" HeaderText="doctor_id" SortExpression="doctor_id" />
                <asp:BoundField DataField="cat_name" HeaderText="cat_name" SortExpression="cat_name" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </p>
    <p>
        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WebApplication1.DataClasses1DataContext" EnableDelete="True" EnableUpdate="True" EntityTypeName="" TableName="Categories">
        </asp:LinqDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
