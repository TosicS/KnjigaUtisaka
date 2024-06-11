<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="KnjigaUtisaka.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/StyleSheet1.css" rel="stylesheet" />
    <!-- <link rel="stylesheet" href="~/../../CSS/style.css"> treba se drugacije poveze css i treba da se napravi folder koji se zove css -->
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

        
    <div class="tabela">
            <table class="auto-style1">
        <tr>
            <td class="info">IME:</td>
            <td class="element">
                <asp:TextBox class="sirina" ID="TextBoxIme" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxIme" Display="Dynamic" ErrorMessage="Niste uneli ime!" ValidationGroup="validationGroup1">*</asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td class="info">EMAIL:</td>
            <td class="element">
                <asp:TextBox class="sirina" ID="TextBoxEmail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" Display="Dynamic" ErrorMessage="Niste uneli email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="validationGroup1">*</asp:RegularExpressionValidator>
            </td>

        </tr>
        <tr>
            <td class="info" id="kom">KOMENTAR:</td>
            <td class="element" rowspan="3">
                <asp:TextBox class="sirina" ID="TextBoxOpis" style="height:100px" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td rowspan="3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxOpis" Display="Dynamic" ErrorMessage="Niste uneli komentar!" ValidationGroup="validationGroup1">*</asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td class="info">&nbsp;</td>

        </tr>
        <tr>
            <td class="info">&nbsp;</td>

        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="element">
                <asp:Button ID="ButtonDodaj" style="width:80%" runat="server" Text="Dodaj komentar" OnClick="ButtonDodaj_Click" ValidationGroup="validationGroup1" />
            </td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>

        </tr>
</table>
    </div>

        <footer>
        <p>@ Muzej Srbije</p>
        </footer>
        
    </form>

    </body>
</html>
