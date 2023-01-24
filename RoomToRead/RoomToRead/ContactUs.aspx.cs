using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoomToRead
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add("amer.m.amora@hotmail.com");
            mail.From = new MailAddress($"{email.Value}");
            mail.Subject = $"{subject.Value}";

            mail.Body = message.Value;
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Port = 587; // 25 465
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.hotmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("amer.m.amora@hotmail.com", "***Amer114");
            smtp.Send(mail);
        }
    }
}