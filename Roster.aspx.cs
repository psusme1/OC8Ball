using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TestRoster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ucRoster.TeamID = Convert.ToInt16(Request.QueryString["teamID"]);

        ucSchedule.LeagueID = Convert.ToInt16(Request.QueryString["leagueID"]);
        ucSchedule.TeamID = Convert.ToInt16(Request.QueryString["teamID"]);
    }
}