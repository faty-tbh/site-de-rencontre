<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maisons.aspx.cs" Inherits="RemaxEntityFrameWork.Maisons" %>

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
                <td><asp:Button style="background-color:red; color:white" ID="btnAgent" runat="server" Text="Chercher Agent"  CssClass="bouton" OnClick="btnAgent_Click1" /></td>
                <td><asp:Button style="background-color:red; color:white" ID="btnMessage" runat="server" Text="Envoyer Message" CssClass="bouton" OnClick="btnMessage_Click1" /></td>
            </table></center>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
       

        <center><asp:Panel ID="panelMaison" runat="server" BackColor="#0000CC" Height="462px" Width="1314px">
            <br />
            <table style="background-color:red; color:white">
                <tr>
                    <td style="width:40%" >
                       Type:
                    </td>
                    <td>
                        <asp:DropDownList ID="cmbType" runat="server" OnSelectedIndexChanged="cmbType_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td style="width:40%" >
                       Emplacement:
                    </td>
                    <td>
                        <asp:DropDownList ID="cmbEmp" runat="server" OnSelectedIndexChanged="cmbEmp_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td style="width:40%" >
                       Prix:
                    </td>
                    <td>
                        <asp:TextBox ID="txtPrix" runat="server" Width="132px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td style="width:40%" >
                       Nombre des chambres:
                    </td>
                    <td>
                        <asp:DropDownList ID="cmbChambres" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click"  />
                    </td>
                    <td>
                        <asp:Label ID="lblInfo" runat="server" ></asp:Label>
                    </td>
                 
                </tr>
            </table>
            <br />
            <asp:GridView ID="gridResultat" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            
        </asp:Panel>

            </form>
</body>
</html>