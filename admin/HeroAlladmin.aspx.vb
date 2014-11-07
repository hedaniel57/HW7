
Partial Class HeroAll
    Inherits System.Web.UI.Page

    Protected Sub btn_Insert_Click(sender As Object, e As EventArgs) Handles btn_Insert.Click
        Response.Redirect("New Hero.aspx")
    End Sub
End Class
