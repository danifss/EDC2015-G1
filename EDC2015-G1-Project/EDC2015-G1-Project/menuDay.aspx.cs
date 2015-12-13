using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace EDC2015_G1_Project
{
    public partial class menuDay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            XmlDocument xml = new XmlDocument();
            xml.Load(@"~/XML/ementas.day.all.xml");

            List<string> attributes = new List<string>();

            List<XmlNode> nodes = new List<XmlNode>();
            XmlNode node = xml.FirstChild;
            foreach (XmlElement n in node.ChildNodes)
            {
                XmlAttributeCollection atributos = n.Attributes;
                foreach (XmlAttribute at in atributos)
                {
                    if (at.LocalName.Contains("request"))
                    {
                        attributes.Add(at.Value);
                    }
                }
            }

        }
    }
}