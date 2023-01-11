using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoomToRead
{
    public partial class qq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            SqlConnection con2 = null;




            if (Path.GetFileName(FileUpload1.FileName) != null && Path.GetFileName(FileUpload1.FileName) != "")
            {
                return;
            }
        }
        public void uploadToDatabase(string srcP)
        {

            SqlConnection con = null;
            try
            {
                // Creating Connection  
                con = new SqlConnection("data source =DESKTOP-V50HPE1\\SQLEXPRESS; database=RoomToRead; integrated security=SSPI");
                // writing sql query  

                DateTime today = DateTime.Now;
                DateTime.Now.ToShortDateString();
                DateTime dateTime = DateTime.Now.Date;

                SqlCommand cm = new SqlCommand($"insert into books  ( book_name, author, Book_description,  approve,taken,Book_image ,user_id,donating_date  )values('{TextBox1.Text}', '{TextBox2.Text}',  '{txt.Value}'   , '0' , '0',  'img\\{Path.GetFileName(FileUpload1.FileName)}','{Session["userId"]}' , '{DateTime.Now.ToShortDateString()}' )", con);
                // Opening Connection  
                con.Open();
                // Executing the SQL query  
                cm.ExecuteNonQuery();
                // Displaying a message  
                Console.WriteLine("Record Inserted Successfully");
                Label1.Text = "Record Inserted Successfully";
            }
            catch (Exception A)
            {
                Label1.Attributes.Add("style", "display:inline-block");
                //Console.WriteLine("OOPs, something went wrong." + A);
                Label1.Text = "OOPs, something went wrong." + A;
            }
            // Closing the connection  
            finally
            {
                con.Close();
            }

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {




            try
            {

                if (Path.GetFileName(FileUpload1.FileName) != null && Path.GetFileName(FileUpload1.FileName) != "")
                {
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

                    FileUpload1.SaveAs(fullPath);


                    uploadToDatabase(srcPath);
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
                   // Thread.Sleep(5000);
                    //Response.Redirect("UserProfile.aspx");





                }
            }
            catch (SqlException q)
            {
                Response.Write(q.Message);
                Label1.Text = "OOPs, something went wrong." + q;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("user");
        }
    }
}