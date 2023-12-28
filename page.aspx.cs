using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RemaxEntityFrameWork
{
    public partial class page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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