<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Strana1.aspx.cs" Inherits="projekat2.Strana1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pocetna strana</title>
    <style type="text/css">
        #forma1 {
            height: 963px;
            text-align: center;
            background-color: #00FFCC;
        }
    </style>
</head>
<body>
    <form id="forma1" runat="server">
        
        <asp:Label ID="Lbime" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" style="z-index: 1; left: 320px; top: 116px; position: absolute; height: 35px; width: 309px; bottom: 568px" Text="Unesite ime:"></asp:Label>
        <asp:TextBox ID="TBPrezime" runat="server" style="z-index: 1; left: 605px; top: 196px; position: absolute; width: 326px"></asp:TextBox>
        <asp:Label ID="Lbrez" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" style="z-index: 1; left: 277px; top: 457px; position: absolute; height: 35px; width: 905px" Text="Vase ime i prezime je " Visible="False"></asp:Label>
        <asp:TextBox ID="TBIme" runat="server" style="z-index: 1; left: 606px; top: 125px; position: absolute; width: 326px; bottom: 569px"></asp:TextBox>
        <asp:Button ID="BtRadi" runat="server" BackColor="White" BorderColor="#0066FF" OnClick="BtRadi_Click" style="z-index: 1; left: 611px; top: 290px; position: absolute; height: 41px; width: 325px" Text="RADI NESTO" />
        <asp:Label ID="Lbprezime" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" style="z-index: 1; left: 318px; top: 187px; position: absolute; height: 35px; width: 309px" Text="Unesite prezime:"></asp:Label>
        <asp:Button ID="BtPOC" runat="server" OnClick="BtPOC_Click" style="z-index: 1; left: 617px; top: 368px; position: absolute; height: 37px; width: 320px" Text="VRATI NA POCETNO" />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.tehnickasd.edu.rs/" style="z-index: 1; left: 752px; top: 526px; position: absolute; height: 30px; width: 389px">Idi na sajt skole &gt;</asp:HyperLink>
        
    </form>
</body>
</html>
