<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminControl.ascx.cs" Inherits="TruyenKimDung.Admin.WebUserControl1" %>
<%@ Register src="Menu.ascx" tagname="Menu" tagprefix="uc1" %>
<div>Banner</div>
<table>
    <tr>
        <td style="width:200px"><uc1:Menu ID="Menu1" runat="server" /></td>
        <td style="width:10px">&nbsp</td>
        <td><asp:PlaceHolder ID="plLoad" runat="server"></asp:PlaceHolder></td>
    </tr>
</table>