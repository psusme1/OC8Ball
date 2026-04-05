using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.Common;
using System.Web.UI.WebControls;

public partial class UserControls_PlayerMatchHistory : System.Web.UI.UserControl
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
        dgPlayerMatchHistory.DataSource = GetDataGridData();
        dgPlayerMatchHistory.DataBind();
    }

    private DataTable GetDataGridData()
    {
        DataTable dt = new DataTable();

        //get a configured DbCommand
        DbCommand cmd = GenericDataAccess.CreateCommand();

        //set the stored procedure name
        //oc8ball_GetMatchResultsDetailed_ByShooterId 0, 0, 0, 0, 0, 0, 0
        cmd.CommandText = "oc8ball_GetMatchResultsDetailed_ByShooterId";
        cmd.Parameters.Clear();

        #region @ShooterID parameter
        DbParameter parmShooterID = cmd.CreateParameter();
        parmShooterID.ParameterName = "@ShooterId";
        parmShooterID.DbType = DbType.Int32;
        parmShooterID.Value = ShooterId;
        cmd.Parameters.Add(parmShooterID);
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

    protected void DataGridDataBound(object sender, DataGridItemEventArgs e)
    {
        e.Item.Cells[1].Visible = false;
        e.Item.Cells[0].Visible = false;
        //e.Item.Cells[2].Visible = false;
        e.Item.Cells[5].Visible = false;
        e.Item.Cells[11].Visible = false;

        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            lblShooterName.Text = e.Item.Cells[5].Text + "&nbsp;<span style='font-size: 8pt;font-weight: normal;'> (Id=" + e.Item.Cells[0].Text + ")</span>";

            if (e.Item.Cells[11].Text.ToString() == "True")
            {
                e.Item.BackColor = System.Drawing.Color.Gold;
            }
        }
    }
}