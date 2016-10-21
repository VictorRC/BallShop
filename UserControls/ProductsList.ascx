<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductsList.ascx.cs" Inherits="UserControls_ProductsList" %>
<%@ Register src="Pager.ascx" tagname="Pager" tagprefix="uc1" %>

<uc1:Pager ID="topPager" runat="server" Visible="False" />
<asp:DataList ID="list" runat="server">
</asp:DataList>
<uc1:Pager ID="bottomPager" runat="server" Visible="False" />

