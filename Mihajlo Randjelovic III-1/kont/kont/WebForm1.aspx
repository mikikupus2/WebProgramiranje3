<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="kont.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="z-index: 1; left: 10px; top: 15px; position: absolute; height: 658px; width: 919px">
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 87px; top: 50px; position: absolute" Text="Unesite ID vozila"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 228px; top: 54px; position: absolute"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ovo polje je obavezno" style="z-index: 1; left: 423px; top: 57px; position: absolute"></asp:RequiredFieldValidator>
            <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 125px; top: 136px; position: absolute; width: 196px">
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 124px; top: 239px; position: absolute" Text="Unesite reg. br."></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 243px; top: 237px; position: absolute"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Ovo polje moze sadrzati  samo veliko slova i brojeve 1 PRVA DVA KARAKTERA SU VELIKA SLOVA" OnServerValidate="CustomValidator2_ServerValidate" style="z-index: 1; left: 445px; top: 228px; position: absolute"></asp:CustomValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Niste izabrali vrstu vozila" style="z-index: 1; left: 417px; top: 141px; position: absolute"></asp:RangeValidator>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 119px; top: 316px; position: absolute" Text="Godina proizvodnje"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" style="z-index: 1; left: 271px; top: 314px; position: absolute"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Ovo polje mora biti iz segmenta[1900,2021]" style="z-index: 1; left: 470px; top: 310px; position: absolute"></asp:RangeValidator>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 157px; top: 413px; position: absolute; right: 705px" Text="Posalji" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="z-index: 1; top: 415px; position: absolute; height: 26px; width: 62px; left: 277px" Text="Obrisi" />
        </div>
    </form>
</body>
</html>
