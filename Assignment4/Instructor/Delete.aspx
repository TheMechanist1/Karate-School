<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Assignment4.webpages.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
           <!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- StyleSheet -->
    <link rel="stylesheet" type="text/css" href="main.css">
        Delete Instructor<br />
   <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="LinqDataSource1" Height="50px" Width="327px" AllowPaging="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
       <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
       <Fields>
           <asp:BoundField DataField="InstructorFirstName" HeaderText="InstructorFirstName" ReadOnly="True" SortExpression="InstructorFirstName" />
           <asp:BoundField DataField="InstructorLastName" HeaderText="InstructorLastName" SortExpression="InstructorLastName" ReadOnly="True" />
           <asp:BoundField DataField="InstructorPhoneNumber" HeaderText="InstructorPhoneNumber" SortExpression="InstructorPhoneNumber" ReadOnly="True" />
           <asp:BoundField DataField="InstructorID" HeaderText="InstructorID" SortExpression="InstructorID" ReadOnly="True" />
           <asp:CommandField ShowDeleteButton="True" ShowEditButton="False" ShowInsertButton="False" />
       </Fields>
       <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
       <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
       <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
       <RowStyle BackColor="White" ForeColor="#330099" />
   </asp:DetailsView>
<asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Assignment4.KarateDataContext" EnableInsert="True" EntityTypeName="" TableName="Instructors" Select="new (InstructorID, InstructorFirstName, InstructorLastName, InstructorPhoneNumber)">
   </asp:LinqDataSource>
   <br />
   Delete Member<br />
   <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="LinqDataSource2" Height="50px" Width="327px" AllowPaging="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
       <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
       <Fields>
           <asp:BoundField DataField="Member_UserID" HeaderText="Member_UserID" ReadOnly="True" SortExpression="Member_UserID" />
           <asp:BoundField DataField="MemberFirstName" HeaderText="MemberFirstName" ReadOnly="True" SortExpression="MemberFirstName" />
           <asp:BoundField DataField="MemberLastName" HeaderText="MemberLastName" SortExpression="MemberLastName" ReadOnly="True" />
           <asp:BoundField DataField="MemberDateJoined" HeaderText="MemberDateJoined" SortExpression="MemberDateJoined" ReadOnly="True" />
           <asp:BoundField DataField="MemberPhoneNumber" HeaderText="MemberPhoneNumber" SortExpression="MemberPhoneNumber" ReadOnly="True" />
           <asp:BoundField DataField="MemberEmail" HeaderText="MemberEmail" ReadOnly="True" SortExpression="MemberEmail" />
           <asp:CommandField ShowDeleteButton="True" ShowEditButton="False" ShowInsertButton="False" />
       </Fields>
       <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
       <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
       <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
       <RowStyle BackColor="White" ForeColor="#330099" />
   </asp:DetailsView>
<asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="Assignment4.KarateDataContext" EnableInsert="True" EntityTypeName="" TableName="Members" Select="new (Member_UserID, MemberFirstName, MemberLastName, MemberDateJoined, MemberPhoneNumber, MemberEmail)">
   </asp:LinqDataSource>
   <br />
   </asp:Content>