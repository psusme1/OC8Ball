using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;

public partial class UserControls_Roster : System.Web.UI.UserControl
{
    private int m_teamid = 1;
    
    public int TeamID
    {
        get
        {
            return (m_teamid);
        }

        set
        {
            m_teamid = value;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        dgRoster.DataSource = GetDataGridData();
        dgRoster.DataBind();
    }

    protected void dgRoster_OnItemDataBound(object sender, DataGridItemEventArgs e)
    {

        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            lblTeamName.Text = Convert.ToString(DataBinder.Eval(e.Item.DataItem, "TeamName"));
            lblLeagueName.Text = Convert.ToString(DataBinder.Eval(e.Item.DataItem, "LeagueName"));
        }

    }

    private DataTable GetDataGridData()
    {
        DataTable dt = new DataTable();

        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();

        //set the stored procedure name
        cmd.CommandText = "oc8ball_GetRoster_ByTeamId";
        cmd.Parameters.Clear();

        #region @TeamID parameter
        DbParameter TeamID = cmd.CreateParameter();
        TeamID.ParameterName = "@TeamID";
        TeamID.DbType = DbType.Int16;
        TeamID.Value = this.TeamID;
        cmd.Parameters.Add(TeamID);
        #endregion

        try
        {
            //execute the stored procedure
            dt = GenericDataAccess.ExecuteSelectCommand(cmd);
        }
        catch (Exception ex)
        {
            String str = ex.Message;
        }

        return (dt);
    }
}