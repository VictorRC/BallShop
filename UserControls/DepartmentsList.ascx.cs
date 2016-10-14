using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_DepartmentsList : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        list.DataSource = CatalogAccess.GetDepartments();
        // Needed to bind the data bound controls to the data source  
        list.DataBind();
    }
}