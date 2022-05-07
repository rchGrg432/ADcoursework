using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CWPractice
{
    public partial class ActorsDVDs : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSearchDvd_Click(object sender, EventArgs e)
        {
            GridViewListDvd.DataSourceID = "";
            //GridView1.AllowSorting = true;
            GridViewListDvd.DataSource = SqlDataSourceDefault;
            GridViewListDvd.DataBind();
        }

        protected void DropDownActorSurname_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewListDvd.DataSourceID = "";
            if (DropDownActorSurname.SelectedIndex != 0)
            {
                //Get pass records
                GridViewListDvd.DataSource = SqlDataSourceFindDvd;
                GridViewListDvd.DataBind();
            }
        }
    }
}