<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frmalimentacion.aspx.cs" Inherits="alimentacion.Frmalimentacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: medium;
            font-weight: bold;
        }
        .auto-style4 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: medium;
            font-weight: bold;
            width: 534px;
        }
        .auto-style5 {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            font-size: medium;
            font-weight: bold;
            width: 465px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">Escoga el plato fuerte</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="Ddlplato" runat="server" AutoPostBack="True" Font-Size="Medium" OnSelectedIndexChanged="Ddlplato_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Desayuno</asp:ListItem>
                        <asp:ListItem>Almuerzo</asp:ListItem>
                        <asp:ListItem>Cena</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Lblplato" runat="server" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Eliga su bebida</td>
                <td class="auto-style4">
                    <asp:RadioButtonList ID="Rblbebida" runat="server" AutoPostBack="True" Font-Size="Medium" OnSelectedIndexChanged="Rblbebida_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Jugo</asp:ListItem>
                        <asp:ListItem>Gaseosa</asp:ListItem>
                        <asp:ListItem>Cerveza</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Lblbebida" runat="server" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Propina</td>
                <td class="auto-style4">
                    <asp:CheckBox ID="Cbpropina" runat="server" Font-Size="Medium" OnCheckedChanged="Cbpropina_CheckedChanged" AutoPostBack="True" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Lblpropina" runat="server" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Iva</td>
                <td class="auto-style4">
                    <asp:CheckBox ID="Cbiva" runat="server" Font-Size="Medium" OnCheckedChanged="Cbiva_CheckedChanged" AutoPostBack="True" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Lbliva" runat="server" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="Btncalcular" runat="server" Font-Bold="True" Font-Size="Medium" OnClick="Btncalcular_Click" Text="Calcular total" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Btnlimpiar" runat="server" Font-Bold="True" Font-Size="Medium" Text="Limpiar" OnClick="Btnlimpiar_Click" />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Lbltotal" runat="server" Font-Size="Medium"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
