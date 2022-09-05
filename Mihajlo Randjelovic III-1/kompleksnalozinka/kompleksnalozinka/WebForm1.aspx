<%@ Page Language="C#" UnobtrusiveValidationMode ="none" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="kompleksnalozinka.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 540px;
        }
    </style>
</head>
<body style="height: 534px">
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 37px; top: 31px; position: absolute" Text="Unesite korisnicko ime"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 39px; top: 68px; position: absolute" Text="Unesite lozinku"></asp:Label>
        <asp:TextBox ID="TBIme" runat="server" style="z-index: 1; left: 235px; top: 30px; position: absolute"></asp:TextBox>
        <asp:TextBox ID="TBloz1" runat="server" style="z-index: 1; left: 236px; top: 66px; position: absolute"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TBIme" ErrorMessage="Korisnicko ime je obavezno" ForeColor="Red" style="z-index: 1; left: 417px; top: 32px; position: absolute"></asp:RequiredFieldValidator>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 295px; top: 221px; position: absolute" Text="Ponovite lozinku" Visible="False"></asp:Label>
        <asp:TextBox ID="TBloz2" runat="server" style="z-index: 1; left: 446px; top: 221px; position: absolute" Visible="False"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TBloz1" ErrorMessage="Lozinka mora sadrzati barem jedno malo,  jedno veliko, cifru i specijalni znak!" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" style="z-index: 1; left: 420px; top: 68px; position: absolute"></asp:CustomValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TBloz1" ControlToValidate="TBloz2" ErrorMessage="Lozinke se ne poklapaju" ForeColor="Red" style="z-index: 1; left: 628px; top: 224px; position: absolute"></asp:CompareValidator>
        <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" style="z-index: 1; left: 187px; top: 139px; position: absolute; height: 52px; width: 248px" ImageUrl="~/slike/strelica.png" />
    </form>
</body>
</html>
