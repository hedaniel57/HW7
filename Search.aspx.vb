
Partial Class Search
    Inherits System.Web.UI.Page

   

    Protected Sub tbTool_TextChanged(sender As Object, e As EventArgs) Handles tbTool.TextChanged

        Dim searchWord As String
        searchWord = "Select * From qiehe_HW7 where (Hero_Name Like '%" + tbTool.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchWord
    End Sub

    Protected Sub tbTool2_TextChanged(sender As Object, e As EventArgs) Handles tbTool2.TextChanged
        Dim searchWord As String
        searchWord = "Select * From qiehe_HW7 where (Hero_Name Like '%" + tbTool2.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchWord
    End Sub
End Class
