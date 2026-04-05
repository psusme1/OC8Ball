using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Fall2014 : BasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            lblLastUpdated.Text = SetDateLastUpdated();
            
        }
    }
    
    protected string SetDateLastUpdated()
    {
        return(GetDateSiteLastUpdated((int)(Leagues.FA14)));
    }

}