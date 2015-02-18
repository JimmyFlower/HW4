
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub bt_calculate_Click(sender As Object, e As EventArgs) Handles bt_calculate.Click

        'Specify constant value
        Const tax_rate_small As Decimal = 0.18
        Const tax_rate_big As Decimal = 0.22
        Const tax_hat As Integer = 500

        'Create variables to hold inputs
        Dim wage As Decimal = tb_hourlywage.Text
        Dim hours As Decimal = tb_hoursworked.Text
        Dim pre_tax_deduction As Decimal = tb_pretaxdeductions.Text
        Dim after_tax_deduction As Decimal = tb_aftertaxdeduction.Text

        'income after pre-tax-deduction
        Dim taxable_pay As Decimal
        Dim tax_amount As Decimal
        taxable_pay = wage * hours - pre_tax_deduction

        'calculate tax amount
        If taxable_pay < tax_hat Then
            tax_amount = taxable_pay * tax_rate_small
        Else
            tax_amount = taxable_pay * tax_rate_big
        End If

        'calculate after tax income
        Dim pay As Decimal
        pay = taxable_pay - tax_amount

        'calculate net pay
        Dim net_pay As Decimal
        net_pay = pay - after_tax_deduction

        'display net pay
        lbl_netpay.Text = String.Format("{0:C}", net_pay)
    End Sub
End Class
