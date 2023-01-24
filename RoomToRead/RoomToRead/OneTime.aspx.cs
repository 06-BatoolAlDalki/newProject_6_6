using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoomToRead
{
    public partial class OneTime : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (UserCheck.Checked)
            {
                userinfo.Visible = true;
            }
            else 
            { 
                userinfo.Visible = false; 
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            Con.Open();
            string folderPath = Server.MapPath("~/Images/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            string fullPath = folderPath + Path.GetFileName(FileUpload1.FileName);
            string srcPath = "img\\" + Path.GetFileName(FileUpload1.FileName);
            if (Page.IsValid) { 
            FileUpload1.SaveAs(fullPath);
            string FullInfo = $"insert into oneTimeDonate values(@bookName,@Author,@address,@brief,@firstName,@lastName,@Phone,@Email,'{srcPath}')";
            SqlCommand newDonation = new SqlCommand(FullInfo, Con);
            newDonation.Parameters.AddWithValue("@Phone", Phone.Value);
            newDonation.Parameters.AddWithValue("@bookName", book_name.Value);
            newDonation.Parameters.AddWithValue("@Author", Author.Value);
            newDonation.Parameters.AddWithValue("@address", Address.Value);
            newDonation.Parameters.AddWithValue("@brief", Brief.Value);
            newDonation.Parameters.AddWithValue("@firstName",first_name.Value);
            newDonation.Parameters.AddWithValue("@lastName", last_name.Value);
            newDonation.Parameters.AddWithValue("@Email", Email.Value);
            string NoName = $"insert into oneTimeDonate values(@bookName,@Author,@address,@brief,'UnKnown','Unknown','NaN','Unknown','{srcPath}')";
            SqlCommand unknownDono= new SqlCommand(NoName, Con);
            unknownDono.Parameters.AddWithValue("@Phone", Phone.Value);
            unknownDono.Parameters.AddWithValue("@bookName", book_name.Value);
            unknownDono.Parameters.AddWithValue("@Author", Author.Value);
            unknownDono.Parameters.AddWithValue("@address", Address.Value);
            unknownDono.Parameters.AddWithValue("@brief", Brief.Value);
            if (UserCheck.Checked)
            {

                newDonation.ExecuteNonQuery();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                  "swal('Thank You  " +
                  "One of our team members is going to contact with you soon !', '', 'success')", true);
            }
            else { unknownDono.ExecuteNonQuery();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
               "swal('Thank You  " +
                      "One of our team members will pick it up as soon as we can !', '', 'success')", true);
            }
            }
        }
    }
}