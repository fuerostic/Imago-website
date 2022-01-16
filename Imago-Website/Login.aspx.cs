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
using System.Net.Mail;

namespace Imago_Website
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\ImagoDatabase.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            string hashed = EncryptString("b14ca5898a4e4133bbce2ea2315a1916", loginPass.Text);
            SqlDataAdapter sda = new SqlDataAdapter("select count(*) from [Table] where Email_Id = '" + loginMail.Text + "'and Password = '" + hashed + "' ", con);
            


            string check = "select count(*) from [Table] where Email_Id = '"+loginMail.Text+"'and Password = '"+hashed+"' ";
            SqlCommand com = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            //if (temp == 1)
            //{
            //    Response.Redirect("Home.aspx");
            //}
            //else
            //{
            //    validationText.ForeColor = System.Drawing.Color.Red;
            //    validationText.Text = "Incorrect Email or Password";
            //}
            System.Diagnostics.Debug.WriteLine(temp);
            System.Diagnostics.Debug.WriteLine(hashed);

            switch (temp)
            {
                case -1:
                    validationText.ForeColor = System.Drawing.Color.Red;
                    validationText.Text = "Incorrect Email or Password";
                    break;
                case -2:
                    validationText.ForeColor = System.Drawing.Color.Red;
                    validationText.Text = "Account has not been activated.";
                    break;

                case 1:
                    startSession(loginMail.Text);
                    break;
                default:
                    validationText.ForeColor = System.Drawing.Color.Red;
                    validationText.Text = "Incorrect Email or Password";
                    break;
            }
        }

        private void startSession(string s)
        {
            MailAddress addr = new MailAddress(s);
            string username = addr.User;
            string domain = addr.Host;
            Session["username"] = username;
            Session["mail"] = loginMail.Text;

            if (rememberLogin.Checked)
            {
                HttpCookie cookie = new HttpCookie("user") ;
                cookie["username"] = username;
                cookie.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(cookie);

            }
            //else
            //{
            //    HttpCookie cookie = new HttpCookie(loginMail.Text);
            //    cookie["username"] = username;
            //    Response.Cookies.Add(cookie);
            //}

            Response.Redirect("Home.aspx");
            Session.RemoveAll();
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