using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string productId = Request.QueryString["ProductID"];
        // Retrieves product details
        ProductDetails pd = CatalogAccess.GetProductDetails(productId);
        if (pd.Name != null)
        {
            PopulateControls(pd);
        }

        DataTable attrTable = CatalogAccess.GetProductAttributes(productId);
        string prevAttributeName = "";
        string attributeName, attributeValue, attributeValueId;
        Label attributeNameLabel;
        DropDownList attributeValuesDropDown = new DropDownList();
        foreach (DataRow r in attrTable.Rows)
        {
            attributeName = r["AttributeName"].ToString(); attributeValue = r["AttributeValue"].ToString();
            attributeValueId = r["AttributeValueID"].ToString();
            if (attributeName != prevAttributeName)
            {
                prevAttributeName = attributeName;
                attributeNameLabel = new Label();
                attributeNameLabel.Text = attributeName + ": ";
                attributeValuesDropDown = new DropDownList();
                attrPlaceHolder.Controls.Add(attributeNameLabel);
                attrPlaceHolder.Controls.Add(attributeValuesDropDown);
            }
            attributeValuesDropDown.Items.Add(new ListItem(attributeValue, attributeValueId));
        }

    }
    private void PopulateControls(ProductDetails pd)
    {
        // Display product details
        titleLabel.Text = pd.Name;
        descriptionLabel.Text = pd.Description;
        priceLabel.Text = String.Format("{0:c}", pd.Price);
        productImage.ImageUrl = "ProductImages/" + pd.Image;

        // Set the title of the page
        this.Title = BallShopConfiguration.SiteName + " : "+ pd.Name;

    }
}