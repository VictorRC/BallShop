<%@ Page Title="RS21 Nicaragua: Detalle del Producto" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="margin-left:25px">
<p>
<asp:Label CssClass="CatalogTitle" ID="titleLabel" runat="server"
Text="Label"></asp:Label>
</p>
<p>
<asp:Image ID="productImage" runat="server" Height="200px" Width="200px" />
</p>
<p>
<asp:Label ID="descriptionLabel" runat="server" Text="Label"></asp:Label>
</p>
<p>
<b>Price:</b>
<asp:Label CssClass="ProductPrice" ID="priceLabel" runat="server" Text="Label"></asp:Label>
</p>
    </div>
</asp:Content>