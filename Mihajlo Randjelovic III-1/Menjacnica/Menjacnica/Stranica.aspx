<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stranica.aspx.cs" Inherits="Menjacnica.Stranica" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 533px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="DDLvaluta" runat="server" OnSelectedIndexChanged="DDLvaluta_SelectedIndexChanged" style="z-index: 1; left: 402px; top: 159px; position: absolute; width: 163px">
            <asp:ListItem>Euro</asp:ListItem>
            <asp:ListItem>Dinar</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 340px; top: 113px; position: absolute" Text="Izaberite valutu koju cete konvertovati"></asp:Label>
        <asp:TextBox ID="Tbiznos" runat="server" style="z-index: 1; left: 403px; top: 276px; position: absolute" Visible="False">0</asp:TextBox>
        <asp:Label ID="lbiznos" runat="server" style="z-index: 1; left: 407px; top: 237px; position: absolute; width: 150px" Text="Unesite iznos:" Visible="False"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 444px; top: 42px; position: absolute" Text="Menjacnica"></asp:Label>
        <asp:Button ID="Btkonvert" runat="server" OnClick="Btkonvert_Click" style="z-index: 1; left: 435px; top: 330px; position: absolute; height: 40px; width: 113px" Text="Konvertuj" Visible="False" />
        <asp:Label ID="Iznos" runat="server" style="z-index: 1; left: 394px; top: 428px; position: absolute; width: 275px" Text="Label" Visible="False"></asp:Label>
        <asp:Button ID="Btpotvrda" runat="server" OnClick="Btpotvrda_Click" style="z-index: 1; left: 610px; top: 154px; position: absolute" Text="Potvrdi" />
    </form>
</body>
</html>
