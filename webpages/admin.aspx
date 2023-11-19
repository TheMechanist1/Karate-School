<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="Assignment4.webpages.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <head>
	<meta charset="utf-8" />
	<title></title>
	<!-- Latest compiled and minified CSS -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

	<!-- Latest compiled JavaScript -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- StyleSheet -->
	<link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
</body>
    <br />
    Current Memeber Info<asp:GridView ID="GridView2" runat="server">
    </asp:GridView>
    <br />
    <br />
    Current Instructor Info<asp:GridView ID="GridView3" runat="server">
    </asp:GridView>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/webpages/Add.aspx">Add Instructor/Member</asp:HyperLink>
    <br />
    <br />
    <br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/webpages/Delete.aspx">Delete Instructor/Member</asp:HyperLink>
    <br />
    <br />
    <br />
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/webpages/Assign.aspx">Assign Section</asp:HyperLink>
</asp:Content>
