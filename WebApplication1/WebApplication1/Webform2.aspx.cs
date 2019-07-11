using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
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
            using(DataClasses1DataContext dacl1=new DataClasses1DataContext())
            {
                Address adtable = new Address
                {
                    address1 = TextBox1.Text,
                    address2 = TextBox2.Text,
                    ID = int.Parse(TextBox3.Text),
                    district = TextBox4.Text,
                    postal_code = TextBox5.Text,
                    phone = TextBox6.Text,
                    last_update =DateTime.Parse(TextBox7.Text)

                };
                dacl1.Addresses.InsertOnSubmit(adtable);
                dacl1.SubmitChanges();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox7.Text = "";

                GridView1.DataBind();
            }
        }
    }
}