﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ProductsList.ascx.cs" Inherits="UserControls_ProductsList" %>
<%@ Register Src="Pager.ascx" TagName="Pager" TagPrefix="uc1" %>

<uc1:Pager ID="topPager" runat="server" Visible="False" />
<asp:DataList ID="list" runat="server" OnSelectedIndexChanged="list_SelectedIndexChanged" RepeatColumns="2"
    CssClass="ProductList" OnItemDataBound="list_ItemDataBound">
    <ItemTemplate>
        <h3 class="ProductTitle">
            <a href="<%# Link.ToProduct(Eval("ProductID").ToString()) %>">
                <%# HttpUtility.HtmlEncode(Eval("Name").ToString()) %>      
            </a>
        </h3>
        <a href="<%# Link.ToProduct(Eval("ProductID").ToString()) %>">
            <img width="100" border="0"
                src="<%# Link.ToProductImage(Eval("Thumbnail").ToString()) %>"
                alt='<%# HttpUtility.HtmlEncode(Eval("Name").ToString())%>' />
        </a>
        <%# HttpUtility.HtmlEncode(Eval("Description").ToString()) %>
       
         <p class="DetailSection"> 
          Price: <%# Eval("Price", "{0:c}") %> </p>
        <asp:PlaceHolder ID="attrPlaceHolder" runat="server"></asp:PlaceHolder>



    </ItemTemplate>
</asp:DataList>
<uc1:Pager ID="bottomPager" runat="server" Visible="False" />