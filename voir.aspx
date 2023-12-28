<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="voir.aspx.cs" Inherits="RemaxEntityFrameWork.voir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <script type="text/javascript">
        function ConfirmerEffacer() {
            return confirm("Etes vous sure de vouloire supprimer ce cours? ")
        }
    </script>
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
<body>
    <form id="form1" runat="server">
        <div>



        <h1 style="text-align:center">ENTITY FRAMEWORK <br /> MESSAGES</h1>

            <hr  style="width:400px"/> <br />
            <div><center>
            <table style="background-color:red">
                <td><asp:Button style="background-color:red; color:white" ID="btnMaison" Text="Chercher Maison" runat="server"  CssClass="bouton" OnClick="btnMaison_Click"  /></td>
                <td><asp:Button style="background-color:red; color:white" ID="btnAgent" runat="server" Text="Chercher Agent"  CssClass="bouton" OnClick="btnAgent_Click"   /></td>
                <td><asp:Button style="background-color:red; color:white" ID="btnMessage" runat="server" Text="Envoyer Message" CssClass="bouton" OnClick="btnMessage_Click"  /></td>
            </table></center>
        </div>
        <br />
        <br />

            <table id="grandTableau">
                <tr>
                    <td>Choisir un titre de message  <br /> <asp:ListBox ID="lstmessage" runat="server" Font-Bold="True" ForeColor="#3399FF" Height="180px" Width="160px"  AutoPostBack="true" OnSelectedIndexChanged="lstmessage_SelectedIndexChanged" 
                        ></asp:ListBox></td> 
                    
                        

                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="gridMessage" runat="server" Width="100%" BackColor="White"  ></asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
