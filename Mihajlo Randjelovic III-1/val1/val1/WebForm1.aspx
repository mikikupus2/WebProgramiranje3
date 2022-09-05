<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="val1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 421px">
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 17px; top: 24px; position: absolute" Text="Unesi ime"></asp:Label>
            <asp:TextBox ID="TBime" runat="server" AutoPostBack="True" style="z-index: 1; left: 109px; top: 21px; position: absolute"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TBime" Display="Dynamic" ErrorMessage="Ovo polje je obavezno!!!" style="z-index: 1; left: 297px; top: 23px; position: absolute"></asp:RequiredFieldValidator>
        </div>
    </form>
</body>
</html>
