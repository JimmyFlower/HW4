<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Salary Calculator</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />
    <style type="text/css">
        .auto-style1 {
            width: 155px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Salary Calculater</h1>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">Hourly wage:</td>
                <td>$<asp:TextBox ID="tb_hourlywage" runat="server" style="text-align:right" height="22px" Width="75px"></asp:TextBox>/hour</td>
            
            </tr>
            <tr>
                <td class="auto-style1">Number of hours worked:</td>
                <td>&nbsp; <asp:TextBox ID="tb_hoursworked" runat="server" style="text-align:right" height="22px" Width="75px"></asp:TextBox>hours</td>
     
            </tr>
            <tr>
                <td class="auto-style1">Pre-tax deductions:</td>
                <td>$<asp:TextBox ID="tb_pretaxdeductions" runat="server" style="text-align:right" height="22px" Width="75px"></asp:TextBox></td>
             
            </tr>
            <tr><td class="auto-style1">After-tax decutions: </td>
                <td>$<asp:TextBox ID="tb_aftertaxdeduction" runat="server" style="text-align:right" height="22px" Width="75px"></asp:TextBox></td>
            </tr>
            </table>
        <p><asp:Button ID="bt_calculate" runat="server" Text="Calculate Net Pay" BorderStyle="Solid" />
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="bt_clear" runat="server" Text="Clear" BorderStyle="Solid" />&nbsp; </p>
  
         <p>Net pay:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbl_netpay" runat="server"></asp:Label></p>
    
    </div>
    </form>
</body>
</html>
