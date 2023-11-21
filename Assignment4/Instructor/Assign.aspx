<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Assign.aspx.cs" Inherits="Assignment4.webpages.Assign" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- StyleSheet -->
<link rel="stylesheet" type="text/css" href="main.css">
       Assign To Section<br />
       Member to add ID:
       <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
       <br />
       Section ID:
       <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>

       <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="LinqDataSource1" Height="50px" Width="327px" AllowPaging="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
       <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
       <Fields>
           <asp:BoundField DataField="SectionID" HeaderText="SectionID" ReadOnly="True" SortExpression="SectionID" />
           <asp:BoundField DataField="Member_ID" HeaderText="Member_ID" SortExpression="Member_ID" ReadOnly="True" />
           <asp:CommandField ShowDeleteButton="False" ShowEditButton="True" ShowInsertButton="False" />
       
       </Fields>
       <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
       <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
       <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
       <RowStyle BackColor="White" ForeColor="#330099" />
   </asp:DetailsView>
<asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Assignment4.KarateDataContext" EntityTypeName="" TableName="Sections" Select="new (SectionID, Member_ID)" EnableUpdate="True">
   </asp:LinqDataSource>

&nbsp;</asp:Content>
