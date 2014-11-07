
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub lbl_label_Load(sender As Object, e As EventArgs) Handles lbl_label.Load
        Dim time As Date = Date.Now
        lbl_label.Text = time
    End Sub
End Class

