<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DSChuongControl.ascx.cs" Inherits="TruyenKimDung.User.Chuong.DSChuongControl" %>
<div>MỤC LỤC</div>
<asp:Repeater ID="rptDSChuong" runat="server">
    <HeaderTemplate>
        <table>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td><a href="?f=truyen&fs=detail&id=<%#:Eval("truyenid")%>&c=mucluc&cs=detail&chuongid=<%#:Eval("chuongid")%>"><%#:Eval("tenchuong")%></a></td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
        
   

</asp:Repeater>