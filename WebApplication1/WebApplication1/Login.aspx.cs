using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
   
            Label3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (DataClasses1DataContext Med = new DataClasses1DataContext())
            {
                if (TextBox1.Text == "" || TextBox2.Text=="")
                
                    Label3.Visible = true;
                else
                {

                    var rlt = from us in Med.userOnes
                      

                              where (TextBox1.Text == us.username &&  TextBox2.Text==us.passwordd)
                           
                              select new {user_name=us.username,user_pass=us.passwordd };


                    if (rlt.Count() == 0)
                    {
                        Label1.Visible = true;
                     
                    }
                    else
                    {
                        Response.Redirect("Webform1.aspx");
                    }
                }
                   
                

            }
        }
    }
}