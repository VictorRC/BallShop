/// <summary>
/// Descripción breve de Link
/// </summary>
using System;
using System.Web;
public class Link
{
    public Link()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }
    private static string BuildAbsolute(string relativeUri)
    {    // get current uri    
        Uri uri = HttpContext.Current.Request.Url;    // build absolute path    
        string app = HttpContext.Current.Request.ApplicationPath;
        if (!app.EndsWith("/")) app += "/";
        relativeUri = relativeUri.TrimStart('/');    // return the absolute path    
        return HttpUtility.UrlPathEncode(      
            String.Format("http://{0}:{1}{2}{3}",      
            uri.Host, uri.Port, app, relativeUri));
    }

    public static string ToDepartment(string departmentId, string page)
    { if (page == "1") return BuildAbsolute(String.Format("Catalog.aspx?DepartmentID={0}", departmentId));
        else
            return BuildAbsolute(String.Format("Catalog.aspx?DepartmentID={0}&Page={1}", departmentId, page));
    }
    public static string ToDepartment(string departmentId)
{
        return ToDepartment(departmentId, "1");
    }
}