<%@ Control Language="C#" AutoEventWireup="true" CodeFile="DepartmentsList.ascx.cs" Inherits="UserControls_DepartmentsList" %>
<asp:DataList ID="list" runat="server" Width="200px" CssClass="DepartmentsList">
    <HeaderStyle CssClass="DepartmentsListHead" />
    <HeaderTemplate>
        Elija un Departamento
    </HeaderTemplate>
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server"
            NavigateUrl='<%# Link.ToDepartment(Eval("DepartmentID").ToString())%>' 
            Text='<%# HttpUtility.HtmlEncode(Eval("Name").ToString()) %>' 
            ToolTip='<%# HttpUtility.HtmlEncode(Eval("Description").ToString()) %>' 
            CssClass='<%# Eval("DepartmentID").ToString() == Request.QueryString["DepartmentID"] ? "DepartmentSelected" : "DepartmentUnselected" %>'>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:HyperLink>
    </ItemTemplate>
</asp:DataList>

