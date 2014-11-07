
Partial Class HeroDetail
    Inherits System.Web.UI.Page

    Protected Sub btn_back_Click(sender As Object, e As EventArgs) Handles btn_back.Click
        Response.Redirect("HeroAlladmin.aspx")
    End Sub
End Class
