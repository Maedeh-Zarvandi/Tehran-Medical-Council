using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void DropDownList1_SelectedIndexChanged2(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if ((DropDownList1.SelectedItem.Text).ToString()=="Address")

                Response.Redirect("Webform2.aspx");

            else if ((DropDownList1.SelectedItem.Text).ToString() == "Doctor")

                Response.Redirect("Doctor.aspx");

            else if ((DropDownList1.SelectedItem.Text).ToString() == "Category")

                Response.Redirect("CategoryTable.aspx");

            else if ((DropDownList1.SelectedItem.Text).ToString() == "Laboratory")

                Response.Redirect("Laboratory.aspx");

            else if ((DropDownList1.SelectedItem.Text).ToString() == "Time_slot")

                Response.Redirect("Time_slot.aspx");

            else if ((DropDownList1.SelectedItem.Text).ToString() == "Hospital")

                Response.Redirect("Hospital.aspx");

            else if ((DropDownList1.SelectedItem.Text).ToString() == "Clinic")

                Response.Redirect("Clinic.aspx");

            else if ((DropDownList1.SelectedItem.Text).ToString() == "Tarrif")

                Response.Redirect("Tariff.aspx");

            else if ((DropDownList1.SelectedItem.Text).ToString() == "Faculty")

                Response.Redirect("Faculty.aspx");

          


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if ((DropDownList2.SelectedItem.Text).ToString() == "Category")
                Response.Redirect("searchCategory.aspx");

            if ((DropDownList2.SelectedItem.Text).ToString() == "Doctor")
                Response.Redirect("searchDoctor.aspx");

            if ((DropDownList2.SelectedItem.Text).ToString() == "Hospital")
                Response.Redirect("searchHospital.aspx");

            if ((DropDownList2.SelectedItem.Text).ToString() == "Laboratory")
                Response.Redirect("searchLaboratory.aspx");

            if ((DropDownList2.SelectedItem.Text).ToString() == "Time_slot")
                Response.Redirect("searchTime_slot.aspx");

        }
    }
}