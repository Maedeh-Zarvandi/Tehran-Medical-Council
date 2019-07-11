using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class searchTimeSlot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (DataClasses1DataContext Med = new DataClasses1DataContext())
            {

                if (TextBox1.Text == "")
                {
                    Label2.Visible = true;
                    Label1.Visible = false;
                }
                if (TextBox2.Text == "")
                {
                    Label3.Visible = true;
                    Label1.Visible = false;
                }
                if (TextBox3.Text == "")
                {
                    Label4.Visible = true;
                    Label1.Visible = false;
                }

                if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text!="")
                {
                    var rlt = from ts in Med.Time_slots
                              join cat in Med.Categories on ts.ID equals cat.time_slot_id
                              join doc in Med.Doctors on cat.doctor_id equals doc.ID
                              join hos in Med.Hospitals on doc.ID equals hos.doctor_id
                              join adr in Med.Addresses on hos.address_id equals adr.ID
                              where (TextBox1.Text == adr.district && DateTime.Parse(TextBox2.Text )==ts.start_date && TimeSpan.Parse(TextBox3.Text)==ts.start_time )
                              select new
                              {
                                  NameOfDoctor = doc.last_name,
                                  CategoryOfDoctor = cat.cat_name,
                                
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