using System;
using System.Data;
using System.Data.Common;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControls_TeamSchedule : System.Web.UI.UserControl
{
    private int m_leagueid = 1;
    public int LeagueID
    {
        get
        {
            return (m_leagueid);
        }

        set
        {
            m_leagueid = value;
        }
    }

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

    private enum Cells
    {
        Week = 0,
        Date = 1,
        AwayTeam = 2,
        APoints = 5,
        HomeTeam = 4,
        HPoints = 10,
        ScoreSheet = 6
    };

    protected void Page_Load(object sender, EventArgs e)
    {
        dgSchedule.DataSource = GetDataGridData(this.LeagueID, this.TeamID);
        dgSchedule.DataBind();
    }

    protected void dgSchedule_OnItemDataBound(Object sender, DataGridItemEventArgs e)
    {
        
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            //HyperLink hypl = (HyperLink)e.Item.Cells[(int)e.Item.Cells.ScoreSheet].FindControl("hyplScoreSheet");
            HyperLink hypl = (HyperLink)e.Item.Cells[(int)Cells.ScoreSheet].FindControl("hyplScoreSheet");
            hypl.NavigateUrl = "http://scoresheets.oc8ball.com/" + ((System.Data.DataRowView)(e.Item.DataItem)).Row.ItemArray[(int)Cells.ScoreSheet];
            hypl.Target = "New";

            string Apoints = (((System.Data.DataRowView)(e.Item.DataItem)).Row.ItemArray[3]).ToString();
            string Hpoints = (((System.Data.DataRowView)(e.Item.DataItem)).Row.ItemArray[5]).ToString();

            if(Apoints == "0" && Hpoints == "0")
            {
                e.Item.Cells[(int)Cells.APoints].Text = "--";
                e.Item.Cells[(int)Cells.HPoints].Text = "--";
            }

            
        }

    }

    private DataTable GetDataGridData(Int32 leagueId, Int32 teamId)
    {
        DataTable dt = new DataTable();

        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();

        //set the stored procedure name
        cmd.CommandText = "oc8ball_GetSchedule_ByLeagueIdTeamId";
        cmd.Parameters.Clear();

        #region @LeagueID parameter
        DbParameter LeagueID = cmd.CreateParameter();
        LeagueID.ParameterName = "@LeagueID";
        LeagueID.DbType = DbType.Int32;
        LeagueID.Value = leagueId;
        cmd.Parameters.Add(LeagueID);
        #endregion

        #region @TeamId parameter
        DbParameter TeamID = cmd.CreateParameter();
        TeamID.ParameterName = "@TeamId";
        TeamID.DbType = DbType.Int32;
        TeamID.Value = teamId;
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