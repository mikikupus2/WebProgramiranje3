<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="val3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 507px">
            Unesi ime&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <br />
            <br />
            Plata&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Plata mora biti veca od 30000" ForeColor="Red" Operator="GreaterThanEqual" ValueToCompare="&gt;30000.0"></asp:CompareValidator>
            <br />
            <br />
            koeficijent <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Koeficijent mora biti iz opsega[2,22]" ForeColor="Red" MaximumValue="22" MinimumValue="2"></asp:RangeValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Posalji" Width="185px" />
        </div>
    </form>
</body>
</html>
