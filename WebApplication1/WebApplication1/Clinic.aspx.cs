using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Clinic1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (DataClasses1DataContext dacl3 = new DataClasses1DataContext())
            {
                Clinic ciltable = new Clinic
                {
                    name = TextBox1.Text,
                    address_id =int.Parse( TextBox2.Text),
                    doctor_id = int.Parse(TextBox3.Text),
                    category_id =int.Parse( TextBox5.Text),
                    category_time= TimeSpan.Parse( TextBox6.Text),
                    tariff_id = TextBox7.Text,
                    capacity=int.Parse(TextBox8.Text),
                    establishedـyear=int.Parse(TextBox9.Text),
                    cil_budget=int.Parse(TextBox10.Text)


                };
                dacl3.Clinics.InsertOnSubmit(ciltable);
                dacl3.SubmitChanges();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox10.Text = "";

                GridView1.DataBind();
            }
        }

      
    }
}