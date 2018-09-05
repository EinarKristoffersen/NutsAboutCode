using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadCodeSnippets();
    }

    private void LoadCodeSnippets()
    {
        var db = new Database();
        var codeSnippets = db.GetCodeSnippets().ToArray();
        var numberOfRows = CalculateNumberOfRows(codeSnippets.Length);        
        for (var i = 0; i < numberOfRows; i++)
        {
            int j;
            var tableRow = new TableRow();
            for (j = 0; j < Constants.NumberOfSnippetColumns; j++)
            {
                var codeSnippet = codeSnippets[i * Constants.NumberOfSnippetColumns + j];
                var tableCell = new TableCell();
                tableCell.ID = codeSnippet.Id.ToString();
                tableCell.Text = codeSnippet.Title;
                tableRow.Cells.Add(tableCell);

                if (i * Constants.NumberOfSnippetColumns + j+1 >= codeSnippets.Length)
                    break;
            }
            CodeSnippetTable.Rows.Add(tableRow);
            
        }
    }

    private int CalculateNumberOfRows(int numberOfSnippets)
    {
        var numberOfRows = numberOfSnippets / Constants.NumberOfSnippetColumns;
        var remainingSnippets = numberOfSnippets % Constants.NumberOfSnippetColumns;
        if (remainingSnippets == 0)
            return numberOfRows;
        return numberOfRows+1;
    }

}