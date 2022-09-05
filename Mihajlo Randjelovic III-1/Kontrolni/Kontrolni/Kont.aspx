<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kont.aspx.cs" Inherits="Kontrolni.Kont" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 905px;
        }
    </style>
</head>
<body style="height: 803px; width: 1462px">
    <form id="form1" runat="server">
            <asp:Label ID="LbImePrez" runat="server" style="z-index: 1; left: 208px; top: 91px; position: absolute; height: 26px; width: 149px" Text="Ime i prezime:"></asp:Label>
            <asp:TextBox ID="TbImePrez" runat="server" style="z-index: 1; left: 347px; top: 93px; position: absolute; width: 259px"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 225px; top: 141px; position: absolute; width: 129px" Text="ID_radnika:"></asp:Label>
            <asp:TextBox ID="TbID" runat="server" style="z-index: 1; top: 142px; position: absolute; left: 346px"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 181px; top: 223px; position: absolute; width: 151px; height: 28px" Text="Cena radnog sata:"></asp:Label>
            <asp:TextBox ID="TbCena" runat="server" style="z-index: 1; left: 347px; top: 224px; position: absolute"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 179px; top: 265px; position: absolute; width: 144px" Text="Broj radnog sata:"></asp:Label>
            <asp:TextBox ID="TbRadnogSata" runat="server" style="z-index: 1; left: 346px; top: 262px; position: absolute"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 150px; top: 380px; position: absolute; width: 153px" Text="Stimulacija:"></asp:Label>
            <asp:DropDownList ID="DropStimulacija" runat="server" OnSelectedIndexChanged="DropStimulacija_SelectedIndexChanged" style="z-index: 1; left: 32px; top: 418px; position: absolute; height: 19px; width: 127px; right: 1174px">
                <asp:ListItem Value="0">Ne</asp:ListItem>
                <asp:ListItem Value="1">Da</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 728px; top: 382px; position: absolute; width: 138px" Text="Obustave:"></asp:Label>
            <asp:DropDownList ID="DropObustave" runat="server" OnSelectedIndexChanged="DropObustave_SelectedIndexChanged" style="z-index: 1; left: 723px; top: 418px; position: absolute; height: 15px; width: 143px">
                <asp:ListItem Value="0">Ne</asp:ListItem>
                <asp:ListItem Value="1">Da</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnRadi" runat="server" OnClick="btnRadi_Click" style="z-index: 1; left: 792px; top: 83px; position: absolute; width: 171px" Text="Radi" />
            <asp:Label ID="LbRez" runat="server" style="z-index: 1; left: 982px; top: 162px; position: absolute; height: 79px; width: 285px" Visible="False"></asp:Label>
            <asp:Label ID="Label7" runat="server" style="z-index: 1; left: 964px; top: 386px; position: absolute; width: 165px" Text="Iznos obustave:" Visible="False"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 968px; top: 420px; position: absolute" Visible="False"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 14px; top: 497px; position: absolute; width: 167px" Text="Stimulacija" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; left: 789px; top: 504px; position: absolute; width: 159px; right: 385px" Text="Obustave" />
            <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 434px; top: 497px; position: absolute; right: 768px" Text="%" Visible="False"></asp:Label>
            <asp:TextBox ID="TbStim" runat="server" style="z-index: 1; top: 496px; position: absolute; width: 167px; bottom: 119px; left: 233px;" Visible="False"></asp:TextBox>
    </form>
</body>
</html>
