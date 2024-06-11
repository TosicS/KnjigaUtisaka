<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OAutoru.aspx.cs" Inherits="KnjigaUtisaka.OAutoru" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>
                <p>Knjiga Utisaka</p>
            </header>
        </div>

        <div class="menu">
            <asp:Button class="dumge" ID="Button1" runat="server" Text="Pocetna" OnClick="Button1_Click" />
            <asp:Button class="dumge" ID="Button2" runat="server" Text="O autoru" OnClick="Button2_Click" />
            <asp:Button class="dumge" ID="Button3" runat="server" Text="Uputstvo" OnClick="Button3_Click" />
        </div>
        
        <div id="tekst">Ako zeliti saznati vise o autoru posetite ovaj <a href="https://toosic.github.io/MySite/">sajt</a>.</div>
        
        <footer>
        <p>@ Muzej Srbije</p>
        </footer>

    </form>
</body>
</html>
