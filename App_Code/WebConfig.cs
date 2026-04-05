using System;
using System.Web;
using System.Web.UI;
using System.Data;
using Microsoft.CSharp;
using System.IO;
using System.Configuration;

/// <summary>
/// Summary description for LoginData
/// </summary>
public static class WebConfig
{
    private static string dbConnectionString;
    private static string dbProviderName;
    private static double cacheExpirationMinutes;
  
    static WebConfig()
	{
            dbConnectionString = ConfigurationManager.ConnectionStrings["ConnectionStringOC8Ball"].ConnectionString;
            dbProviderName = ConfigurationManager.ConnectionStrings["ConnectionStringOC8Ball"].ProviderName;
            cacheExpirationMinutes = 1440;
	}

    public static string DbConnString
    {
        get 
        {

            return (dbConnectionString);
        }
    }

    public static string DbProviderName
    {
        get
        {
            return ("System.Data.SqlClient");
        }
    }

    public static double CacheExpirationMinutes
    {
        get
        {
            return (cacheExpirationMinutes);
        }
    }

}
