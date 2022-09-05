<%@ Page Language="C#" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebTest.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 435px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Font-Size="Large" style="z-index: 1; left: 103px; top: 85px; position: absolute" Text="Unesite redni broj osobe"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Size="Large" style="z-index: 1; left: 103px; top: 128px; position: absolute" Text="Unesite ime osobe"></asp:Label>
        <asp:Label ID="Label3" runat="server" Font-Size="Large" style="z-index: 1; left: 105px; top: 175px; position: absolute" Text="Izaberite visinu osobe"></asp:Label>
        <asp:TextBox ID="TBrednibroj" runat="server" Font-Size="Large" style="z-index: 1; left: 316px; top: 82px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TBime" runat="server" Font-Size="Large" style="z-index: 1; left: 315px; top: 126px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TBvisina" runat="server" Font-Size="Large" style="z-index: 1; left: 315px; top: 173px; position: absolute"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TBvisina" ErrorMessage="Ovo polje je pozitivan realan broj iz opsega[50,250]" MaximumValue="250" MinimumValue="50" style="z-index: 1; left: 712px; top: 173px; position: absolute; width: 192px" Type="Double"></asp:RangeValidator>
        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large" style="z-index: 1; left: 114px; top: 254px; position: absolute">
            <asp:ListItem Value="0">Izaberite pol osobe</asp:ListItem>
            <asp:ListItem Value="1">Muski</asp:ListItem>
            <asp:ListItem Value="2">Zenski</asp:ListItem>
        </asp:DropDownList>
        <asp:CustomValidator ID="CustomIme" runat="server" ControlToValidate="TBime" ErrorMessage="Ovo polje  sadrzi mala i velika slova i pocinje velikim slovom" OnServerValidate="CustomIme_ServerValidate" style="z-index: 1; left: 715px; top: 120px; position: absolute; width: 218px"></asp:CustomValidator>
        <asp:Label ID="LBrez" runat="server" style="z-index: 1; left: 182px; top: 403px; position: absolute" Text="Label" Font-Size="Large" Visible="False"></asp:Label>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TBrednibroj" ErrorMessage="Ovo polje ceo i pozitivan broj" Operator="GreaterThan" style="z-index: 1; left: 720px; top: 83px; position: absolute" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
        <asp:Button ID="BTRadi" runat="server" Font-Size="Large" style="z-index: 1; left: 144px; top: 317px; position: absolute; width: 131px; height: 45px" Text="RADI" OnClick="BTRadi_Click" />
        <asp:Button ID="BObrisi" runat="server" Font-Size="Large" OnClick="BObrisi_Click" style="z-index: 1; left: 313px; top: 318px; position: absolute; width: 135px; height: 41px" Text="OBRISI" />
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Greska, morate izabrati pol" Operator="NotEqual" style="z-index: 1; left: 309px; top: 255px; position: absolute; height: 25px" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TBrednibroj" ErrorMessage="Ovo polje je obavezno" style="z-index: 1; left: 551px; top: 86px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TBime" ErrorMessage="Ovo polje je obavezno" style="z-index: 1; left: 549px; top: 126px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TBvisina" ErrorMessage="Ovo polje je obavezno" style="z-index: 1; left: 549px; top: 171px; position: absolute"></asp:RequiredFieldValidator>
    </form>
</body>
</html>
