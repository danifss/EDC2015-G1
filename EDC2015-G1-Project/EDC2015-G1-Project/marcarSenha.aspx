<%@ Page Title="Marcar Senhas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="marcarSenha.aspx.cs" Inherits="EDC2015_G1_Project.marcarSenha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div class="row">
            <div class="col-xs-1"></div>
            <div class="col-xs-10">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#santiago" data-toggle="tab" aria-expanded="true">Santiago</a></li>
                    <li class=""><a href="#crasto" data-toggle="tab" aria-expanded="false">Crasto</a></li>
                    <li class=""><a href="#rest" data-toggle="tab" aria-expanded="false">Restaurante</a></li>
                    <li class=""><a href="#snack" data-toggle="tab" aria-expanded="false">Snack-Bar/Self</a></li>
                    <li class=""><a href="#estga" data-toggle="tab" aria-expanded="false">ESTGA</a></li>
                    <li class=""><a href="#esan" data-toggle="tab" aria-expanded="false">ESAN</a></li>
                </ul>
            </div>
            <div class="col-xs-1"></div>
        </div>
    </div>

    <div id="myTabContent" class="row tab-content">

        <div class="tab-pane fade active in" id="santiago">

            <div class="row">
                <div class="col-xs-2"></div>
                <div class="col-xs-2">
                    <h5 class="text-capitalize">Nº de Senhas</h5>
                </div>
                <div class="col-xs-4">
                    <asp:DropDownList ID="ddlNumberTickets" runat="server" CssClass="form-control">
                        <asp:ListItem Text="1 Senha" Value="1" Selected="True" />
                        <asp:ListItem Text="2 Senhas" Value="2" />
                        <asp:ListItem Text="3 Senhas" Value="3" />
                        <asp:ListItem Text="4 Senhas" Value="4" />
                        <asp:ListItem Text="5 Senhas" Value="5" />
                        <asp:ListItem Text="6 Senhas" Value="6" />
                        <asp:ListItem Text="7 Senhas" Value="7" />
                        <asp:ListItem Text="8 Senhas" Value="8" />
                        <asp:ListItem Text="9 Senhas" Value="9" />
                        <asp:ListItem Text="10 Senhas" Value="10" />
                    </asp:DropDownList>
                </div>
                <div class="col-xs-4"></div>
            </div>

            <div class="row">
                <div class="col-xs-2"></div>
                <div class="col-xs-2">
                    <h5 class="text-capitalize">Refeição</h5>
                </div>
                <div class="col-xs-4">
                    <asp:CheckBox ID="chkAlmoco" runat="server" Checked="true" Text="Almoço" CssClass="checkbox form-control" />
                    <asp:CheckBox ID="chkJantar" runat="server" Checked="true" Text="Jantar" CssClass="checkbox form-control" />
                    <asp:Label ID="lblError_checkBox" runat="server" Text="Tem de selecionar pelo menos uma opção!" Visible="false" CssClass="text-danger" />
                </div>
                <div class="col-xs-4"></div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-2"></div>
                <div class="col-xs-2"></div>
                <div class="col-xs-4">
                    <asp:Button ID="btnReservarSantiago" runat="server" CssClass="btn btn-group-sm btn-default" Text="Reservar" OnClick="btnReservarSantiago_Click" />
                </div>
            </div>
        </div>


        <div class="tab-pane fade" id="crasto">
            <p>crasto</p>
        </div>


        <div class="tab-pane fade" id="rest">
            <p>rest</p>
        </div>


        <div class="tab-pane fade" id="snack">
            <p>snack</p>
        </div>


        <div class="tab-pane fade" id="estga">
            <p>estga</p>
        </div>


        <div class="tab-pane fade" id="esan">
            <p>esan</p>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-2"></div>
        <div class="col-xs-8">
<%--            <asp:FormView ID="FormView_reservations" runat="server" DataSourceID="reservasXmlDataSource" CssClass="table table-striped table-hover table-condensed">

            </asp:FormView>--%>

            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="true" DataSourceID="reservasXmlDataSource" >

            </asp:DetailsView>

<%--                <ItemTemplate>
                    Reserva:
                    <asp:Label ID="ReservaLabel" runat="server" Text='<%# Bind("Id") %>' />
                    <br />
                    Data:
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Bind("Data") %>' />
                    <br />
                </ItemTemplate>--%>
        </div>
        <div class="col-xs-2"></div>
    </div>

    <asp:XmlDataSource ID="reservasXmlDataSource" runat="server" DataFile="~/XML/reservas.xml" TransformFile="~/XML/reservas.xslt" />

    <br />
</asp:Content>
