<%@ Page Title="Bienvenido a RS21 Nicaragua!" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="UserControls/ProductsList.ascx" TagName="ProductsList" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="margin-left:25px">
        <h1>
            <span class="CatalogTitle">Bienvenidos a RS21 Nicaragua Online Shop</span>
        </h1>
        <h2>
            <span class="CatalogDescription">Les ofrecemos una oferta especial para esta semana:</span>
        </h2>
        &nbsp;<uc1:ProductsList ID="ProductsList1" runat="server" />
    </div>
</asp:Content>