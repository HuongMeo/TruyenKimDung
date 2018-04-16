<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DSTruyenControl.ascx.cs" Inherits="TruyenKimDung.User.Truyen.DSTruyenControl" %>
<div>CÁC BỘ TRUYỆN</div>
<asp:Repeater ID="rptDSTruyen" runat="server">
            <HeaderTemplate>
                <table style="width:100%">
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td colspan="2"><a href='?f=truyen&fs=detail&id=<%#:Eval("truyenid")%>&fd=mucluc' class="title"><%#:Eval("tentruyen") %></a></td>
                </tr>
                <tr>
                    <td style="vertical-align:top;"><img src="../../temp/images/<%#:Eval("hinhanh") %>" width="120px" style="padding: 5px 0px 5px 0px"/></td>
                    <td style="vertical-align:top;"><%#:Eval("tomtat") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>