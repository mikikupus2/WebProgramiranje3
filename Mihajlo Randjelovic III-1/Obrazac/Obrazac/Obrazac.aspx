<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Obrazac.aspx.cs" Inherits="Obrazac.Obrazac" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 669px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" BorderColor="Red" BorderStyle="Solid" Font-Size="XX-Large" ForeColor="Red" style="z-index: 1; left: 338px; top: 41px; position: absolute; width: 615px; text-align:center" Text="OBRAZAC ZA RODITELJE"></asp:Label>
        <asp:TextBox ID="tbime" runat="server" style="z-index: 1; left: 324px; top: 142px; position: absolute; width: 186px"></asp:TextBox>
        <asp:TextBox ID="tbprezime" runat="server" style="z-index: 1; left: 327px; top: 196px; position: absolute; width: 186px"></asp:TextBox>
        <asp:TextBox ID="tbemail" runat="server" style="z-index: 1; left: 326px; top: 252px; position: absolute; width: 186px"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Font-Italic="False" Font-Size="X-Large" ForeColor="Red" style="z-index: 1; left: 255px; top: 140px; position: absolute" Text="Ime:"></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="Red" style="z-index: 1; left: 214px; top: 197px; position: absolute" Text="Prezime:"></asp:Label>
        <asp:Label ID="Label4" runat="server" Font-Size="X-Large" ForeColor="Red" style="z-index: 1; left: 230px; top: 251px; position: absolute" Text="e-mail:"></asp:Label>
        <asp:Label ID="Label5" runat="server" Font-Size="X-Large" ForeColor="Red" style="z-index: 1; left: 132px; top: 334px; position: absolute" Text="pol:"></asp:Label>
        <asp:RadioButton ID="rbmuski" runat="server" Font-Size="X-Large" ForeColor="Red" GroupName="pol" style="z-index: 1; left: 141px; top: 425px; position: absolute; margin-top: 0px" Text="muški" />
        <asp:RadioButton ID="rbzenski" runat="server" Checked="True" Font-Size="X-Large" ForeColor="Red" GroupName="pol" style="z-index: 1; left: 141px; top: 381px; position: absolute" Text="ženski" />
        <asp:Label ID="Label6" runat="server" Font-Size="X-Large" ForeColor="Red" style="z-index: 1; left: 456px; top: 342px; position: absolute" Text="Nivo obrazovanja:"></asp:Label>
        <asp:DropDownList ID="ddnivo" runat="server" Font-Size="X-Large" ForeColor="Black" style="z-index: 1; left: 456px; top: 385px; position: absolute; width: 224px">
            <asp:ListItem Value="1">osnovna škola</asp:ListItem>
            <asp:ListItem Value="2">II stepen</asp:ListItem>
            <asp:ListItem Value="3">III stepen</asp:ListItem>
            <asp:ListItem Value="4">IV stepen</asp:ListItem>
            <asp:ListItem Value="5">V stepen</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btsnimi" runat="server" Font-Bold="True" ForeColor="#009900" OnClick="btsnimi_Click" style="z-index: 1; left: 198px; top: 533px; position: absolute" Text="SNIMI I POŠALJI" />
        <asp:Button ID="btobrisi" runat="server" Font-Bold="True" ForeColor="#009900" OnClick="btobrisi_Click" style="z-index: 1; left: 419px; top: 534px; position: absolute" Text="OBRIŠI PODATKE" />
        <asp:Label ID="lbrez" runat="server" Font-Size="X-Large" ForeColor="Red" style="z-index: 1; left: 764px; top: 176px; position: absolute" Text="Rezultat" Visible="False"></asp:Label>
    </form>
</body>
</html>
