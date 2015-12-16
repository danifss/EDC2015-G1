<%@ Page Title="Marcar Senhas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="marcarSenha.aspx.cs" Inherits="EDC2015_G1_Project.marcarSenha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">

        <div class="row">
            <div class="col-xs-1"></div>
            <div class="col-xs-10">
                <ul class="nav nav-tabs">
                    <li class=""><asp:LinkButton ID="LinkButton1" runat="server"  OnClick="Santiago_Click">Santiago</asp:LinkButton></li>
                    <li class=""><asp:LinkButton  ID="LinkButton2" runat="server" OnClick="Crasto_Click" >Crasto</asp:LinkButton></li>
                    <li class=""><asp:LinkButton  ID="Restaurante" runat="server" OnClick ="Restaurante_Click">Restaurante</asp:LinkButton></li>
                    <li class=""><asp:LinkButton ID="SnackSelf" runat="server" OnClick="Snack_Click">Snack-Bar/Self</asp:LinkButton></li>
                    <li class=""><asp:LinkButton ID="LinkButton3" runat="server" OnClick="ESTGA_Click">ESTGA</asp:LinkButton></li>
                    <li class=""><asp:LinkButton ID="LinkButton4" runat="server" OnClick="ESAN_Click">ESAN</asp:LinkButton></li>
                </ul>
            </div>
            <div class="col-xs-1"></div>
        </div>
    </div>

    <div id="myTabContent" class="row tab-content">

        <div class="tab-pane fade active in">

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

            <div class="row form-group">
                <div class="col-xs-2"></div>
                <div class="col-xs-2">
                    <h5 class="text-capitalize">Refeição</h5>
                </div>
                <div class="col-xs-2">
                    <asp:CheckBox ID="chkAlmoco" runat="server" Checked="true" Text="Almoço" CssClass="checkbox form-control" />
                </div>
                <div class="col-xs-2">
                    <asp:CheckBox ID="chkJantar" runat="server" Checked="true" Text="Jantar" CssClass="checkbox form-control" />
                </div>
                <div class="col-xs-4">
                    <asp:Button ID="btnReservar1" runat="server" CssClass="btn btn-group-sm btn-success" Text="Reservar" Visible="true" OnClick="btnReservarSantiago_Click" />
                    <asp:Button ID="btnReservar2" runat="server" CssClass="btn btn-group-sm btn-success" Text="Reservar" Visible="false" OnClick="btnReservarCrasto_Click" />
                    <asp:Button ID="btnReservar3" runat="server" CssClass="btn btn-group-sm btn-success" Text="Reservar" Visible="false" OnClick="btnReservarRestaurante_Click" />
                    <asp:Button ID="btnReservar4" runat="server" CssClass="btn btn-group-sm btn-success" Text="Reservar" Visible="false" OnClick="btnReservarSnack_Click" />
                    <asp:Button ID="btnReservar5" runat="server" CssClass="btn btn-group-sm btn-success" Text="Reservar" Visible="false" OnClick="btnReservarESTGA_Click" />
                    <asp:Button ID="btnReservar6" runat="server" CssClass="btn btn-group-sm btn-success" Text="Reservar" Visible="false" OnClick="btnReservarESAN_Click" />
                    <asp:Label ID="lblError_checkBox" runat="server" Text="Tem de selecionar pelo menos uma opção!" Visible="false" CssClass="text-danger" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-2"></div>
                <div class="col-xs-2"></div>
                <div class="col-xs-4">
                    
                </div>
            </div>
        </div>

    <br />
    <div class="row">
        <div class="col-md-6">
            <h4>Gerir Reservas</h4>
        </div>
        <div class="col-md-6">
            <h4>As minhas Reservas</h4>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-4">

            <asp:FormView ID="FormView_reservations" runat="server" DataSourceID="reservasXmlDataSource" CssClass="table table-condensed table-responsive form-group-sm" AllowPaging="True" DataKeyNames="ID" OnItemUpdating="FormView_reservations_ItemUpdating" OnItemDeleting="FormView_reservations_ItemDeleting" EmptyDataText="Faça uma reserva">
                <EditItemTemplate>
                    <asp:Label ID="idLabel" runat="server" Visible="false" Text='<%# Bind("ID") %>' />
                    <span class="form-control">Cantina:</span>
                    <asp:TextBox ID="CantinaTextBox" runat="server" Text='<%# Bind("Cantina") %>' CssClass="form-control" />
                    <br />
                    <span class="form-control">Data:</span>
                    <asp:TextBox ID="DataTextBox" runat="server" Text='<%# Bind("Data") %>' CssClass="form-control" />
                    <br />
                    <span class="form-control">Dia:</span>
                    <asp:TextBox ID="DiaTextBox" runat="server" Text='<%# Bind("Dia") %>' CssClass="form-control" />
                    <br />
                    <span class="form-control">Lugares:</span>
                    <asp:TextBox ID="LugaresTextBox" runat="server" Text='<%# Bind("Lugares") %>' CssClass="form-control" />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" CssClass="btn btn-md glyphicon glyphicon-check" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-md glyphicon glyphicon-remove" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="idLabel" runat="server" Visible="false" Text='<%# Bind("ID") %>' />
                    <b>Cantina:</b>
                    <asp:Label ID="CantinaLabel" runat="server" Text='<%# Bind("Cantina") %>' />
                    <br />
                    <b>Data:</b>
                    <asp:Label ID="DataLabel" runat="server" Text='<%# Bind("Data") %>' />
                    <br />
                    <b>Dia:</b>
                    <asp:Label ID="DiaLabel" runat="server" Text='<%# Bind("Dia") %>' />
                    <br />
                    <b>Lugares:</b>
                    <asp:Label ID="LugaresLabel" runat="server" Text='<%# Bind("Lugares") %>' />
                    <br />
                    <asp:LinkButton ID="LinkButtonEdit" runat="server" CausesValidation="False" CommandName="Edit" CssClass="btn btn-md glyphicon glyphicon-edit"/>
                    <asp:LinkButton ID="LinkButtonDelete" runat="server" CausesValidation="False" CommandName="Delete" CssClass="btn btn-md glyphicon glyphicon-remove"/>
                </ItemTemplate>
            </asp:FormView>
        
        </div>
        <div class="col-xs-8">

            <asp:GridView ID="GridView1" runat="server" DataSourceID="reservasXmlDataSource" AutoGenerateRows="False" AutoGenerateColumns="False" CssClass="table table-hover table-condensed table-bordered table-responsive" AllowPaging="True" EmptyDataText="Faça uma reserva">
                <Columns>
                    <asp:BoundField DataField="Cantina" HeaderText="Cantina" SortExpression="Cantina" />
                    <asp:BoundField DataField="Refeicao" HeaderText="Refeição" SortExpression="Refeição" />
                    <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
                    <asp:BoundField DataField="Dia" HeaderText="Dia" SortExpression="Dia" />
                    <asp:BoundField DataField="Lugares" HeaderText="Lugares" SortExpression="Lugares" />
                </Columns>
                <RowStyle CssClass="" />
                <HeaderStyle CssClass="success" />
            </asp:GridView>

        </div>
    </div>

    <asp:XmlDataSource ID="reservasXmlDataSource" runat="server" DataFile="~/XML/reservas.xml" TransformFile="~/XML/reservas.xslt" />
    <asp:XmlDataSource ID="saveXmlDataSource" runat="server" DataFile="~/XML/reservas.xml" />

    <br />
</asp:Content>
