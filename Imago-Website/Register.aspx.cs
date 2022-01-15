using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;
using Microsoft.AspNetCore.Cryptography.KeyDerivation;
using System.IO;
using System.Text;
using System.Net;
using System.Net.Mail;

namespace Imago_Website
{
    public partial class Register : System.Web.UI.Page
    {
        protected string mail, credential;
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ImagoDatabase.mdf;Integrated Security=True");
        public static string randomCode,to;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            
            string hashed = EncryptString("b14ca5898a4e4133bbce2ea2315a1916", registerPass.Text);

            string ins = "Insert into [Table](Email_Id,Password) values ('"+ registerMail.Text+"', '"+hashed+"')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            startVerification();


            
        }

        private void startVerification()
        {
            get_credential();
            RegisterHeading.Visible = false;
            WelcomeText.Visible = false;
            registerMail.Visible = false;
            registerPass.Visible = false;
            rememberRegister.Visible = false;
            RegisterButton.Visible = false;
            loginPrompt.Visible = false;

            VerifyHeading.Visible = true;
            RegVerifyCode.Visible = true;
            RegVerifyButton.Visible = true;

            System.Diagnostics.Debug.WriteLine("Clicked this verify mail button");
            string from, pass, messageBody;

            Random rand = new Random();
            randomCode = (rand.Next(999999)).ToString();
            MailMessage message = new MailMessage();
            to = (registerMail.Text).ToString();
            from = mail;
            pass = credential;
            messageBody = "Hello, your email verification code is " + randomCode;
            message.To.Add(to);
            message.From = new MailAddress(from);
            message.Body = messageBody;
            message.Subject = "Email Verification";
            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.EnableSsl = true;
            smtp.Port = 587;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(from, pass);
            try
            {
                smtp.Send(message);
                RegSentCode.Visible = true;
                RegSentCode.ForeColor = System.Drawing.Color.Green;
                RegSentCode.Text = "Code sent successfully";
                System.Diagnostics.Debug.WriteLine("Code sent successfully");
            }
            catch (Exception ex)
            {
                RegCodeVerifyText.Visible = true;
                RegCodeVerifyText.ForeColor = System.Drawing.Color.Red;
                RegCodeVerifyText.Text = ex.Message;
                System.Diagnostics.Debug.WriteLine(ex.Message);
            }
        }

        private void startSession(string s)
        {
            MailAddress addr = new MailAddress(s);
            string username = addr.User;
            string domain = addr.Host;
            Session["username"] = username;
            Session["mail"] = registerMail.Text;
            if (rememberRegister.Checked)
            {
                HttpCookie cookie = new HttpCookie(registerMail.Text);
                cookie["username"] = username;
                cookie.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(cookie);

            }
            else
            {
                HttpCookie cookie = new HttpCookie(registerMail.Text);
                cookie["username"] = username;
                Response.Cookies.Add(cookie);
            }
            Response.Redirect("Home.aspx");
            Session.RemoveAll();
        }

        protected void RegVerifyButton_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("Clicked this verify button");
            if (randomCode == (RegVerifyCode.Text).ToString())
            {
                startSession(registerMail.Text);
            }
            else
            {
                RegCodeVerifyText.Visible = true;
                RegCodeVerifyText.ForeColor = System.Drawing.Color.Red;
                RegCodeVerifyText.Text = "wrong code";
            }
        }


        //private string hashing(string password)
        //{
        //    // generate a 128-bit salt using a cryptographically strong random sequence of nonzero values
        //    byte[] salt = new byte[128 / 8];
        //    using (var rngCsp = new RNGCryptoServiceProvider())
        //    {
        //        rngCsp.GetNonZeroBytes(salt);
        //    }
        //    Console.WriteLine($"Salt: {Convert.ToBase64String(salt)}");

        //    // derive a 256-bit subkey (use HMACSHA256 with 100,000 iterations)
        //    string hashed = Convert.ToBase64String(KeyDerivation.Pbkdf2(
        //        password: password,
        //        salt: salt,
        //        prf: KeyDerivationPrf.HMACSHA256,
        //        iterationCount: 100000,
        //        numBytesRequested: 256 / 8));
        //    //Console.WriteLine($"Hashed: {hashed}");
        //    return hashed;
        //}

        protected void get_credential()
        {

            string[] lines = System.IO.File.ReadAllLines(@"C:\Users\EON\Desktop\creds.txt");

            mail = lines[0];
            credential = lines[1];


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

        //public static string DecryptString(string key, string cipherText)
        //{
        //    byte[] iv = new byte[16];
        //    byte[] buffer = Convert.FromBase64String(cipherText);

        //    using (Aes aes = Aes.Create())
        //    {
        //        aes.Key = Encoding.UTF8.GetBytes(key);
        //        aes.IV = iv;
        //        ICryptoTransform decryptor = aes.CreateDecryptor(aes.Key, aes.IV);

        //        using (MemoryStream memoryStream = new MemoryStream(buffer))
        //        {
        //            using (CryptoStream cryptoStream = new CryptoStream((Stream)memoryStream, decryptor, CryptoStreamMode.Read))
        //            {
        //                using (StreamReader streamReader = new StreamReader((Stream)cryptoStream))
        //                {
        //                    return streamReader.ReadToEnd();
        //                }
        //            }
        //        }
        //    }
        //}
    }


}