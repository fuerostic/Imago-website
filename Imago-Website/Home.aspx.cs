using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Net;
using System.Net.Mail;

namespace Imago_Website
{
    public partial class Home : System.Web.UI.Page
    {
        private string mail, credential;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string from, to, pass, messageBody, subject;
            get_credential();
            MailMessage message = new MailMessage();
            to = mail;
            from = mail;
            pass = credential;
            messageBody = "Message from user \nName: "+ TextBox1.Text+"\nEmail: "+TextBox2.Text+"\nPhone:"+TextBox3.Text+"\nMessage: "+TextBox5.Text ;
            message.To.Add(to);
            message.From = new MailAddress(from);
            message.Body = messageBody;
            message.Subject = "Message from "+TextBox1.Text+" Subject: "+TextBox4.Text;
            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.EnableSsl = true;
            smtp.Port = 587;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(from, pass);
            try
            {
                smtp.Send(message);
                //SentConfirmationText.Visible = true;
                //SentConfirmationText.ForeColor = System.Drawing.Color.Green;
                //SentConfirmationText.Text = "Thanks for your message.";
                System.Diagnostics.Debug.WriteLine("Message sent successfully");
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thanks for your message.')", true);
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Message not sent')", true);
            }
        }

        protected void get_credential()
        {
            
            string[] lines = System.IO.File.ReadAllLines(@"C:\Users\EON\Desktop\creds.txt");

            mail = lines[0];
            credential = lines[1];
            

        }
    }
}