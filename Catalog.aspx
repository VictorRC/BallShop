<%@ Page Title="BallShop : Catalogo" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Catalog.aspx.cs" Inherits="Catalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1>    
<asp:Label ID="catalogTitleLabel" CssClass="CatalogTitle"
 runat="server" /> 
 </h1>  <h2>   
 <asp:Label ID="catalogDescriptionLabel" CssClass="CatalogDescription" 
runat="server" /> 
 </h2>  
[Place List of Products Here]
</asp:Content>
