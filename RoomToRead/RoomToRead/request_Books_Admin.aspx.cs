using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoomToRead
{
    public partial class request_Books_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
           // string status = DropDownList1.SelectedValue;

         

        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            TableCell cell = GridView2.Rows[e.RowIndex].Cells[4];
            TableCell cell1 = GridView2.Rows[e.RowIndex].Cells[0];
            Session["name"] = cell.Text;
            string path = Server.MapPath($"img/{cell.Text}");
            FileUpload fileUpload = GridView2.Rows[e.RowIndex].FindControl("FileUpload1") as FileUpload;
            if (fileUpload.HasFile)
            {
                fileUpload.SaveAs(System.IO.Path.Combine(Server.MapPath("img"), fileUpload.FileName));
               SqlDataSource1.UpdateParameters["Book_image"].DefaultValue = "img\\" + fileUpload.FileName;
              //  SqlDataSource1.UpdateParameters["Book_image"].DefaultValue = "img\\" + "b.png";
                SqlDataSource1.Update();
            }
            else
            {
                Label filename = GridView2.Rows[e.RowIndex].FindControl("Label3") as Label;

                SqlDataSource1.UpdateParameters["Book_image"].DefaultValue = filename.Text;

                SqlDataSource1.Update();
            }
        }

        protected void GridView2_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successale();", true);
        }


        protected void GridView2_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            string name1 = Session["name"].ToString();
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successaler();", true);
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //TableCell cell = GridView1.Rows[e.RowIndex].Cells[2];
            //TableCell cell1 = GridView1.Rows[e.RowIndex].Cells[0];
            //Session["name"] = cell1.Text;
            //string path = Server.MapPath($"img/{cell.Text}");
            //File.Delete(path);

            TableCell cell = GridView2.Rows[e.RowIndex].Cells[3];
            TableCell cell1 = GridView2.Rows[e.RowIndex].Cells[0];
            Session["name"] = cell1.Text;
            string path = Server.MapPath($"img/{cell.Text}");
            //File.Delete(path);
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            GridView3.Visible = true;
            GridView2.Visible = false;
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LoginPage.aspx");

        }

        protected void GridView3_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successale();", true);
        }

        protected void GridView3_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            TableCell cell = GridView3.Rows[e.RowIndex].Cells[4];
            TableCell cell1 = GridView3.Rows[e.RowIndex].Cells[0];
            Session["name"] = cell.Text;
            string path = Server.MapPath($"img/{cell.Text}");
            FileUpload fileUpload = GridView3.Rows[e.RowIndex].FindControl("FileUpload2") as FileUpload;
            if (fileUpload.HasFile)
            {
                fileUpload.SaveAs(System.IO.Path.Combine(Server.MapPath("img"), fileUpload.FileName));
                SqlDataSource2.UpdateParameters["Book_image"].DefaultValue = "img\\" + fileUpload.FileName;
                //  SqlDataSource1.UpdateParameters["Book_image"].DefaultValue = "img\\" + "b.png";
                SqlDataSource2.Update();
            }
            else
            {
                Label filename = GridView3.Rows[e.RowIndex].FindControl("Label4") as Label;

                SqlDataSource2.UpdateParameters["Book_image"].DefaultValue = filename.Text;

                SqlDataSource2.Update();
            }
        }

        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //TableCell cell = GridView1.Rows[e.RowIndex].Cells[2];
            //TableCell cell1 = GridView1.Rows[e.RowIndex].Cells[0];
            //Session["name"] = cell1.Text;
            //string path = Server.MapPath($"img/{cell.Text}");
            //File.Delete(path);

            TableCell cell = GridView3.Rows[e.RowIndex].Cells[3];
            TableCell cell1 = GridView3.Rows[e.RowIndex].Cells[0];
            Session["name"] = cell1.Text;
            string path = Server.MapPath($"img/{cell.Text}");
            //File.Delete(path);
        }

        protected void GridView3_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            string name1 = Session["name"].ToString();
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successaler();", true);
        }


      

    }
}