using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace EDC2015_G1_Project
{
    public partial class marcarSenha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool userLoggedIn = (System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated;
            if (!userLoggedIn)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void btnReservarSantiago_Click(object sender, EventArgs e)
        {            
            bool almoco = (chkAlmoco.Checked) ? true : false;
            bool jantar = (chkJantar.Checked) ? true : false;
            if (!almoco && !jantar) {
                lblError_checkBox.Visible = true;
                return;
            } else
                lblError_checkBox.Visible = false;

            if (almoco)
                writeXml("/reservas/Santiago/Almoco");
            if (jantar)
                writeXml("/reservas/Santiago/Jantar");
            
        }

        protected void writeXml(string elemRootPath)
        {
            XmlDocument xml = reservasXmlDataSource.GetXmlDocument();
            XmlNode elemList = xml.DocumentElement.SelectSingleNode(elemRootPath);

            // Create new elements
            XmlElement eReserva = xml.CreateElement("reserva");
            XmlElement eUserId = xml.CreateElement("userId");
            XmlElement eDate = xml.CreateElement("date");
            XmlElement eWeekDay = xml.CreateElement("weekDay");
            XmlElement eNumberSeats = xml.CreateElement("numberSeats");

            // Insert values on elements
            string UserId = HttpContext.Current.User.Identity.GetUserId();
            eUserId.InnerText = UserId;
            DateTime dateNow = DateTime.Now;
            eDate.InnerText = dateNow.GetDateTimeFormats('R')[0];
            eWeekDay.InnerText = dateNow.DayOfWeek.ToString();
            eNumberSeats.InnerText = ddlNumberTickets.SelectedValue;

            // Create struture for new reservation
            elemList.AppendChild(eReserva);
            eReserva.AppendChild(eUserId);
            eReserva.AppendChild(eDate);
            eReserva.AppendChild(eWeekDay);
            eReserva.AppendChild(eNumberSeats);

            // Saving new reservation
            reservasXmlDataSource.Save();
            reservasXmlDataSource.DataBind();
        }
    }
}