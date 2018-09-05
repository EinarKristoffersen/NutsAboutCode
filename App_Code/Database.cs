using Microsoft.ApplicationBlocks.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;

/// <summary>
/// Summary description for Database
/// </summary>
public class Database
{
    private string _connectionString;
    public Database()
    {
        _connectionString = "Server=tcp:nutsaboutcode.database.windows.net,1433;Initial Catalog=NutsAboutCode;Persist Security Info=False;User ID=einar;Password=s1Kor@Nutsaboutcodepionen91;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
    }

    public CodeSnippet GetCodeSnippetById(Guid id)
    {
        var query = string.Format(@"select title, description, code, metadata from codesnippet where id = '{0}' order by title", id.ToString());
        var dataSet = SqlHelper.ExecuteDataset(_connectionString, CommandType.Text, query);
        return (from DataRow row in dataSet.Tables[0].Rows
                select new CodeSnippet
                {
                    Id = id,
                    Title = row[0].ToString().Trim(),
                    Description = row[1].ToString().Trim(),
                    Code = row[2].ToString().Trim(),
                    Metadata = row[3].ToString().Trim()
                }).FirstOrDefault();
    }

    public List<CodeSnippet> GetCodeSnippets()
    {
        var query = "select id, title from codesnippet order by title";
        var dataSet = SqlHelper.ExecuteDataset(_connectionString, CommandType.Text, query);
        return (from DataRow row in dataSet.Tables[0].Rows
                select new CodeSnippet
                {
                    Id = new Guid(row[0].ToString().Trim()),
                    Title = row[1].ToString().Trim()
                }).ToList();
    }



    private void sqlwithparameter()
    {
        using (var connection = new SqlConnection())
        {
            SqlCommand command = new SqlCommand("SELECT * FROM TableName WHERE FirstColumn = @0", connection);
            command.Parameters.Add(new SqlParameter("0", 1));
        }
    }

}