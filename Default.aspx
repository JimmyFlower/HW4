<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Salary Calculator</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Salary Calculation</h1><br />
        
       <p>Hourly wage:<asp:TextBox ID="tb_hourlywage" runat="server"></asp:TextBox></P>
        <br />

       <p>Number of hours worked:<asp:TextBox ID="tb_hoursworked" runat="server"></asp:TextBox></p>
        <br />

       <p>Pre-tax deductions:<asp:TextBox ID="tb_pretaxdeductions" runat="server"></asp:TextBox></p>
        <br />

       <p>After-tax deductions:<asp:TextBox ID="tb_aftertaxdeduction" runat="server"></asp:TextBox></p>
        <br />
 
        <p><asp:Button ID="bt_calculate" runat="server" Text="Calculate Net Pay" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="bt_clear" runat="server" Text="Clear" /></p>
        <br />
 
        <p>Net pay: <asp:Label ID="lbl_netpay" runat="server"></asp:Label></p>
    
    </div>
    </form>
</body>
</html>
