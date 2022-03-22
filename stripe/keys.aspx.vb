Imports System.IO

Partial Class stripe_keys
    Inherits System.Web.UI.Page

    Protected Sub BtnSubmit_Click(sender As Object, e As EventArgs) Handles BtnSubmit.Click
        Dim EstName As String = TxtEstName.Text.Replace(" ", "")
        Dim PK As String = TxtPublishableKey.Text
        Dim SK As String = TxtSecretKey.Text
        Dim SavePath As String = Server.MapPath("~/Stripe/Keys") & "/" & EstName

        If Not Directory.Exists(SavePath) Then
            Dim DI As DirectoryInfo = Directory.CreateDirectory(SavePath)
        End If
        'Create PK
        File.WriteAllText(SavePath & "/PK_" & EstName & ".txt", PK)
        'Create SK
        File.WriteAllText(SavePath & "/SK_" & EstName & ".txt", SK)

        PnlStripe.Visible = False
        PnlSuccess.Visible = True
    End Sub
End Class
