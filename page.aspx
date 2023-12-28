<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="page.aspx.cs" Inherits="RemaxEntityFrameWork.page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Projet REMAX</title>
</head>
<body >
    <form id="form1" runat="server">
        <div>
           <center><h1 style="color:#0000CC">PROJET REMAX</h1></center>
            <hr />
        </div>
        <div><center>
            <table style="background-color:red">
                <td><asp:Button style="background-color:red; color:white" ID="btnMaison" Text="Chercher Maison" runat="server"  CssClass="bouton" OnClick="btnMaison_Click" /></td>
                <td><asp:Button style="background-color:red; color:white" ID="btnAgent" runat="server" Text="Chercher Agent"  CssClass="bouton" OnClick="btnAgent_Click"  /></td>
                <td><asp:Button style="background-color:red; color:white" ID="btnMessage" runat="server" Text="Envoyer Message" CssClass="bouton" OnClick="btnMessage_Click"  /></td>
            </table>
        </div></center>
        <br />
        <br />
        <br />
        <br />
        <br />
       

        


    </form>
</body>
</html>