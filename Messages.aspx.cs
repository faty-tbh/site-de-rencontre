using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RemaxEntityFrameWork
{
    public partial class Messages : System.Web.UI.Page
    {
        static RemaxDBEntities2 monmessage;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(IsPostBack))
            {
                monmessage = new RemaxDBEntities2();
                RemplirCmbDestimnataires();


            }

            
        }

        private void RemplirCmbDestimnataires()
        {
            var lesdes =( from Message message in monmessage.Messages
                         select new
                         {

                             ReferAgent = message.ReferAgent


                         }).Distinct();

            cmbDest.DataTextField = "ReferAgent";
            cmbDest.DataValueField = "ReferAgent";
            cmbDest.DataSource = lesdes.ToList();
            cmbDest.DataBind();
        }

        protected void btnEnvoyer_Click(object sender, EventArgs e)
        {



            Message message;
                message = new Message();
               
                message.Titre = txtTitre.Text;
                message.Message1 = txtMessage.Text;
                message.Date = new DateTime().Year.ToString();
                message.ReferAgent = Convert.ToInt32(cmbDest.SelectedItem.Value);
                
              

                
                monmessage.Messages.Add(message);

            
                monmessage.SaveChanges();
            
            RemplirCmbDestimnataires();

            lblInfo.Text = "Message Envoyee";
        }

        protected void btnVoir_Click(object sender, EventArgs e)
        {
            Server.Transfer("voir.aspx");
        }

        protected void btnMaison_Click(object sender, EventArgs e)
        {
            Server.Transfer("Maisons.aspx");
        }

        protected void btnAgent_Click(object sender, EventArgs e)
        {
            Server.Transfer("Agents.aspx");
        }

        protected void btnMessage_Click(object sender, EventArgs e)
        {
            Server.Transfer("Messages.aspx");
        }
    }

        
    }
    
