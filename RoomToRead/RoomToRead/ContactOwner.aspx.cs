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
    public partial class ContactOwner : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int book_id= Convert.ToInt32(Request.QueryString["id"]);
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection CONN = new SqlConnection(connectionString);
            SqlCommand readOwner = 
           new SqlCommand($"select AspNetUsers.firstname, AspNetUsers.lastname,city.city_name,AspNetUsers.PhoneNumber,AspNetUsers.Email,AspNetUsers.user_image from AspNetUsers " +
           $"inner join city on aspnetusers.city_id=city.city_id inner join books on AspNetUsers.Id=books.user_id where book_id={book_id}",CONN);
            CONN.Open();
            SqlDataReader ownerInfo=readOwner.ExecuteReader();
            while (ownerInfo.Read()) 
            {
                ownerName.InnerText = ownerInfo[0].ToString() + ownerInfo[1].ToString();
                Location.InnerText= ownerInfo[2].ToString();
                Phone.InnerText= ownerInfo[3].ToString();
                email.InnerText= ownerInfo[4].ToString();
                ownerImage.Src= ownerInfo[5].ToString();
            }
            CONN.Close();
            CONN.Open();
            SqlCommand bookDetails =
           new SqlCommand($"select book_Image, book_name from books where book_id={book_id}", CONN);
            SqlDataReader bookinfo = bookDetails.ExecuteReader();
            while (bookinfo.Read())
            {
                bookImage.Src = bookinfo[0].ToString();
                BookTitle.InnerText= bookinfo[1].ToString();
            }
            CONN.Close();

        }
    }
}