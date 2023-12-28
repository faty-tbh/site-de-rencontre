using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RemaxEntityFrameWork
{
    public partial class Maisons : System.Web.UI.Page
    {

        static RemaxDBEntities2 mamaison;
        static Int32 RefMaisonType;
        static Int32 RefMaisonEmp;
        static Int32 RefMaisonNombre;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(IsPostBack))
            {
                mamaison = new RemaxDBEntities2();
                RemlplirCboTypes();
                RemplirCboEmp();
                RemplirCboNombre();

            }

        }

        private void RemplirCboNombre()
        {
            var lesNomres = (from Maison maison in mamaison.Maisons
                             select new
                             {

                                 NomreChambres = maison.NomreChambres,
                                 RefMaison = maison.RefMaison

                             }).Distinct();

            cmbChambres.DataTextField = "NomreChambres";
            cmbChambres.DataValueField = "RefMaison";
            cmbChambres.DataSource = lesNomres.ToList();
            cmbChambres.DataBind();
        }

        private void RemplirCboEmp()
        {
            var lesEmp =( from Maison maison in mamaison.Maisons
                           select new
                           {

                               Emplacement = maison.Emplacement,
                               RefMaison = maison.RefMaison

                           }).Distinct();

            cmbEmp.DataTextField = "Emplacement";
            cmbEmp.DataValueField = "RefMaison";
            cmbEmp.DataSource = lesEmp.ToList();
            cmbEmp.DataBind();
        }

        private void RemlplirCboTypes()
        {
            var lesTypes =( from Maison maison in mamaison.Maisons
                           select new 
                           {

                               Type = maison.Type,
                               RefMaison = maison.RefMaison

                           }).Distinct();

            cmbType.DataTextField = "Type";
            cmbType.DataValueField = "RefMaison";
            cmbType.DataSource = lesTypes.ToList();
            cmbType.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            
            RefMaisonType = Convert.ToInt32(cmbType.SelectedItem.Value);
            RefMaisonEmp = Convert.ToInt32(cmbEmp.SelectedItem.Value);
            RefMaisonNombre = Convert.ToInt32(cmbChambres.SelectedItem.Value);

            
            if (txtPrix.Text.Length==0)
            {
                lblInfo.Text = "Veuillez entrer un montant";
            }
            else
            {
                Int32 prix = Convert.ToInt32(txtPrix.Text);
                var lesmaisons = from Maison maison in mamaison.Maisons
                                 where maison.RefMaison == RefMaisonType ||
                                 maison.RefMaison == RefMaisonEmp ||
                                 maison.RefMaison == RefMaisonNombre || maison.Prix <= prix
                                 select maison;
                gridResultat.DataSource = lesmaisons.ToList();
                gridResultat.DataBind();
            }

            

        }

        protected void cmbType_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }

        protected void cmbEmp_SelectedIndexChanged(object sender, EventArgs e)
        {
           

        }

        protected void cmbChambres_SelectedIndexChanged(object sender, EventArgs e)
        {
           

        }

        protected void btnMaison_Click(object sender, EventArgs e)
        {
            Server.Transfer("Maisons.aspx");
        }

        
        protected void btnAgent_Click1(object sender, EventArgs e)
        {
            Server.Transfer("Agents.aspx");
        }

        protected void btnMessage_Click1(object sender, EventArgs e)
        {
            Server.Transfer("Messages.aspx");
        }
    }
}