<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DanhSachTruyenControl.ascx.cs" Inherits="TruyenKimDung.Admin.Truyen.DanhSachTruyenControl" %>

<div>DANH SÁCH CÁC TRUYỆN</div>
<asp:Multiview ID="mul" runat="server" ActiveViewIndex="0">
    <asp:View ID="v1" runat="server">
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
        <form runat="server">
            <div><asp:LinkButton ID="lnkThemTruyen" runat="server" OnClick="lnkThemTruyen_Click">Thêm mới</asp:LinkButton></div>
        </form>
        
    </asp:View>
    <asp:View ID="V2" runat="server">
        <form runat="server">
            <table>
            <tr>
                <td>Tên truyện</td>
                
                    <td><asp:TextBox ID="txtTenTruyen" runat="server"></asp:TextBox></td>
           
                
            </tr>
            <tr>
                <td>Tóm tắt</td>
                
                <td><asp:TextBox ID="txtTomTat" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Số chương</td>
                <td><asp:TextBox ID="txtSoChuong" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button id="btnCapNhat" runat="server" Text="Cập nhật"/></td>
            </tr>
        </table>
        </form>
        
    </asp:View>
</asp:Multiview>
