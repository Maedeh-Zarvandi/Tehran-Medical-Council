<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Faculty.aspx.cs" Inherits="WebApplication1.Faculty1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <p>
        <span style="color: #336600"><strong>For inserting data :</strong></span></p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;<table style="width: 50%;">
            <tr>
                <td style="height: 26px">university_name:</td>
                <td style="height: 26px"><asp:TextBox ID="TextBox1" runat="server" BackColor="#CC99FF" BorderStyle="Double" ForeColor="#006600"  Width="68px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>university_id:</td>
                <td><asp:TextBox ID="TextBox2" runat="server" BackColor="#CC99FF" BorderStyle="Double" ForeColor="#006600"  Width="68px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>university_adr:</td>
                <td><asp:TextBox ID="TextBox3" runat="server" BackColor="#CC99FF" BorderStyle="Double" ForeColor="#006600"  Width="68px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>doctor_id:</td>
                <td><asp:TextBox ID="TextBox4" runat="server" BackColor="#CC99FF" BorderStyle="Double" ForeColor="#006600"  Width="68px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>tariff_id:</td>
                <td><asp:TextBox ID="TextBox5" runat="server" BackColor="#CC99FF" BorderStyle="Double" ForeColor="#006600"  Width="68px"></asp:TextBox>
                </td>
            </tr>
          
        </table>
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="Lime" BorderColor="#003300" ForeColor="#6600FF" OnClick="Button1_Click" Text="Insert" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="LinqDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:BoundField DataField="university_name" HeaderText="university_name" SortExpression="university_name" />
                 <asp:BoundField DataField="university_id" HeaderText="university_id" SortExpression="university_id" />
                 <asp:BoundField DataField="university_adr" HeaderText="university_adr" SortExpression="university_adr" />
                 <asp:BoundField DataField="doctor_id" HeaderText="doctor_id" SortExpression="doctor_id" />
                 <asp:BoundField DataField="tariff_id" HeaderText="tariff_id" SortExpression="tariff_id" />
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

           <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WebApplication1.DataClasses1DataContext" EnableDelete="True" EnableUpdate="True" EntityTypeName="" TableName="Faculties"  >
        </asp:LinqDataSource>
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>


</asp:Content>
