using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CodeSnippet : System.Web.UI.Page
{
    private Database _database;
    protected void Page_Load(object sender, EventArgs e)
    {
        _database = new Database();
        LoadCodeSnippet();
    }

    private void LoadCodeSnippet()
    {
        var id = Request.QueryString["id"];
        if (string.IsNullOrEmpty(id))
            return;
        
        var codeSnippet = _database.GetCodeSnippetById(new Guid(id));
        title.InnerText = codeSnippet.Title;
        description.InnerText = codeSnippet.Description;
        code.InnerText = codeSnippet.Code;
        metadata.InnerText = codeSnippet.Metadata;
    }
}