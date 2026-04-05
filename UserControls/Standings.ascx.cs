using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;

public partial class UserControls_Standings : System.Web.UI.UserControl
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

    private Unit m_gridwidth = 265;
    public Unit GridWidth
    {
        get
        {
            return (m_gridwidth);
        }

        set
        {
            m_gridwidth = value;
        }
    }

    private Boolean m_pointsVisible = true;
    public Boolean PointsVisible
    {
        get
        {
            return (m_pointsVisible);
        }

        set
        {
            m_pointsVisible = value;
        }
    }

    private Boolean m_pointsbackVisible = true;
    public Boolean PointsBackVisible
    {
        get
        {
            return (m_pointsbackVisible);
        }

        set
        {
            m_pointsbackVisible = value;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
            dgStandings.DataSource = GetDataGridData();
            dgStandings.DataBind();
            dgStandings.Width = GridWidth;
            dgStandings.Columns[2].Visible = PointsVisible;
            dgStandings.Columns[3].Visible = PointsBackVisible;
            if (!PointsVisible)
            {
                lblTitle.Text = "Teams";
            }
            else
            {
                lblTitle.Text = "Standings";
            }
    }

    protected void dgStandings_OnItemDataBound(object sender, DataGridItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            HyperLink hypl = (HyperLink)e.Item.FindControl("hyplTeam");

            if (e.Item.ItemType == ListItemType.Item)
            {
                hypl.CssClass = "dgItem";
            }

            if (e.Item.ItemType == ListItemType.AlternatingItem)
            {
                hypl.CssClass = "dgAltItem";
            }
        }
    }

    private DataTable GetDataGridData()
    {
        DataTable dt = new DataTable();

        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();

        //set the stored procedure name
        cmd.CommandText = "oc8ball_GetStandings_ByLeagueId";
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
            dt = GenericDataAccess.ExecuteSelectCommand(cmd);
        }
        catch (Exception ex)
        {
            String str = ex.Message;
        }

        return (dt);
    }

}