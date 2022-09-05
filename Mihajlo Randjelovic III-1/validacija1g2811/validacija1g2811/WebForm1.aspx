<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="validacija1g2811.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 493px">
            <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 49px; top: 34px; position: absolute" Text="Unesite manji broj"></asp:Label>
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 49px; top: 75px; position: absolute" Text="Unesite veci broj"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 240px; top: 36px; position: absolute"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 241px; top: 75px; position: absolute"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" style="z-index: 1; left: 431px; top: 77px; position: absolute; width: 24px"></asp:RequiredFieldValidator>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 132px; top: 125px; position: absolute; width: 188px" Text="RADI" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" style="z-index: 1; left: 429px; top: 37px; position: absolute; width: 25px"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox1" ErrorMessage="Pogresan unos brojevi nisu u dobroj relaciji!!!" ForeColor="Red" Operator="LessThan" style="z-index: 1; left: 36px; top: 173px; position: absolute" Type="Integer"></asp:CompareValidator>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 78px; top: 233px; position: absolute" Text="Label" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
