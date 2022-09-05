<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forma1.aspx.cs" Inherits="povez.forma1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p id ="p1">
                Unesite ime: &nbsp <input id ="Text1" type="text"/>
            </p>
            <p>
                Unesite prezime: &nbsp <input id ="Text2" type="text"/>
            </p>
            <asp:Button ID="Button1" runat="server" Text="Radi" Width="123px" OnClick="Button1_Click" />
            <input id="Reset1" type="reset" value="RESETUJ" /></div>
            &nbsp&nbsp;
            
    </form>
</body>
</html>
