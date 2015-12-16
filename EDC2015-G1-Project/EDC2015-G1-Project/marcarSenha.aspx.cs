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
            } else
            {
                //reservasXmlDataSource.XPath = "//*[userId='swagger']";
                disableAllButtons();
            }

        }

        protected void Santiago_Click(object sender, EventArgs e)
        {
            disableAllButtons();
            btnReservar1.Visible = true;
        }

        protected void Crasto_Click(object sender, EventArgs e)
        {
            disableAllButtons();
            btnReservar2.Visible = true;
        }

        protected void Restaurante_Click(object sender, EventArgs e)
        {
            disableAllButtons();
            btnReservar3.Visible = true;
        }

        protected void Snack_Click(object sender, EventArgs e)
        {
            disableAllButtons();
            btnReservar4.Visible = true;
        }

        protected void ESTGA_Click(object sender, EventArgs e)
        {
            disableAllButtons();
            btnReservar5.Visible = true;
        }

        protected void ESAN_Click(object sender, EventArgs e)
        {
            disableAllButtons();
            btnReservar6.Visible = true;
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
                writeXml("/reservas", "Refeitório de Santiago", "Almoço");
            if (jantar)
                writeXml("/reservas", "Refeitório de Santiago", "Jantar");

            Response.Redirect("marcarSenha.aspx");
        }

        protected void btnReservarCrasto_Click(object sender, EventArgs e)
        {
            bool almoco = (chkAlmoco.Checked) ? true : false;
            bool jantar = (chkJantar.Checked) ? true : false;
            if (!almoco && !jantar)
            {
                lblError_checkBox.Visible = true;
                return;
            }
            else
                lblError_checkBox.Visible = false;

            if (almoco)
                writeXml("/reservas", "Refeitório do Crasto", "Almoço");
            if (jantar)
                writeXml("/reservas", "Refeitório do Crasto", "Jantar");

            Response.Redirect("marcarSenha.aspx");
        }

        protected void btnReservarRestaurante_Click(object sender, EventArgs e)
        {
            bool almoco = (chkAlmoco.Checked) ? true : false;
            bool jantar = (chkJantar.Checked) ? true : false;
            if (!almoco && !jantar)
            {
                lblError_checkBox.Visible = true;
                return;
            }
            else
                lblError_checkBox.Visible = false;

            if (almoco)
                writeXml("/reservas", "Restaurante", "Almoço");
            if (jantar)
                writeXml("/reservas", "Restaurante", "Jantar");

            Response.Redirect("marcarSenha.aspx");
        }

        protected void btnReservarSnack_Click(object sender, EventArgs e)
        {
            bool almoco = (chkAlmoco.Checked) ? true : false;
            bool jantar = (chkJantar.Checked) ? true : false;
            if (!almoco && !jantar)
            {
                lblError_checkBox.Visible = true;
                return;
            }
            else
                lblError_checkBox.Visible = false;

            if (almoco)
                writeXml("/reservas", "Snack-Bar/Self", "Almoço");
            if (jantar)
                writeXml("/reservas", "Snack-Bar/Self", "Jantar");

            Response.Redirect("marcarSenha.aspx");
        }

        protected void btnReservarESTGA_Click(object sender, EventArgs e)
        {
            bool almoco = (chkAlmoco.Checked) ? true : false;
            bool jantar = (chkJantar.Checked) ? true : false;
            if (!almoco && !jantar)
            {
                lblError_checkBox.Visible = true;
                return;
            }
            else
                lblError_checkBox.Visible = false;

            if (almoco)
                writeXml("/reservas", "Refeitório ESTGA", "Almoço");
            if (jantar)
                writeXml("/reservas", "Refeitório ESTGA", "Jantar");

            Response.Redirect("marcarSenha.aspx");
        }

        protected void btnReservarESAN_Click(object sender, EventArgs e)
        {
            bool almoco = (chkAlmoco.Checked) ? true : false;
            bool jantar = (chkJantar.Checked) ? true : false;
            if (!almoco && !jantar)
            {
                lblError_checkBox.Visible = true;
                return;
            }
            else
                lblError_checkBox.Visible = false;

            if (almoco)
                writeXml("/reservas", "Refeitório ESAN", "Almoço");
            if (jantar)
                writeXml("/reservas", "Refeitório ESAN", "Jantar");

            Response.Redirect("marcarSenha.aspx");
        }

        protected void writeXml(string elemRootPath, string place, string meal)
        {
            int newId = 0;
            XmlDocument xml = saveXmlDataSource.GetXmlDocument();
            //xml.Load(Server.MapPath("~/XML/reservas.xml"));
            XmlNode elemList = xml.DocumentElement.SelectSingleNode(elemRootPath);

            // Create new elements
            XmlElement eReserva = xml.CreateElement("reserva");
            XmlElement eID = xml.CreateElement("id");
            XmlElement eUserName = xml.CreateElement("userId");
            XmlElement eCantina = xml.CreateElement("cantina");
            XmlElement eMeal = xml.CreateElement("meal");
            XmlElement eDate = xml.CreateElement("date");
            XmlElement eWeekDay = xml.CreateElement("weekDay");
            XmlElement eNumberSeats = xml.CreateElement("numberSeats");

            for (int i = 0; i < elemList.ChildNodes.Count; i++)
                newId++;
            newId++; // new ID

            // Insert values on elements
            eID.InnerText = newId.ToString();
            string UserName = HttpContext.Current.User.Identity.GetUserName();
            eUserName.InnerText = UserName;
            eCantina.InnerText = place;
            eMeal.InnerText = meal;
            DateTime dateNow = DateTime.Now;
            eDate.InnerText = dateNow.GetDateTimeFormats('R')[0];
            eWeekDay.InnerText = dateNow.DayOfWeek.ToString();
            eNumberSeats.InnerText = ddlNumberTickets.SelectedValue;

            // Create struture for new reservation
            elemList.AppendChild(eReserva);
            eReserva.AppendChild(eID);
            eReserva.AppendChild(eUserName);
            eReserva.AppendChild(eCantina);
            eReserva.AppendChild(eMeal);
            eReserva.AppendChild(eDate);
            eReserva.AppendChild(eWeekDay);
            eReserva.AppendChild(eNumberSeats);

            // Saving new reservation
            saveXmlDataSource.Save();
            saveXmlDataSource.DataBind();
        }

        protected void FormView_reservations_ItemUpdating(object sender, FormViewUpdateEventArgs e)
        {
            XmlDocument xml = saveXmlDataSource.GetXmlDocument();
            XmlElement reserva = xml.SelectSingleNode("//reserva[id='" + e.Keys["ID"] + "']") as XmlElement;

            (reserva.SelectSingleNode("cantina") as XmlElement).InnerText = e.NewValues["Cantina"].ToString();
            (reserva.SelectSingleNode("date") as XmlElement).InnerText = e.NewValues["Data"].ToString();
            (reserva.SelectSingleNode("weekDay") as XmlElement).InnerText = e.NewValues["Dia"].ToString();
            (reserva.SelectSingleNode("numberSeats") as XmlElement).InnerText = e.NewValues["Lugares"].ToString();

            saveXmlDataSource.Save();
            reservasXmlDataSource.DataBind();

            Response.Redirect("marcarSenha.aspx");
            //FormView_reservations.ChangeMode(FormViewMode.ReadOnly);
        }

        protected void FormView_reservations_ItemDeleting(object sender, FormViewDeleteEventArgs e)
        {
            XmlDocument xml = saveXmlDataSource.GetXmlDocument();
            XmlElement reserva = xml.SelectSingleNode("//reserva[id='" + e.Keys["ID"] + "']") as XmlElement;

            xml.DocumentElement.RemoveChild(reserva);

            saveXmlDataSource.Save();
            reservasXmlDataSource.DataBind();

            Response.Redirect("marcarSenha.aspx");
        }

        protected void disableAllButtons()
        {
            btnReservar1.Visible = false;
            btnReservar2.Visible = false;
            btnReservar3.Visible = false;
            btnReservar4.Visible = false;
            btnReservar5.Visible = false;
            btnReservar6.Visible = false;
        }
    }
}