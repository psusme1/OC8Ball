using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.Common;

public partial class UserControls_PlayerCumulativeStats : System.Web.UI.UserControl
{
    private int m_shooterid = 0;
    public int ShooterId
    {
        get
        {
            return (m_shooterid);
        }

        set
        {
            m_shooterid = value;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LoadData();
        }
    }

    private DataTable GetDataGridData()
    {
        DataTable dt = new DataTable();

        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();

        //set the stored procedure name
        //oc8ball_GetMatchResultsDetailed_ByShooterId 0, 0, 0, 0, 0, 0, 0
        cmd.CommandText = "oc8ball_GetPlayerStatistic_ByShooterId";
        cmd.Parameters.Clear();
        
        #region @ShooterID parameter
        if (ShooterId != 0)
        {
            DbParameter parmShooterID = cmd.CreateParameter();
            parmShooterID.ParameterName = "@ShooterId";
            parmShooterID.DbType = DbType.Int32;
            parmShooterID.Value = ShooterId;
            cmd.Parameters.Add(parmShooterID);
        }
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

    private DataTable GetDataGridDataPlayoffs()
    {
        DataTable dt = new DataTable();

        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();

        //set the stored procedure name
        //oc8ball_GetMatchResultsDetailed_ByShooterId 0, 0, 0, 0, 0, 0, 0
        cmd.CommandText = "oc8ball_GetPlayerStatistic_Playoffs_ByShooterId";
        cmd.Parameters.Clear();

        #region @ShooterID parameter
        if (ShooterId != 0)
        {
            DbParameter parmShooterID = cmd.CreateParameter();
            parmShooterID.ParameterName = "@ShooterId";
            parmShooterID.DbType = DbType.Int32;
            parmShooterID.Value = ShooterId;
            cmd.Parameters.Add(parmShooterID);
        }
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

    private DataTable GetDataGridDataReg()
    {
        DataTable dt = new DataTable();

        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();

        //set the stored procedure name
        //oc8ball_GetMatchResultsDetailed_ByShooterId 0, 0, 0, 0, 0, 0, 0
        cmd.CommandText = "oc8ball_GetPlayerStatistic_RegularSeason_ByShooterId";
        cmd.Parameters.Clear();

        #region @ShooterID parameter
        if (ShooterId != 0)
        {
            DbParameter parmShooterID = cmd.CreateParameter();
            parmShooterID.ParameterName = "@ShooterId";
            parmShooterID.DbType = DbType.Int32;
            parmShooterID.Value = ShooterId;
            cmd.Parameters.Add(parmShooterID);
        }
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

    private DataTable GetDataGridDataPlayerRatings()
    {
        DataTable dt = new DataTable();

        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();
        cmd.CommandText = "oc8ball_GetPlayerStatistic_ByRating_ByShooterId";
        cmd.Parameters.Clear();

        #region @ShooterID parameter
        if (ShooterId != 0)
        {
            DbParameter parmShooterID = cmd.CreateParameter();
            parmShooterID.ParameterName = "@ShooterId";
            parmShooterID.DbType = DbType.Int32;
            parmShooterID.Value = ShooterId;
            cmd.Parameters.Add(parmShooterID);
        }
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

    private DataTable GetDataGridPlayerStatsByLeague()
    {
        DataTable dt = new DataTable();

        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();
        cmd.CommandText = "oc8ball_GetPlayerStatistic_ByLeagueId_ByShooterId";
        cmd.Parameters.Clear();

        #region @ShooterID parameter
        if (ShooterId != 0)
        {
            DbParameter parmShooterID = cmd.CreateParameter();
            parmShooterID.ParameterName = "@ShooterId";
            parmShooterID.DbType = DbType.Int32;
            parmShooterID.Value = ShooterId;
            cmd.Parameters.Add(parmShooterID);
        }
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

    private DataTable GetDataGridPlayerStatsVsOthers()
    {
        DataTable dt = new DataTable();

        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();
        cmd.CommandText = "oc8ball_GetPlayerStatistic_ByOppRating_ByShooterId";
        cmd.Parameters.Clear();

        #region @ShooterID parameter
        if (ShooterId != 0)
        {
            DbParameter parmShooterID = cmd.CreateParameter();
            parmShooterID.ParameterName = "@ShooterId";
            parmShooterID.DbType = DbType.Int32;
            parmShooterID.Value = ShooterId;
            cmd.Parameters.Add(parmShooterID);
        }
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

    private void LoadPlayersDDL()
    {

        DataTable dt = GetPlayers();

        foreach (DataRow dr in dt.Rows)
        {
            ddlPlayers.Items.Add(new ListItem(dr["Name"].ToString(), dr["ID"].ToString()));
        }

        ddlPlayers.SelectedValue = ShooterId.ToString();
    }

    private DataTable GetPlayers()
    {

        DataTable dt = new DataTable();

        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();

        //set the stored procedure name
        //oc8ball_GetMatchResultsDetailed_ByShooterId 0, 0, 0, 0, 0, 0, 0
        cmd.CommandText = "oc8ball_GetActivePlayers";
        cmd.Parameters.Clear();

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

    protected void OnSelectedIndexChanged_ddlPlayers(object sender, EventArgs e)
    {
        Response.Redirect("~/Statistics/PlayerMatchHistory.aspx?id=" + ddlPlayers.SelectedValue.ToString());
    }

    protected void LoadData()
    {
        dgPlayerMatchHistory.DataSource = GetDataGridData();
        dgPlayerMatchHistory.DataBind();

        pnlOther.Visible = false;
        if (ShooterId != 0)
        {
            pnlOther.Visible = true;
            dgPlayerMatchHistoryPoffs.DataSource = GetDataGridDataPlayoffs();
            dgPlayerMatchHistoryPoffs.DataBind();

            dgPlayerMatchHistoryReg.DataSource = GetDataGridDataReg();
            dgPlayerMatchHistoryReg.DataBind();

            dgPlayerRatingStats.DataSource = GetDataGridDataPlayerRatings();
            dgPlayerRatingStats.DataBind();

            dgPlayerByLeagueStats.DataSource = GetDataGridPlayerStatsByLeague();
            dgPlayerByLeagueStats.DataBind();

            dgPlayerVsOtherRatings.DataSource = GetDataGridPlayerStatsVsOthers();
            dgPlayerVsOtherRatings.DataBind();

            LoadPlayersDDL();
        }
    }

}