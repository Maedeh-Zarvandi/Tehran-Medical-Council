using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class searchLaboratory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (DataClasses1DataContext Med = new DataClasses1DataContext())
            {

                if (TextBox2.Text == "")
                {
                    Label3.Visible = true;
                    Label1.Visible = false;
                }

                if (TextBox2.Text != "")
                {
                    var rlt = from lab in Med.Laboratories
                              where (TextBox2.Text == lab.field_of_research && lab.tariff_id=="1")
                              select new
                              {
                                  NameOfLaboratory = lab.name,
                                  BudgetOfLaboratory = lab.lab_budget,
                               
                              };
                    if (rlt.Count() == 0)
                    {
                        Label1.Visible = true;
                        GridView1.Visible = false;
                    }
                    else
                    {
                        GridView1.DataSource = rlt;
                        GridView1.DataBind();
                    }

                }
            }
        }
    }
}