
Partial Class New_Hero
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("HeroAlladmin.aspx")
    End Sub

    Protected Sub btn_back_Click(sender As Object, e As EventArgs) Handles btn_back.Click
        Response.Redirect("HeroAlladmin.aspx")
    End Sub
End Class
