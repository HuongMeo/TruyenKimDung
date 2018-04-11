<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DanhSachTruyenControl.ascx.cs" Inherits="TruyenKimDung.Admin.Truyen.DanhSachTruyenControl" %>
<div>DANH SÁCH CÁC TRUYỆN</div>
<asp:Repeater ID="rptDSTruyen" runat="server">
    <HeaderTemplate>
        <table style="width:100%">
            <tr>
                <td style="width:100px">Tên truyện</td>
                <td style="width:300px">Tóm tắt</td>
                <td style="width:100px">Số chương</td>
                <td></td>
            </tr>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td><%#:Eval("tentruyen") %></td>
            <td><%#:Eval("tomtat") %></td>
            <td><%#:Eval("sochuong") %></td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>

        
    
</asp:Repeater>