<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="apl1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 359px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 18px; top: 20px; position: absolute">0</asp:TextBox>
        <asp:Button ID="Klikni" runat="server" OnClick="Klikni_Click" style="z-index: 1; left: 25px; top: 102px; position: absolute; height: 26px; width: 90px" Text="Klikni" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Ovo polje je obavezno !" style="z-index: 1; left: 205px; top: 28px; position: absolute"></asp:RequiredFieldValidator>
    </form>
</body>
</html>
