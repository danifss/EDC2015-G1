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
        result ementas;

        protected void Page_Load(object sender, EventArgs e)
        {
            //string inputUrl = "http://services.web.ua.pt/sas/ementas?date=day&place=all";
            //string inputUrl = @"C:\ementas.day.all.xml";
            XmlDocument xml = new XmlDocument();
            xml.Load("http://services.web.ua.pt/sas/ementas?date=day&place=all");
            //xml.Load(inputUrl);
            string inputString = xml.InnerXml;
            //string xmlText = File.ReadAllText(inputUrl);

            try
            {
                XmlSerializer serializer = new XmlSerializer(typeof(result));
                StringReader rdr = new StringReader(inputString);
                ementas = (result)serializer.Deserialize(rdr);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.StackTrace);
                throw ex;
            }
        }

        protected void FormViewSantiago_Load(object sender, EventArgs e)
        {
            //XmlDocument xml = new XmlDocument();
            ////xml.Load("http://services.web.ua.pt/sas/ementas?date=day&place=all");
            //xml.Load("C:/ementas.day.all.xml");

            //List<string> attributes = new List<string>();

            //XmlNode node = xml.DocumentElement.SelectSingleNode("/result");

            //List<Dictionary<string, string>> menusAttr = new List<Dictionary<string, string>>(node.ChildNodes.Count);

            ////string cenas = node.Attributes["zone"].Value.ToString();
            ////ClientScript.RegisterStartupScript(this.GetType(), "Debug", "alert('" + cenas + "');", true);
            //for (int i = 0; i < node.ChildNodes.Count; i++)
            //{
            //    XmlNode subNode = node.ChildNodes[i];
            //    if (subNode.Attributes["zone"].Value.Equals("santiago"))
            //    {
            //        int j = 0;
            //        foreach (XmlElement n in subNode.ChildNodes)
            //        {
            //            XmlAttributeCollection atributos = n.Attributes;
            //            menusAttr.Add(new Dictionary<string, string>());
            //            foreach (XmlAttribute at in atributos)
            //            {
            //                //if (at.LocalName.Contains("meal")){
            //                menusAttr[j].Add(at.Name, at.Value);
            //                attributes.Add(at.Value);
            //                //}
            //            }
            //            j++;
            //        }
            //    }
            //}

            //FormViewSantiago.DataSource = menusAttr;
            //FormViewSantiago.DataBind();
        }
    }
}