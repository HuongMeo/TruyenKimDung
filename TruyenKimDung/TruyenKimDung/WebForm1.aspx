<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TruyenKimDung.WebForm1" %>
<%@Register Src="~/Admin/Truyen/TruyenControl.ascx" TagPrefix="uc1" TagName="DSTruyen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <uc1:DSTruyen runat="server" ID="DSTruyen"/>
    
</asp:Content>
