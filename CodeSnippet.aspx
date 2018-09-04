<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CodeSnippet.aspx.cs" Inherits="CodeSnippet" %>

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
    <h2 id="title">Lorem Ipsum</h2>
    <p id="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et iaculis lacus, ut varius nisl. Nunc sed est purus. Morbi dolor risus, vehicula nec risus sed, suscipit bibendum quam. Morbi eget leo ultricies, elementum justo quis, volutpat nulla. Nunc cursus nulla eget tellus ullamcorper feugiat. Quisque varius eget magna id eleifend. Nulla facilisi. Maecenas efficitur erat id congue tempor. Morbi placerat ligula vel eleifend dignissim. In at lorem sed tortor tincidunt pharetra. Duis et turpis vel sem pulvinar pharetra non sollicitudin turpis. Ut aliquam pellentesque lectus, quis ultricies ex placerat sit amet. Nunc pellentesque massa nec turpis pretium ornare. Ut ornare vulputate erat, nec pellentesque nisl dignissim malesuada.</p>
    <pre>
        <code class="javascript">
        var myfunc = function(){
            Xrm.Page.data.entity.getId();
        };
        </code>
    </pre>
</asp:Content>