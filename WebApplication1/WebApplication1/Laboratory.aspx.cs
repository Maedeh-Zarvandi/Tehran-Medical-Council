using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Laboratory1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (DataClasses1DataContext dacl7 = new DataClasses1DataContext())
            {
                Laboratory labtable = new Laboratory
                {
                    name = TextBox1.Text,
                    field_of_research = TextBox2.Text,
                    doctor_id = int.Parse(TextBox3.Text),
                    address_id =int.Parse( TextBox4.Text),
                    tariff_id = TextBox5.Text,
                    total_experiment = int.Parse(TextBox6.Text),
                    lab_budget = int.Parse(TextBox7.Text),
                
                    established_year = int.Parse(TextBox8.Text),




                };
                dacl7.Laboratories.InsertOnSubmit(labtable);
                dacl7.SubmitChanges();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
     

                GridView1.DataBind();
            }
        }
    }
}