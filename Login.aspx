<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CWPractice.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
<br />
<br />
&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
<br />
<br />
<asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
</asp:Content>
