<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" ClientIDMode="Static" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" type="text/css" href="./css/home.css" />
    <script type="text/javascript" src="./js/home.js"></script>
</asp:Content>


<asp:Content ID="PageContent" ContentPlaceHolderID="Container" runat="server">
    <h2 id="table_label">All code snippets</h2>
    <asp:Table ID="CodeSnippetTable" runat="server" CellSpacing="0"></asp:Table>
</asp:Content>
