<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="CalvinTruongLab02._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calvin Truong's Website Lab02</title>

    <link rel="stylesheet" type="text/css" href="Style/default.css" />

    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>

    <img alt="Logo" longdesc="Logo of the website" class="logo" src="Images/logo.jpg" />
</head>
<body>
    <form runat="server">
        <table class="table">
            <tr>
                <td>Monthly Investment</td>
                <td>
                    <asp:DropDownList ID="DropDownList" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Annual Interest Rate</td>
                <td>
                    <asp:TextBox ID="txt_Annual" CssClass="TextBox" runat="server">1</asp:TextBox>
                    <asp:RangeValidator ID="valid_Annual" runat="server" ControlToValidate="txt_Annual" ErrorMessage="Interest must range from 1 to 23." MaximumValue="23" MinimumValue="1" Type="Double"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Number of Years</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txt_Years" CssClass="TextBox" runat="server">1</asp:TextBox>
                    <asp:RangeValidator ID="valid_Years" runat="server" ControlToValidate="txt_Years" ErrorMessage="Number of Years should be between 1 and 45" MaximumValue="45" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>Future Value</td>
                <td>
                    <asp:Label ID="lbl_FutureValue" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn_Calc" CssClass="Button" runat="server" Text="Calculate" OnClick="ButtonCalculate" />
                </td>
                <td>
                    <asp:Button ID="btn_clr" CssClass="Button" runat="server" Text="Clear" OnClick="ButtonClear" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
