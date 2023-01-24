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
    public partial class WebForm2 : System.Web.UI.Page
    {
        
            protected void Page_Load(object sender, EventArgs e)
            {
                try
                {
                    string id = Request.QueryString["category_id"];
                    string categoryname = Request.QueryString["category_name"];
                    string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                    SqlConnection CONN = new SqlConnection(connectionString);
                    SqlCommand command = new SqlCommand($"SELECT*FROM books where category_id={id} and taken=0 and approve=1;", CONN);
                    CONN.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    Label1.Text = "<div class=containerbook>";
                    while (reader.Read())
                    {
                        Label1.Text +=
                            "<div class=\"book read\" style='box-shadow: 2px  5px  10px 10px #49796b; border-radius:12px'>" +
                            $"<div class=\"cover\" style='width:100%;margin-right:10%' ><img src='{reader[8]}'>" +
                            $"</div><div class=\"description\"><p class=\"title\">{reader[4]}<br>" +
                            $"<p class=\"parentdiv\"><span class=\"author\">author:{reader[9]}</span></p>" +
                            $"<p><a href =\"Singlebook.aspx?id={reader[0]}\" class=\"btn btn-info\" style='background-color:#49796b;color:white'>See More Details</a></p>" +
                            "</div></div>";
                    }
                    Label1.Text += "</div>";

                    CONN.Close();
                }
                catch (Exception E)
                {
                }
            }
        } } 

