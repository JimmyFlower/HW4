
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub bt_calculate_Click(sender As Object, e As EventArgs) Handles bt_calculate.Click

        'Specify constant value
        Const tax_rate_small As Decimal = 0.18
        Const tax_rate_big As Decimal = 0.22
        Const tax_hat As Integer = 500

        'Create variables to hold inputs
        Dim houlywage As Decimal = tb_hourlywage.Text
        Dim hoursworked As Decimal = tb_hoursworked.Text
        Dim pre_tax_deduction As Decimal = tb_pretaxdeductions.Text
        Dim after_tax_deduction As Decimal = tb_aftertaxdeduction.Text

        'income after pre-tax-deduction
        Dim income_after_pre As Decimal
        Dim tax_amount As Decimal
        income_after_pre = houlywage * hoursworked - pre_tax_deduction

        'calculate tax amount
        If income_after_pre < tax_hat Then
            tax_amount = income_after_pre * tax_rate_small
        Else
            tax_amount = income_after_pre * tax_rate_big
        End If

        'calculate after tax income
        Dim income_after_tax As Decimal
        income_after_tax = income_after_pre - tax_amount

        'calculate net pay
        Dim net_pay As Decimal
        net_pay = income_after_tax - after_tax_deduction

        'display net pay
        lbl_netpay.Text = String.Format("{0:C}", net_pay)
    End Sub
End Class
