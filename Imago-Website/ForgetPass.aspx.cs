using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.IO;
using System.Text;
using Microsoft.AspNetCore.Cryptography.KeyDerivation;

namespace Imago_Website
{
    public partial class ForgetPass : System.Web.UI.Page
    {
        private string mail, credential;
        public static string randomCode;
        string to;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void SendMailButton_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("Clicked this sendmail button");
            string from, pass, messageBody;

            get_credential();
            Random rand = new Random();
            randomCode = (rand.Next(999999)).ToString();
            MailMessage message = new MailMessage();
            to = (verifyMail.Text).ToString();
            from = mail;
            pass = credential;
            messageBody = "Hello, your reset code is " + randomCode;
            message.To.Add(to);
            message.From = new MailAddress(from);
            message.Body = messageBody;
            message.Subject = "Password Reset Request";
            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.EnableSsl = true;
            smtp.Port = 587;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(from, pass);
            try
            {
                smtp.Send(message);
                sentText.Visible = true;
                sentText.ForeColor = System.Drawing.Color.Green;
                sentText.Text = "Code sent successfully";
                System.Diagnostics.Debug.WriteLine("Code sent successfully");
            }
            catch(Exception ex)
            {
                sentText.ForeColor = System.Drawing.Color.Red;
                sentText.Text = ex.Message;
                System.Diagnostics.Debug.WriteLine(ex.Message);
            }
        }
        protected void VerifyButton_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("Clicked this verify button");
            if (randomCode == (verifyCode.Text).ToString())
            {
                to = verifyMail.Text;
                codeVerifyText.Visible = false;
                sentText.Visible = false;
                verifyMail.Visible = false;
                verifyCode.Visible = false;
                SendMailButton.Visible = false;
                VerifyButton.Visible = false;

                ResPass1.Visible = true;
                ResPass2.Visible = true;
                ResetPassButton.Visible = true;



            }
            else
            {
                codeVerifyText.Visible = true;
                codeVerifyText.ForeColor = System.Drawing.Color.Red;
                codeVerifyText.Text= "wrong code";
            }
        }

        protected void ResetPassButton_Click(object sender, EventArgs e)
        {
            if(ResPass1.Text == ResPass2.Text)
            {
                string hashed = EncryptString("b14ca5898a4e4133bbce2ea2315a1916", ResPass2.Text);
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ImagoDatabase.mdf;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("update [Table] set Password = '" + hashed + "' where Email_Id = '" + verifyMail.Text + "'",con);

                //con.Open();
                //int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                //con.Close();
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                resetText.Visible = true;
                resetText.ForeColor = System.Drawing.Color.Green;
                resetText.Text = "Reset Successfully";
                System.Diagnostics.Debug.WriteLine(hashed);
                System.Diagnostics.Debug.WriteLine(verifyMail.Text);
                System.Threading.Thread.Sleep(3000);
                Response.Redirect("Login.aspx");

            }
            else
            {
                resetText.ForeColor = System.Drawing.Color.Red;
                resetText.Text = "Passwords didn't match";
            }
        }

        public static string EncryptString(string key, string plainText)
        {
            byte[] iv = new byte[16];
            byte[] array;

            using (Aes aes = Aes.Create())
            {
                aes.Key = Encoding.UTF8.GetBytes(key);
                aes.IV = iv;

                ICryptoTransform encryptor = aes.CreateEncryptor(aes.Key, aes.IV);

                using (MemoryStream memoryStream = new MemoryStream())
                {
                    using (CryptoStream cryptoStream = new CryptoStream((Stream)memoryStream, encryptor, CryptoStreamMode.Write))
                    {
                        using (StreamWriter streamWriter = new StreamWriter((Stream)cryptoStream))
                        {
                            streamWriter.Write(plainText);
                        }

                        array = memoryStream.ToArray();
                    }
                }
            }

            return Convert.ToBase64String(array);
        }


        protected void get_credential()
        {

            string[] lines = System.IO.File.ReadAllLines(@"C:\Users\EON\Desktop\creds.txt");

            mail = lines[0];
            credential = lines[1];


        }


    }
}