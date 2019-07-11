using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class CategoryTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (DataClasses1DataContext dacl2 = new DataClasses1DataContext())
            {
                Category cattable = new Category
                {
                    ID = int.Parse(TextBox1.Text),
                    time_slot_id = TextBox2.Text,
                    doctor_id = int.Parse(TextBox3.Text),
                    cat_name = TextBox4.Text,

                };
                dacl2.Categories.InsertOnSubmit(cattable);
                dacl2.SubmitChanges();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";

                GridView1.DataBind();
            }
        }

    }
}