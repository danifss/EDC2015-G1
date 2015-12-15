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
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    XmlDocument xml = new XmlDocument();
        //    xml.Load("http://services.web.ua.pt/sas/ementas?date=day");

        //    List<string> attributes = new List<string>();

        //    XmlNode node = xml.DocumentElement.SelectSingleNode("/result/menus");
        //    if (node.Attributes["zone"].Value.Equals("santiago"))
        //    {
        //        foreach (XmlElement n in node.ChildNodes)
        //        {
        //            XmlAttributeCollection atributos = n.Attributes;
        //            foreach (XmlAttribute at in atributos)
        //            {
        //                attributes.Add(at.Value);
        //            }
        //        }
        //    }

        //    FormViewSantiago.DataSource = attributes;
        //    FormViewSantiago.DataBind();

        //}
    }
}