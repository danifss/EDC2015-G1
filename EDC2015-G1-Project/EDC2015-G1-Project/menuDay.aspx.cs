using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Serialization;


namespace EDC2015_G1_Project
{
    public partial class menuDay : System.Web.UI.Page
    {
           String local1;

        protected void Page_Load(object sender, EventArgs e)
        {
            local1 = "Refeitório de Santiago";    
        }

        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //       if(DropDownList1.SelectedValue == "Almoço")
        //    {
        //        ementasByDay.XPath = "result/menu[@canteen = '"+local1+"' and @meal='Almoço']/items";
        //    }
        //    else
        //    {
        //        ementasByDay.XPath = "result/menu[@canteen = '" + local1 + "' and @meal='Jantar']/items";
        //    }
        //    DetailsView1.DataBind();
        //}

        protected void Santiago_Click(object sender, EventArgs e)
        {
            local1 = "Refeitório de Santiago";
            ementasByDayAlmocoSantiago.XPath = "result/menu[@canteen = '" + local1 + "' and @meal='Almoço']/items";
            DetailsView1.DataSourceID = "ementasByDayAlmocoSantiago";
            ementasByDayJantarSantiago.XPath = "result/menu[@canteen = '" + local1 + "'and @meal='Jantar']/items";
            DetailsView2.DataSourceID = "ementasByDayJantarSantiago";
            Bar.ImageUrl = "Img/santiago.jpg";
        }

        protected void Crasto_Click(object sender, EventArgs e)
        {
            local1 = "Refeitório do Crasto";
            DetailsView1.DataSourceID = "ementasByDayAlmocoCrasto";
            ementasByDayAlmocoCrasto.XPath = "result/menu[@canteen = '" + local1+ "' and @meal='Almoço']/items";
            DetailsView2.DataSourceID = "ementasByDayJantarCrasto";
            jantar.Visible=false;
            ementasByDayJantarCrasto.XPath = "result/menu[@canteen = '" + local1 + "'and @meal='Jantar']/items";
            Bar.ImageUrl = "Img/refeitorioCrasto.jpg";
        }

        protected void Restaurante_Click(object sender, EventArgs e)
        {
            local1 = "Restaurante Universitário";
            DetailsView1.DataSourceID = "ementasByDayAlmocoUniversitario";
            ementasByDayAlmocoUniversitario.XPath = "result/menu[@canteen = '" + local1 + "' and @meal='Almoço']/items";
            DetailsView2.DataSourceID = "ementasByDayJantarUniversitario";
            ementasByDayJantarUniversitario.XPath = "result/menu[@canteen = '" + local1 + "'and @meal='Jantar']/items";
            Bar.ImageUrl = "Img/universitario.jpg";
        }

        protected void Snack_Click(object sender, EventArgs e)
        {
            local1 = "Snack-Bar/Self";
            DetailsView1.DataSourceID = "ementasByDayAlmocoSnack";
            ementasByDayAlmocoSnack.XPath = "result/menu[@canteen = '" + local1 + "' and @meal='Almoço']/items";
            DetailsView2.DataSourceID = "ementasByDayJantarSnack";
            jantar.Visible = false;
            ementasByDayJantarSnack.XPath = "result/menu[@canteen = '" + local1 + "'and @meal='Jantar']/items";
            Bar.ImageUrl = "Img/snack.jpg";
        }

        protected void ESTGA_Click(object sender, EventArgs e)
        {
            local1 = "Refeitório ESTGA";
            DetailsView1.DataSourceID = "ementasByDayAlmocoEstga";
            ementasByDayAlmocoEstga.XPath = "result/menu[@canteen = '" + local1 + "' and @meal='Almoço']/items";
            DetailsView2.DataSourceID = "ementasByDayJantarEstga";
            ementasByDayJantarEstga.XPath = "result/menu[@canteen = '" + local1 + "'and @meal='Jantar']/items";
            Bar.ImageUrl = "Img/refeitorioEstga.jpg";
        }

        protected void ESAN_Click(object sender, EventArgs e)
        {
            local1 = "Refeitório ESAN";
            DetailsView1.DataSourceID = "ementasByDayAlmocoEsan";
            ementasByDayAlmocoEsan.XPath = "result/menu[@canteen = '" + local1 + "' and @meal='Almoço']/items";
            DetailsView2.DataSourceID = "ementasByDayJantarEsan";
            jantar.Visible = false;
            ementasByDayJantarEsan.XPath = "result/menu[@canteen = '" + local1 + "'and @meal='Jantar']/items";
            Bar.ImageUrl = "Img/esan.jpg";
        }
    }
}