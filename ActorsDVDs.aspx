<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ActorsDVDs.aspx.cs" Inherits="CWPractice.ActorsDVDs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="StyleSheet1.css" rel="stylesheet" />
    <div style="background-color: #ffffff; font-family: 'JetBrains Mono'; display: flex; flex-direction: column; margin:0 auto 0 auto">
        <h1 style="text-align:center">Select Actor' lastname to see the titles of DVDs</h1>
        <asp:TextBox ID="TextBoxActorSurName" runat="server" CssClass="tb" placeholder="Actor' Surname"></asp:TextBox>
        <asp:DropDownList 
            ID="DropDownActorSurname" 
            runat="server" 
            AutoPostBack="True" 
            class="tb"
            DataSourceID="SqlDataSourceSurname" 
            DataTextField="ActorSurname" 
            DataValueField="ActorSurname" 
            OnSelectedIndexChanged="DropDownActorSurname_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <asp:Button ID="ButtonSearchDvd" runat="server" OnClick="ButtonSearchDvd_Click" Text="Search" CssClass="btn" style="background-color:#1877F2; color:white; max-width:fit-content; margin:auto"/>

        
        <asp:SqlDataSource ID="SqlDataSourceSurname" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:CourseworkDatabaseConnectionString %>" 
            SelectCommand="SELECT [ActorSurname] FROM [Actor]">
        </asp:SqlDataSource>

        <asp:SqlDataSource 
            ID="SqlDataSourceDefault" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:CourseworkDatabaseConnectionString %>" 
            SelectCommand="SELECT DISTINCT DVDTitle.DVDNumber, DVDTitle.DVDTitle, DVDTitle.DateReleased FROM DVDTitle INNER JOIN CastMember ON DVDTitle.DVDNumber = CastMember.DVDNumber INNER JOIN Actor ON CastMember.ActorNumber = Actor.ActorNumber WHERE (Actor.ActorSurname = @name)">
            <SelectParameters>
                <asp:ControlParameter 
                    ControlID="TextBoxActorSurName" 
                    Name="name" 
                    PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource 
            ID="SqlDataSourceFindDvd" 
            runat="server" 
            ConnectionString="<%$ ConnectionStrings:CourseworkDatabaseConnectionString %>" 
            SelectCommand="SELECT DISTINCT DVDTitle.DVDNumber, DVDTitle.DVDTitle, DVDTitle.DateReleased FROM DVDTitle INNER JOIN CastMember ON DVDTitle.DVDNumber = CastMember.DVDNumber INNER JOIN Actor ON CastMember.ActorNumber = Actor.ActorNumber WHERE (Actor.ActorSurname = @name)">

            <SelectParameters>
                <asp:ControlParameter 
                    ControlID="DropDownActorSurname" 
                    Name="name" 
                    PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:Label ID="Label1" runat="server" Text="Label"><h3 style="text-align:center">DVDs Titles:</h3></asp:Label>
        <div style="margin:0 auto 8% auto">
            <asp:GridView 
                ID="GridViewListDvd" 
                runat="server" 
                AutoGenerateColumns="False" 
                DataSourceID="SqlDataSourceDefault">
            </asp:GridView>
        </div>
    </div>
</asp:Content>
