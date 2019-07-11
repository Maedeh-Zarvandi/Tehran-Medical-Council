using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class searchDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
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
               

           else if (TextBox1.Text != "")
                {
                    var rlt = from doc in Med.Doctors
                             // join cil in Med.Clinics on doc.ID equals cil.doctor_id
                        
                              join hos in Med.Hospitals on doc.ID equals hos.doctor_id
                              
                              where (int.Parse(TextBox1.Text )<=hos.establishedـyear )
                              group doc.salary by new
                              {
                                 doc.first_name,
                                  doc.last_name,
                              } into gs
                              select new { gs.Key.first_name, gs.Key.last_name, TotalSalaryOfDoctor_InHospitals = gs.Sum() };
                    
                    
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