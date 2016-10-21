<%@ Page Title="RS21 : Catalogo" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Catalog.aspx.cs" Inherits="Catalog" %>

<%@ Register Src="UserControls/ProductsList.ascx" TagName="ProductsList" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-left:25px">
    <h1>
        <asp:Label ID="catalogTitleLabel" CssClass="CatalogTitle"
            runat="server" />
    </h1>
    <h2>
        <asp:Label ID="catalogDescriptionLabel" CssClass="CatalogDescription"
            runat="server" />
    </h2>
    &nbsp;<uc1:ProductsList ID="ProductsList1" runat="server" />
        </div>
</asp:Content>