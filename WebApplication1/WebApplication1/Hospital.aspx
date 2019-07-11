<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Hospital.aspx.cs" Inherits="WebApplication1.Hospital1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <p>
        <span style="color: #336600"><strong>For inserting data :</strong></span></p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;<table style="width: 50%;">
            <tr>
                <td style="height: 26px">name:</td>
                <td style="height: 26px"><asp:TextBox ID="TextBox1" runat="server" BackColor="#CC99FF" BorderStyle="Double" ForeColor="#006600"  Width="68px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>address_id:</td>
                <td><asp:TextBox ID="TextBox2" runat="server" BackColor="#CC99FF" BorderStyle="Double" ForeColor="#006600"  Width="68px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>doctor_id:</td>
                <td><asp:TextBox ID="TextBox3" runat="server" BackColor="#CC99FF" BorderStyle="Double" ForeColor="#006600"  Width="68px"></asp:TextBox>
                </td>
            </tr>
           
            <tr>
                <td>category_id:</td>
                <td><asp:TextBox ID="TextBox5" runat="server" BackColor="#CC99FF" BorderStyle="Double" ForeColor="#006600"  Width="68px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>category_time:</td>
                <td><asp:TextBox ID="TextBox6" runat="server" BackColor="#CC99FF" BorderStyle="Double" ForeColor="#006600"  Width="68px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>tariff_id:</td>
                <td><asp:TextBox ID="TextBox7" runat="server" BackColor="#CC99FF" BorderStyle="Double" ForeColor="#006600"  Width="68px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>capacity:</td>
                <td><asp:TextBox ID="TextBox8" runat="server" BackColor="#CC99FF" BorderStyle="Double" ForeColor="#006600"  Width="68px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>established_year:</td>
                <td><asp:TextBox ID="TextBox9" runat="server" BackColor="#CC99FF" BorderStyle="Double" ForeColor="#006600"  Width="68px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>Hos_budget:</td>
                <td><asp:TextBox ID="TextBox10" runat="server" BackColor="#CC99FF" BorderStyle="Double" ForeColor="#006600"  Width="68px"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="Lime" BorderColor="#003300" ForeColor="#6600FF" OnClick="Button1_Click" Text="Insert" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="name" DataSourceID="LinqDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />


            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                <asp:BoundField DataField="address_id" HeaderText="address_id" SortExpression="address_id" />
                <asp:BoundField DataField="doctor_id" HeaderText="doctor_id" SortExpression="doctor_id" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                <asp:BoundField DataField="category_id" HeaderText="category_id" SortExpression="category_id" />
                <asp:BoundField DataField="category_time" HeaderText="category_time" SortExpression="category_time" />
                <asp:BoundField DataField="tariff_id" HeaderText="tariff_id" SortExpression="tariff_id" />
                <asp:BoundField DataField="capacity" HeaderText="capacity" SortExpression="capacity" />
                <asp:BoundField DataField="establishedـyear" HeaderText="establishedـyear" SortExpression="establishedـyear" />
                <asp:BoundField DataField="Hos_budget" HeaderText="Hos_budget" SortExpression="Hos_budget" />
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

           <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="WebApplication1.DataClasses1DataContext" EnableDelete="True" EnableUpdate="True" EntityTypeName="" TableName="Hospitals"  >
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
