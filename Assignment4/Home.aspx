<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Assignment4.webpages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center">
        <asp:Login ID="Login2" runat="server" OnAuthenticate="Login1_Authenticate">
        </asp:Login>
    </div>
    </asp:Content>