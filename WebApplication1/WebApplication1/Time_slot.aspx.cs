using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Time_slot1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (DataClasses1DataContext dacl9 = new DataClasses1DataContext())
            {
                Time_slot timtable = new Time_slot
                {
                    ID = TextBox1.Text,
                    day = TextBox2.Text,
                    start_time = TimeSpan.Parse(TextBox3.Text),
                    end_time = TimeSpan.Parse(TextBox4.Text),
                    start_date = DateTime.Parse(TextBox5.Text),
                    end_date = DateTime.Parse(TextBox6.Text),
                


                };
                dacl9.Time_slots.InsertOnSubmit(timtable);
                dacl9.SubmitChanges();
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