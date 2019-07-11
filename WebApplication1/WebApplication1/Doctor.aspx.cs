using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Doctor1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (DataClasses1DataContext dacl4 = new DataClasses1DataContext())
            {
                Doctor doctable = new Doctor
                {
                    first_name = TextBox1.Text,
                    last_name = TextBox2.Text,
                    ID = int.Parse(TextBox3.Text),
                    faculty = TextBox4.Text,
                    salary = int.Parse(TextBox5.Text),
                    grade = int.Parse(TextBox6.Text)


                };
                dacl4.Doctors.InsertOnSubmit(doctable);
                dacl4.SubmitChanges();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
     
                GridView1.DataBind();
            }
        }
    }
}