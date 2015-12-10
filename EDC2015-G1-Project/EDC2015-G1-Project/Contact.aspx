<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="EDC2015_G1_Project.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    <div class="row">
        <h3>How to contact us</h3>
        <address>
            Universidade de Aveiro<br />
            Aveiro, Portugal<br />
            <abbr title="Email">E:</abbr>support.papinha@gmail.com
        </address>

        <address>
            <strong>Daniel Silva:</strong>   <a href="mailto:daniel.silva@ua.pt">daniel.silva@ua.pt</a><br />
            <strong>João Cravo:</strong> <a href="mailto:joao.cravo@ua.pt">joao.cravo@ua.pt</a>
        </address>
    </div>
</asp:Content>
