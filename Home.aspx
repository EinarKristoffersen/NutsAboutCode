<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" type="text/css" href="./css/home.css" />
    <script type="text/javascript" src="./js/home.js"></script>
</asp:Content>


<asp:Content ID="PageContent" ContentPlaceHolderID="Container" runat="server">
     <table cellspacing="0">
        <tr><td>This is a test1</td><td>This is a test1</td><td>This is a test1</td></tr>
        <tr><td>This is a test2</td><td>This is a test1</td><td>This is a test1</td></tr>
        <tr><td>This is a test3</td><td>This is a test1</td><td>This is a test1</td></tr>
        <tr><td>This is a test4</td><td>This is a test1</td><td>This is a test1</td></tr>
    </table>
</asp:Content>
