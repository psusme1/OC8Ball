using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Configuration;
using System.Collections;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Text.RegularExpressions;

/// <summary>
/// Summary description for BasePage
/// </summary>
public class BasePage : System.Web.UI.Page
{

    public enum RefreshType
    {
        Refresh = 1,
        NoRefresh = 0
    }

    public enum Leagues
    {
        FA12 = 6,
        SP13 = 7,
        FA13 = 8,
        SP14 = 9,
        FA14 = 10,
        SP15 = 11,
        FA15 = 12
    }

    public BasePage()
    {

    }

    /// <summary>
    /// Returns whether a string contains any numberic characters.
    /// </summary>
    public static bool HasNumeric(string input)
    {
        //Verify input
        if (string.IsNullOrEmpty(input))
            return false;

        for (int i = 0; i < input.Length; i++)
        {
            if (char.IsNumber(input[i]))
                return true; //single numeric integer makes function true
        }
        return false;
    }

    public static bool IsNumeric(string strTextEntry)
    {           
        Regex objNotWholePattern = new Regex("[^0-9]");
      
        return(!objNotWholePattern.IsMatch(strTextEntry) && (strTextEntry != ""));      
    }

    /// <summary>
    /// Returns whether a string is composed of all letter characters.
    /// </summary>
    public static bool IsLetters(string input)
    {
        //Verify input
        if (string.IsNullOrEmpty(input)) return false;

        for (int i = 0; i < input.Length; i++)
        {
            if (!char.IsLetter(input[i]))
            {
                return false;
            }
        }
        return true;
    }

    public static string CleanString(string str)
    {
        str = str.Replace("!", "");
        str = str.Replace("?", "");
        str = str.Replace("@", "");
        str = str.Replace("$", "");
        str = str.Replace("^", "");
        str = str.Replace("-", "");
        str = str.Replace("+", "");
        str = str.Replace("{", "");
        str = str.Replace("}", "");
        str = str.Replace("[", "");
        str = str.Replace("]", "");
        str = str.Replace(">", "");
        str = str.Replace("<", "");
        str = str.Replace("/", "");
        str = str.Replace("\\", "");
        str = str.Replace("~", "");
        
        str = str.Replace("*", "%");

        return (str);
    }

    public static string GetDateSiteLastUpdated(int leagueId)
    { 
    
        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();

        //set the stored procedure name
        cmd.CommandText = "oc8ball_GetDateSiteLastUpdated_ByLeagueId";
        cmd.Parameters.Clear();

        #region @LeagueID parameter
        DbParameter LeagueID = cmd.CreateParameter();
        LeagueID.ParameterName = "@LeagueID";
        LeagueID.DbType = DbType.Int32;
        LeagueID.Value = leagueId;
        cmd.Parameters.Add(LeagueID);
        #endregion

        DateTime dateA = DateTime.Now;
        string date = string.Empty;

        try
        {
            //execute the stored procedure
            dateA = GenericDataAccess.ExecuteScalarCommand_Date(cmd);
            date = String.Format("{0:f}", dateA);
        }
        catch (Exception ex)
        {
            String str = ex.Message;
        }

        return (date);
    }

}
