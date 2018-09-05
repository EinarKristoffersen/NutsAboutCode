using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CodeSnippet
/// </summary>
public class CodeSnippet
{
    public Guid Id { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public string Code { get; set; }
    public string Metadata { get; set; }

    public CodeSnippet()
    {
    }

    public CodeSnippet(Guid id, string title, string description, string code, string metadata)
    {
        Id = id;
        Title = title;
        Description = description;
        Code = code;
        Metadata = metadata;
    }

    public CodeSnippet(string title, string description, string code, string metadata)
    {
        Title = title;
        Description = description;
        Code = code;
        Metadata = metadata;
    }

    public CodeSnippet(string title, string description, string code)
    {
        Title = title;
        Description = description;
        Code = code;
    }
}