using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KnjigaUtisaka
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public void ClearControls()
        {
            TextBoxIme.Text = "";
            TextBoxEmail.Text = "";
            TextBoxOpis.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonDodaj_Click(object sender, EventArgs e)
        {

            SqlConnection konekcija = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Skola\MATURA\VebProgramiranje\B8 - Knjiga utisaka\KnjigaUtisaka\KnjigaUtisaka\App_Data\Database1.mdf"";Integrated Security=True");
            try
            {
                string sqlUpit = "INSERT INTO KnjigaUtisaka values(@parIme,@parEmail,@parOpis)";
                SqlCommand komanda = new SqlCommand(sqlUpit, konekcija);

                konekcija.Open();

                komanda.Parameters.AddWithValue("@parIme", TextBoxIme.Text);
                komanda.Parameters.AddWithValue("@parEmail", TextBoxEmail.Text);
                komanda.Parameters.AddWithValue("@parOpis", TextBoxOpis.Text);

                komanda.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                konekcija.Close();
            }
            ClearControls();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm1.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/OAutoru.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Uputstvo.aspx");
        }
    }
}