using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;

/// <summary>
/// Descripción breve de BallShopConfiguration
/// </summary>
public static class BallShopConfiguration
{
    private static string dbConnectionString;  // Caches the data provider name   
    private static string dbProviderName;
    // Store the number of products per page
    private readonly static int productsPerPage;
    // Store the product description length for product lists
    private readonly static int productDescriptionLength;
    // Store the name of your shop
    private readonly static string siteName;
    static BallShopConfiguration()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
        dbConnectionString = ConfigurationManager.ConnectionStrings["BallShopConnection"].ConnectionString;
        dbProviderName = ConfigurationManager.ConnectionStrings["BallShopConnection"].ProviderName;
        productsPerPage = System.Int32.Parse(ConfigurationManager.AppSettings["ProductsPerPage"]);
        productDescriptionLength = System.Int32.Parse(ConfigurationManager.AppSettings["ProductDescriptionLength"]);
        siteName = ConfigurationManager.AppSettings["SiteName"];
    }

    public static string DbConnectionString
    {
        get { return dbConnectionString; }
    }
    public static string DbProviderName
    {
        get
        {
            return dbProviderName;
        }
    }
    public static int ProductsPerPage
    {
        get
        {
            return productsPerPage;
        }
    }
    // Returns the length of product descriptions in products lists
    public static int ProductDescriptionLength
    {
        get
        {
            return productDescriptionLength;
        }
    }
    // Returns the length of product descriptions in products lists
    public static string SiteName
    {
        get
        {
            return siteName;
        }
    }
}