<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="Assignment4.webpages.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- StyleSheet -->
<link rel="stylesheet" type="text/css" href="main.css">
       Add Instructor<br />
       ID:
       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
       <br />
       First Name:&nbsp;
       <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
       <br />
       Last Name:
       <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
       <br />
       Phone Number:&nbsp;
       <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
       <br />
       <br />
       Add Member<br />
       ID:&nbsp;
       <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
       <br />
       First Name:
       <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
       <br />
       Last Name:
       <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
       <br />
       Join Date:
       <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
       <br />
       Phone Number:
       <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
       <br />
       Email:
       <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
&nbsp;</asp:Content>
