<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="LocalizationSample.Home" meta:resourcekey="PageResource1" Culture="auto" UICulture="auto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblLanguage" runat="server" Text="Languages:" meta:resourcekey="lblLanguageResource1"></asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ddlLang" runat="server" meta:resourcekey="ddlLangResource1" AutoPostBack="True" OnSelectedIndexChanged="ddlLang_SelectedIndexChanged">
                            <asp:ListItem Text="English" Selected="True" Value="en-US" meta:resourcekey="ListItemResource1" />
                            <asp:ListItem Text="Thailand" Value="th-TH" meta:resourcekey="ListItemResource2" />
                            <asp:ListItem Text="Spanish" Value="es-BO" meta:resourcekey="ListItemResource3" />

                        </asp:DropDownList></td>
                </tr>


                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Hellow world!" meta:resourcekey="Label1Resource1"></asp:Label></td>
                    <td>
                        <asp:Label ID="lblMessage" runat="server" meta:resourcekey="lblMessageResource1"></asp:Label></td>

                </tr>
            </table>

        </div>
    </form>
</body>
</html>
