using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoomToRead
{
    public partial class AdminOneTimeDono : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Session.Abandon();
            Response.Redirect("LoginPage.aspx");
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
           
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {


        
              
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successaler();", true);
           

        }
    }
}