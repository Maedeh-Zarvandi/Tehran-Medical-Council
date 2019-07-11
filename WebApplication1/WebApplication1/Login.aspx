<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-image: url('doc.jpg')">
    <p style="background-image: none; background-position: center center; ">
        <br />
    </p>
    <p style="background-image: none; background-position: center center; ">
    </p>
    <p style="background-image: none; background-position: center center; ">
        &nbsp;&nbsp;&nbsp;&nbsp; <span style="color: #990000; font-size: larger"><strong>Username :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" BackColor="#FF9999" BorderColor="#990033" BorderStyle="Double"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Username or Password is incorrect ! "></asp:Label>
    </p>
    <p style="background-image: none; background-position: center center; ">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" ForeColor="Red" Text="***Please enter the required data***"></asp:Label>
    </p>
    <p style="background-image: none; background-position: center center; ">
        &nbsp;&nbsp;&nbsp; &nbsp;<span style="color: #990000; font-size: larger"><strong>Password :&nbsp;&nbsp;&nbsp; </strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" BackColor="#FF9999" BorderColor="Maroon" BorderStyle="Double"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p style="background-image: none; background-position: center center; ">
        &nbsp;</p>
    <p style="background-image: none; background-position: center center; ">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" BorderColor="#3333FF" BorderStyle="Groove" OnClick="Button1_Click" Text="Login" />
    </p>
        <p style="background-image: none; background-position: center center; ">
            &nbsp;</p>
        <p style="background-image: none; background-position: center center; ">
            &nbsp;</p>
        <p style="background-image: none; background-position: center center; ">
            &nbsp;</p>
        <p style="background-image: none; background-position: center center; ">
            &nbsp;</p>
        <p style="background-image: none; background-position: center center; ">
            &nbsp;</p>
        <p style="background-image: none; background-position: center center; ">
            &nbsp;</p>
        <p style="background-image: none; background-position: center center; ">
            &nbsp;</p>
        <p style="background-image: none; background-position: center center; ">
            &nbsp;</p>
        <p style="background-image: none; background-position: center center; ">
            &nbsp;</p>
        <p style="background-image: none; background-position: center center; ">
            &nbsp;</p>
    </div>
</asp:Content>
