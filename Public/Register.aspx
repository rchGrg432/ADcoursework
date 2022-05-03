<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CWPractice.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    User Registration</p>
<p>
    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="tbUsername" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbUsername" Display="Dynamic" ErrorMessage="Username cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbEmail" Display="Dynamic" ErrorMessage="Invalid Email Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    &nbsp;
    <asp:RequiredFieldValidator ID="RFVemail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email cannot be empty" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbPassword" Display="Dynamic" ErrorMessage="Criteria not met for password" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"></asp:RegularExpressionValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPassword" Display="Dynamic" ErrorMessage="Password cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Label ID="Label4" runat="server" Text="Re-Password"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbRePassword" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbPassword" ControlToValidate="tbRePassword" Display="Dynamic" ErrorMessage="Enter same password" ForeColor="Red"></asp:CompareValidator>
&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbRePassword" Display="Dynamic" ErrorMessage="Re-Password cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Label ID="Label5" runat="server" Text="DOB"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="tbDOB" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;&nbsp;
    <asp:RangeValidator ID="RVdob" runat="server" ControlToValidate="tbDOB" Display="Dynamic" ErrorMessage="Age criteria not met" ForeColor="Red" MaximumValue="04/18/2012" MinimumValue="04/18/2002" Type="Date"></asp:RangeValidator>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbDOB" Display="Dynamic" ErrorMessage="DOB cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
</p>
<p>
    &nbsp;</p>
</asp:Content>
