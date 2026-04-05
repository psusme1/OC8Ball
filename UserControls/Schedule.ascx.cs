using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;

public partial class Schedule : System.Web.UI.UserControl
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

    private bool m_showPoints = true;
    public bool ShowPoints
    {
        get
        {
            return (m_showPoints);
        }

        set
        {
            m_showPoints = value;
        }
    }

    private bool m_showCurrentWeekPDFs = true;
    public bool ShowCurrentWeekPDFs
    {
        get
        {
            return (m_showCurrentWeekPDFs);
        }

        set
        {
            m_showCurrentWeekPDFs = value;
        }
    }

    private int m_totalNumberWeeks = 0;
    private int m_weeksCompleted = 0;
    private int m_datalistItemCount = 0;
    private int m_currWeekCount = 0;

    private enum Cells
    {
        Date = 0,
        HomeTeam = 1,
        HomePoints = 2,
        AwayTeam = 3,
        AwayPoints = 4,
        ScoreSheet = 5
    };

    protected void Page_Load(object sender, EventArgs e)
    {
        GetTotalWeeksForSession();
        GetWeeksCompletedForSession();
        dlSchedule.DataSource = GetDataListData(this.LeagueID);
        dlSchedule.DataBind();
    }

    protected void dlSchedule_OnItemDataBound(Object sender, DataListItemEventArgs e) 
    {
     

        if (e.Item.ItemType == ListItemType.Item ||
            e.Item.ItemType == ListItemType.AlternatingItem)
        {
            m_datalistItemCount++;

            // Retrieve the Label control in the current DataListItem.
            Label lblWeekNumber = (Label)e.Item.FindControl("lblWeekNum");
            m_currWeekCount = Convert.ToInt32(lblWeekNumber.Text);
            Image imgWeekNumber = (Image)e.Item.FindControl("imgWeekNum");
            imgWeekNumber.ImageUrl = "~/Images/balls/" + m_currWeekCount.ToString() + "ball.gif";
            
            Label lblDate = (Label)e.Item.FindControl("lblDate");
            lblDate.Text = GetDateForWeekNumber(imgWeekNumber);
            
            DataGrid dg = (DataGrid)e.Item.FindControl("dgSchedule");
            dg.DataSource = GetDataGridData(this.LeagueID, m_currWeekCount);
            dg.DataBind();

        }
    }

    protected void dgSchedule_OnItemDataBound(Object sender, DataGridItemEventArgs e)
    {
   
        if (m_currWeekCount > m_weeksCompleted || !ShowPoints)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {

                e.Item.Cells[(int)Cells.AwayPoints].Visible = false;
                e.Item.Cells[(int)Cells.HomePoints].Visible = false;
                e.Item.Cells[(int)Cells.ScoreSheet].Visible = false;
            }
            else if (e.Item.ItemType == ListItemType.Header)
            {
                e.Item.Cells[(int)Cells.AwayPoints].Visible = false;
                e.Item.Cells[(int)Cells.HomePoints].Visible = false;
                e.Item.Cells[(int)Cells.ScoreSheet].Visible = false;
            }
        }

        if (m_currWeekCount == m_weeksCompleted)
        {
            e.Item.Cells[(int)Cells.ScoreSheet].Visible = ShowCurrentWeekPDFs;
        }

        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
                HyperLink hypl = (HyperLink)e.Item.Cells[(int)Cells.ScoreSheet].FindControl("hyplScoreSheet");
                hypl.NavigateUrl = "http://scoresheets.oc8ball.com/" + ((System.Data.DataRowView)(e.Item.DataItem)).Row.ItemArray[10];
                hypl.Target = "New";

                if (((System.Data.DataRowView)(e.Item.DataItem)).Row.ItemArray[6].ToString() == "BYE Week" || ((System.Data.DataRowView)(e.Item.DataItem)).Row.ItemArray[3].ToString() == "BYE Week")
                {
                    e.Item.Cells[(int)Cells.ScoreSheet].Text = string.Empty;
                }
            
        }

        HyperLink hyplA = (HyperLink)e.Item.FindControl("hyplTeamA");
        HyperLink hyplH = (HyperLink)e.Item.FindControl("hyplTeamH");
        if (e.Item.ItemType == ListItemType.Item)
        {
            hyplA.CssClass = "dgItem";
            hyplH.CssClass = "dgItem";
        }

        if (e.Item.ItemType == ListItemType.AlternatingItem)
        {
            hyplA.CssClass = "dgAltItem";
            hyplH.CssClass = "dgAltItem";
        }

    }

    private DataTable GetDataGridData(Int32 leagueId, Int32 weekNum)
    {
        DataTable dt = new DataTable();

        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();

        //set the stored procedure name
        cmd.CommandText = "oc8ball_GetSchedule";
        cmd.Parameters.Clear();

        #region @LeagueID parameter
        DbParameter LeagueID = cmd.CreateParameter();
        LeagueID.ParameterName = "@LeagueID";
        LeagueID.DbType = DbType.Int32;
        LeagueID.Value = leagueId;
        cmd.Parameters.Add(LeagueID);
        #endregion

        #region @WeekNumber parameter
        DbParameter WeekNumber = cmd.CreateParameter();
        WeekNumber.ParameterName = "@WeekNumber";
        WeekNumber.DbType = DbType.Int32;
        WeekNumber.Value = weekNum;
        cmd.Parameters.Add(WeekNumber);
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

    private DataTable GetDataListData(Int32 leagueId)
    {
        DataTable dt = new DataTable();

        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();

        //set the stored procedure name
        cmd.CommandText = "oc8ball_GetNumberWeeks";
        cmd.Parameters.Clear();

        #region @LeagueID parameter
        DbParameter LeagueID = cmd.CreateParameter();
        LeagueID.ParameterName = "@LeagueID";
        LeagueID.DbType = DbType.Int32;
        LeagueID.Value = leagueId;
        cmd.Parameters.Add(LeagueID);
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

    private void GetTotalWeeksForSession()
    {
        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();

        //set the stored procedure name
        cmd.CommandText = "oc8ball_GetTotalWeeks_ByLeagueId";
        cmd.Parameters.Clear();

        #region @LeagueID parameter
        DbParameter LeagueID = cmd.CreateParameter();
        LeagueID.ParameterName = "@LeagueID";
        LeagueID.DbType = DbType.Int32;
        LeagueID.Value = this.LeagueID;
        cmd.Parameters.Add(LeagueID);
        #endregion

        try
        {
            //execute the stored procedure
            m_totalNumberWeeks = GenericDataAccess.ExecuteScalarCommand_Int(cmd);
        }
        catch (Exception ex)
        {
            String str = ex.Message;
        }
    }

    private void GetWeeksCompletedForSession()
    {
        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();

        //set the stored procedure name
        cmd.CommandText = "oc8ball_GetWeeksCompleted_ByLeagueId";
        cmd.Parameters.Clear();

        #region @LeagueID parameter
        DbParameter LeagueID = cmd.CreateParameter();
        LeagueID.ParameterName = "@LeagueID";
        LeagueID.DbType = DbType.Int32;
        LeagueID.Value = this.LeagueID;
        cmd.Parameters.Add(LeagueID);
        #endregion

        try
        {
            //execute the stored procedure
            m_weeksCompleted = GenericDataAccess.ExecuteScalarCommand_Int(cmd);
        }
        catch (Exception ex)
        {
            String str = ex.Message;
        }
    }

    private String GetDateForWeekNumber(Image img)
    {
        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();

        //set the stored procedure name
        cmd.CommandText = "oc8ball_GetDate_ByWeekNumber";
        cmd.Parameters.Clear();

        #region @LeagueID parameter
        DbParameter LeagueID = cmd.CreateParameter();
        LeagueID.ParameterName = "@LeagueID";
        LeagueID.DbType = DbType.Int32;
        LeagueID.Value = this.LeagueID;
        cmd.Parameters.Add(LeagueID);
        #endregion

        #region @WeekNumber parameter
        DbParameter WeekNumber = cmd.CreateParameter();
        WeekNumber.ParameterName = "@WeekNumber";
        WeekNumber.DbType = DbType.Int32;
        WeekNumber.Value = m_currWeekCount;
        cmd.Parameters.Add(WeekNumber);
        #endregion

        #region @DateOfWeek parameter
        DbParameter DateOfWeek = cmd.CreateParameter();
        DateOfWeek.ParameterName = "@DateOfWeek";
        DateOfWeek.DbType = DbType.DateTime;
        DateOfWeek.Direction = ParameterDirection.Output;
        cmd.Parameters.Add(DateOfWeek);
        #endregion

        #region @IsPlayoff
        DbParameter IsPlayoff = cmd.CreateParameter();
        IsPlayoff.ParameterName = "@IsPlayoff";
        IsPlayoff.DbType = DbType.Boolean;
        IsPlayoff.Direction = ParameterDirection.Output;
        cmd.Parameters.Add(IsPlayoff);
        #endregion

        string date = string.Empty;
        try
        {
            //execute the stored procedure
            int results = GenericDataAccess.ExecuteNonQuery_Int32(cmd, false);
            date = String.Format("{0:M/d/yyyy}", DateOfWeek.Value);

            if (Convert.ToBoolean(IsPlayoff.Value))
            {
                img.ImageUrl = "~/Images/balls/8ball.gif";
                date += "<span style='font-size: 9pt; font-weight: normal;' >&nbsp;&nbsp;(playoffs)</span>";
            }
        }
        catch (Exception ex)
        {
            String str = ex.Message;
        }


        return (date);
    }

}