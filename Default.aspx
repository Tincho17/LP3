<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    N° de Vuelo<br />
   <asp:TextBox ID="TextBox1" runat="server" MaxLength="10"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegexValidator" runat="server" 
    ControlToValidate="TextBox1" 
    ValidationExpression="^[A-Za-z0-9]{1,10}$"
    ErrorMessage="El número de vuelo debe tener un máximo de 10 caracteres alfanuméricos."
    Display="Dynamic"
    ForeColor="Red">
</asp:RegularExpressionValidator>
<asp:RequiredFieldValidator ID="RequiredValidator" runat="server" 
    ControlToValidate="TextBox1" 
    InitialValue="" 
    ErrorMessage="El número de vuelo es obligatorio."
    Display="Dynamic"
    ForeColor="Red">
</asp:RequiredFieldValidator>

    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Fecha y hora"></asp:Label>
<asp:TextBox ID="fechaHora" runat="server" TextMode="DateTimeLocal" ClientIDMode="Static"></asp:TextBox>
    <asp:Label ID="LabelError" runat="server" ForeColor="Red"></asp:Label>

    <br />
    <br />
    <br />

    <br />
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="" ForeColor="Green"></asp:Label>

    <br />
    <br />
    <br />
<asp:HyperLink ID="hyperLink" runat="server" NavigateUrl="~/Vuelos.aspx">[Registros]</asp:HyperLink>

    <br />
    <br />
    <br />
    <br />
</asp:Content>
