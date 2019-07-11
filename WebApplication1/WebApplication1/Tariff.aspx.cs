using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Tariff1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (DataClasses1DataContext dacl8 = new DataClasses1DataContext())
            {
               Tariff tartable = new Tariff
                {
                    ID = TextBox1.Text,
                    type_of_tariff = TextBox2.Text,
                    
                };
                dacl8.Tariffs.InsertOnSubmit(tartable);
                dacl8.SubmitChanges();
                TextBox1.Text = "";
                TextBox2.Text = "";
                

                GridView1.DataBind();
            }
        }
    }
}