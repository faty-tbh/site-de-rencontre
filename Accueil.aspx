<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Accueil.aspx.cs" Inherits="RemaxEntityFrameWork.Accueil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Projet REMAX</title>

     <style type="text/css">
       
        .pub{
            font-weight:bold;
            background-color:blue;
            color:white;
        }
         .auto-style1 {
             margin-right: 198px;
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
            <marquee class="pub">
         WELCOME TO REMAX WEBSITE

    </marquee>
            <div  style="background-color:red">
                <asp:Button ID="btnSearch" BackColor="white" runat="server" Text="SEARCH" Height="76px" OnClick="btnSearch_Click" Width="162px"  /></div>
            
        <asp:Image src="./img/remax.jpg" width="100%" Height="650px" ID="Image1" runat="server" CssClass="auto-style1" />
        <br />
        <br />
        <br />
       

        


    </form>
</body>
</html>