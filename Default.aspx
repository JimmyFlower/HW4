<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Salary Calculation<br />
        <br />
        Hourly wage:<asp:TextBox ID="tb_hourlywage" runat="server"></asp:TextBox>
        <br />
        <br />
        Number of hours worked:<asp:TextBox ID="tb_hoursworked" runat="server"></asp:TextBox>
        <br />
        <br />
        Pre-tax deductions:<asp:TextBox ID="tb_pretaxdeductions" runat="server"></asp:TextBox>
        <br />
        <br />
        After-tax deductions:<asp:TextBox ID="tb_aftertaxdeduction" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="bt_calculate" runat="server" Text="Button" />
        <asp:Button ID="bt_clear" runat="server" Text="Button" />
        <br />
        <br />
        Net pay;<asp:Label ID="lbl_netpay" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
