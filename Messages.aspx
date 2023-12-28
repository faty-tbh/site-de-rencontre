<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Messages.aspx.cs" Inherits="RemaxEntityFrameWork.Messages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Projet REMAX</title>
    <style type="text/css">
    #grandTableau{
        width:700px;
        margin:auto;
        border-radius:5px;
        font-weight:bold;
        padding:2px;
        border-spacing:4px;
        background-color:red;
    }
    .boite{
        font-weight:bold;
        border-radius:3px;
        width:200px;
        color:brown;
    }
    .bouton{
        font-weight:bold;
        border-radius:5px;
        width:130px;
        color:black;
    }
    3
    .auto-style1 {
        height: 40px;
    }
</style>
</head>
<body >
    <form id="form1" runat="server">
        <div>
           <center><h1 style="color:#0000CC">PROJET REMAX</h1></center>
            <hr />
        </div>
        <div><center>
            <table style="background-color:red">
                <td><asp:Button style="background-color:red; color:white" ID="btnMaison" Text="Chercher Maison" runat="server"  CssClass="bouton" OnClick="btnMaison_Click"  /></td>
                <td><asp:Button style="background-color:red; color:white" ID="btnAgent" runat="server" Text="Chercher Agent"  CssClass="bouton" OnClick="btnAgent_Click"  /></td>
                <td><asp:Button style="background-color:red; color:white" ID="btnMessage" runat="server" Text="Envoyer Message" CssClass="bouton" OnClick="btnMessage_Click" /></td>
            </table></center>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
       

        <table id="grandTableau">
                <tr>
                    <td>Messages <br /> </td>
                    <td>
                        <fieldset >
                            <legend>Envoyer un message</legend>
                                <table id="petitTableau">
                                     <tr>
                                         <td>Titre : </td>
                                         <td>
                                             <asp:TextBox ID="txtTitre" runat="server" CssClass="boite" ></asp:TextBox>
                                         </td>
                                         <td>
                                             <asp:Button ID="btnEnvoyer" runat="server" Text="Envoyer" OnClick="btnEnvoyer_Click" />
                                         </td>
                                        </tr>
                                    <tr>
                                         <td class="auto-style1">Message: </td>
                                         <td class="auto-style1">
                                             <asp:TextBox ID="txtMessage" runat="server" CssClass="boite"></asp:TextBox>
                                         </td>
                                         
                                     </tr>
                                     <tr>
                                         <td class="auto-style1">Destinataire: </td>
                                         <td class="auto-style1">
                                             <asp:DropDownList ID="cmbDest" runat="server" ></asp:DropDownList>
                                         </td>
                                         
                                     </tr>

                                    

                                     <tr>
                                         
                                         <td colspan="2">
                                             <asp:Label ID="lblInfo" runat="server" ></asp:Label>
                                         </td>
                                         

                                     </tr>
                                </table>
                        
                        </fieldset>
                        
                    </td>

                </tr>
                
            </table>
        </div>
        <p>
            &nbsp;</p>
        <p>
            <center><asp:Button ID="btnVoir" runat="server" Text="Voir tous les messages" BackColor="Blue" OnClick="btnVoir_Click" /></center>
        </p>
    </form>
</body>
</html>
