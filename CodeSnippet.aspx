<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CodeSnippet.aspx.cs" Inherits="CodeSnippet" ClientIDMode="Static"%>

<asp:Content ID="HeadContent" ContentPlaceHolderID="Head" runat="server">
    
    <link rel="stylesheet" href="./css/codeSnippet.css">
    <link rel="stylesheet" href="./libs/highlight/styles/monokai-sublime.css">
    <%--<link rel="stylesheet" href="./libs/highlight/styles/atom-one-dark.css">--%>
    <%--<link rel="stylesheet" href="./libs/highlight/styles/solarized-dark.css">--%>
    <%--<link rel="stylesheet" href="./libs/highlight/styles/androidstudio.css">--%>
    
    <script src="./libs/highlight/highlight.pack.js"></script>
    <script>hljs.initHighlightingOnLoad();</script>
</asp:Content>


<asp:Content ID="PageContent" ContentPlaceHolderID="Container" runat="server">
    <h2 id="title" runat="server"></h2>
    <p id="description" runat="server"></p>
    <pre>
        <code id="code" class="javascript" runat="server"></code>
    </pre>
    <label id="metadata" runat="server"></label>
</asp:Content>