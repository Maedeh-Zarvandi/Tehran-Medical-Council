using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Faculty1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (DataClasses1DataContext dacl5 = new DataClasses1DataContext())
            {
                Faculty factable = new Faculty
                {
                    university_name = TextBox1.Text,
                    university_id = TextBox2.Text,
                    university_adr = TextBox3.Text,
                    doctor_id =int.Parse( TextBox4.Text),
                    tariff_id= TextBox5.Text


               };
                dacl5.Faculties.InsertOnSubmit(factable);
                dacl5.SubmitChanges();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                

                GridView1.DataBind();
            }
        }
    }
}