using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RemaxEntityFrameWork
{
    public partial class Agents : System.Web.UI.Page
    {
        static RemaxDBEntities2 monagent;
        static Int32 RefAgentNum;
        static Int32 RefAgentGenre;
        static Int32 RefAgentVille;
        static Int32 RefAgentLangue;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(IsPostBack))
            {
                monagent = new RemaxDBEntities2();
                RemlplirListNum();
                RemlplirListGenre();
                RemlplirListVille();
                RemlplirListLangue();
                

            }

        }

        private void RemlplirListLangue()
        {
            var lesLangues =( from Agent agent in monagent.Agents
                            select new
                            {

                                Langue = agent.Langue,
                                RefAgent =agent.RefAgent

                            }).Distinct();

            cmbLangue.DataTextField = "Langue";
            cmbLangue.DataValueField = "RefAgent";
            cmbLangue.DataSource = lesLangues.ToList();
            cmbLangue.DataBind();
        }

        private void RemlplirListVille()
        {
            var lesvilles =(from Agent agent in monagent.Agents
                            select new
                             {

                                 Ville = agent.Ville,
                                 RefAgent = agent.RefAgent

                             }).Distinct();

            cmbVille.DataTextField = "Ville";
            cmbVille.DataValueField = "RefAgent";
            cmbVille.DataSource = lesvilles.ToList();
            cmbVille.DataBind();
        }

        private void RemlplirListGenre()
        {
            var lesgenres =(from Agent agent in monagent.Agents
                            select new
                             {

                                 Genre = agent.Genre,
                                 RefAgent = agent.RefAgent

                             }).Distinct();

            cmbGenre.DataTextField = "Genre";
            cmbGenre.DataValueField = "RefAgent";
            cmbGenre.DataSource = lesgenres.ToList();
            cmbGenre.DataBind();
        }

        private void RemlplirListNum()
        {
            var lesnums =(from Agent agent in monagent.Agents
                          select new
                             {

                                 Numero = agent.Numero,
                                 RefAgent = agent.RefAgent

                             }).Distinct();

            cmbNumero.DataTextField = "Numero";
            cmbNumero.DataValueField = "RefAgent";
            cmbNumero.DataSource = lesnums.ToList();
            cmbNumero.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            RefAgentLangue = Convert.ToInt32(cmbLangue.SelectedItem.Value);
            RefAgentGenre = Convert.ToInt32(cmbGenre.SelectedItem.Value);
            RefAgentNum = Convert.ToInt32(cmbNumero.SelectedItem.Value);
            RefAgentVille = Convert.ToInt32(cmbVille.SelectedItem.Value);

            //normalement ce qu'on doit faire c que chaque agent a un numero donc on doit chercher l'agent en fonction de son  numero

            var lesagents = from Agent agent in monagent.Agents
                            where agent.RefAgent == RefAgentLangue ||
                            agent.RefAgent == RefAgentNum ||
                            agent.RefAgent == RefAgentVille ||
                            agent.RefAgent == RefAgentGenre
                            select agent;






            gridResultat.DataSource = lesagents.ToList();
            gridResultat.DataBind();
        }

        protected void cmbNumero_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnMaison_Click(object sender, EventArgs e)
        {
            Server.Transfer("Maisons.aspx");
        }

        protected void btnMessage_Click1(object sender, EventArgs e)
        {
            Server.Transfer("Messages.aspx");
        }

        protected void btnAgent_Click1(object sender, EventArgs e)
        {
            Server.Transfer("Agents.aspx");
        }
    }
}