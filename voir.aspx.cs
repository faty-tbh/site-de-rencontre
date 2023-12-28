using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RemaxEntityFrameWork
{
    public partial class voir : System.Web.UI.Page
    {
        static RemaxDBEntities2 vrmeassage;
        static Int32 RefMessageChoisis;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(IsPostBack))
            {
                vrmeassage = new RemaxDBEntities2();
                RemlplirListMessages();

            }
        }

        private void RemlplirListMessages()
        {
            var lesMessages = from Message unMsg in vrmeassage.Messages
                              select new
                              {
                                  //allias
                                  Titre = unMsg.Titre,
                                  RefMessage = unMsg.RefMessage

                           };

            lstmessage.DataTextField = "Titre";
            lstmessage.DataValueField = "RefMessage";
            lstmessage.DataSource = lesMessages.ToList();
            lstmessage.DataBind();
        }

        protected void lstmessage_SelectedIndexChanged(object sender, EventArgs e)
        {
            RefMessageChoisis = Convert.ToInt32(lstmessage.SelectedItem.Value);
            var lesmsgs = from Message unMsg in vrmeassage.Messages where unMsg.RefMessage == RefMessageChoisis select unMsg;
            gridMessage.DataSource = lesmsgs.ToList();
            gridMessage.DataBind();

            
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