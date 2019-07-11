using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class searchCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
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

                if (TextBox1.Text != "" && TextBox2.Text != "")
                {
                    var rlt = from hos in Med.Hospitals
                              join doc in Med.Doctors on hos.doctor_id equals doc.ID
                              join cil in Med.Clinics on doc.ID equals cil.doctor_id
                              join cat in Med.Categories on hos.category_id equals cat.ID
                              where (TextBox1.Text == doc.last_name && TextBox2.Text == cat.cat_name)
                              select new
                              {
                                  NameOfHospital = hos.name,
                                  NameOfClinic=cil.name,
                                  CapacityOfHOspital = hos.capacity,
                                  CapacityOfClinic = cil.capacity,
                            

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