<%@ Page Language="VB" AutoEventWireup="false" CodeFile="keys.aspx.vb" Inherits="stripe_keys" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Eveve | Stripe Keys</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="~/css/main.css" />
    <noscript><link rel="stylesheet" href="~/css/noscript.css" /></noscript>
</head>
<body class="is-preload" style="background-image: url('../png/trianglify.png'); background-repeat: round;">
    <form id="FrmStripe" runat="server">
        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Main -->

            <section id="main">
                <asp:Image ID="ImgLogo" ImageUrl="~/jpg/EveveLogo.jpg" runat="server" />
                <h2>Stripe API Keys</h2>
                <h5>Secure Key Delivery</h5>
                <hr />
                <asp:Panel ID="PnlStripe" runat="server">
                    <div class="fields">
                        <div class="field">
                            <asp:TextBox ID="TxtEstName" MaxLength="50" placeholder="Restaurant Name" runat="server"></asp:TextBox>
                        </div>
                        <div class="field">
                            <asp:TextBox ID="TxtPublishableKey" TextMode="Password" placeholder="Publishable Key" runat="server"></asp:TextBox>
                        </div>
                        <div class="field">
                            <asp:TextBox ID="TxtSecretKey" TextMode="Password" placeholder="Secret Key" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" />
                </asp:Panel>
                <asp:Panel ID="PnlSuccess" Visible="false" runat="server">
                    <h2>Thank you</h2>
                    <asp:Label ID="LblSuccess" runat="server" Text="Keys Successfully Delivered"></asp:Label>
                </asp:Panel>
                <hr />
            </section>


            <!-- Footer -->
            <footer id="footer">
                <ul class="copyright">
                    <li>&copy; Eveve Ltd</li>
                </ul>
            </footer>

        </div>

        <!-- Scripts -->
        <script>
            if ('addEventListener' in window) {
                window.addEventListener('load', function () { document.body.className = document.body.className.replace(/\bis-preload\b/, ''); });
                document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? ' is-ie' : '');
            }
        </script>
    </form>
</body>
</html>
