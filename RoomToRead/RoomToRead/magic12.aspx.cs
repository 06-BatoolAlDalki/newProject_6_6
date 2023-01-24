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
    public partial class magic12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                string id = Request.QueryString["id"];

             

                string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection Con = new SqlConnection(connectionString);
                Con.Open();
                string query = $"Delete from category where category_id='{id}'";
                SqlCommand rolecommand = new SqlCommand(query, Con);
                rolecommand.ExecuteNonQuery();
                Response.Redirect("Admin_category.aspx");
            }
            catch (Exception ex)
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "key", "ShowMessage()", true);
               
            }

        }
    }
}