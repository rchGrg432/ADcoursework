<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="CWPractice.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099" Text="MY PROFILE"></asp:Label>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Username : "></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="UserType : "></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Panel ID="adminPanel" runat="server" Height="272px" style="margin-left: 23px; margin-top: 7px;" Width="1270px">
    <br />
    &nbsp;
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099" Text="Users"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Height="84px" Width="426px">
        </asp:GridView>
        <br />
        &nbsp;
        <br />
        <br />
        &nbsp;
        <br />
        <br />
        &nbsp;
    <br />
    &nbsp;&nbsp;
    <br />
    &nbsp;
    <br />
    <br />
</asp:Panel>
<br />
<asp:Panel ID="assistantPanel" runat="server" Height="242px" style="margin-left: 24px" Width="1260px">
    <br />
    &nbsp;
    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099" Text="Change Password"></asp:Label>
    <br />
    <br />
    &nbsp;
    <asp:Label ID="Label9" runat="server" Text="Old Password : "></asp:Label>
    &nbsp;<asp:TextBox ID="tbOldPassword" runat="server"></asp:TextBox>
    <br />
    <br />
    &nbsp;
    <asp:Label ID="Label10" runat="server" Text="New Password : "></asp:Label>
    &nbsp;
    <asp:TextBox ID="tbNewPassword" runat="server"></asp:TextBox>
    <br />
    <br />
    &nbsp;
    <asp:Label ID="Label11" runat="server" Text="Re-Type New Password : "></asp:Label>
    &nbsp;<asp:TextBox ID="tbReNewPassword" runat="server"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" BackColor="#000066" ForeColor="White" Text="Change Password" />
</asp:Panel>
</asp:Content>
