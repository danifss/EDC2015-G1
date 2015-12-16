<%@ Page Title="Menus for Week" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="menuWeek.aspx.cs" Inherits="EDC2015_G1_Project.menuWeek" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Ementa da Semana</h1>
    <div class="jumbotron">
        <ul class="nav nav-tabs">
            <li class="active"><a href="#santiago" data-toggle="tab" aria-expanded="true">Santiago</a></li>
            <li class=""><a href="#crasto" data-toggle="tab" aria-expanded="false">Crasto</a></li>
            <li class=""><a href="#rest" data-toggle="tab" aria-expanded="false">Restaurante</a></li>
            <li class=""><a href="#snack" data-toggle="tab" aria-expanded="false">Snack-Bar/Self</a></li>
            <li class=""><a href="#estga" data-toggle="tab" aria-expanded="false">ESTGA</a></li>
            <li class=""><a href="#esan" data-toggle="tab" aria-expanded="false">ESAN</a></li>
            <li class="disabled"><a>All Places</a></li>
        </ul>
    </div>

    <div id="myTabContent" class="tab-content">
        
        <div class="tab-pane fade active in" id="santiago">
            <div class="row">
                <div class="col-xs-8">

                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped table-hover table-condensed" AutoGenerateColumns="False" DataSourceID="ementasByDay">
                        <Columns>
                            <asp:BoundField DataField="cantina" HeaderText="cantina" SortExpression="cantina" />
                            <asp:BoundField DataField="sopa" HeaderText="sopa" SortExpression="sopa" />
                        </Columns>
                    </asp:GridView>

                </div>
                <div class="col-xs-4">
                    <img src="Img/santiago.jpg" width="100%" />
                </div>
            </div>
        </div>


        <div class="tab-pane fade" id="crasto">
            <div class="row">
                <div class="col-xs-8">
                </div>
                <div class="col-xs-4">
                    <img src="Img/crasto.jpg" width="100%" />
                </div>
            </div>
        </div>
        
        
        <div class="tab-pane fade" id="rest">
            <div class="row">
                <div class="col-xs-8">
                </div>
                <div class="col-xs-4">
                    <img src="Img/universitario.jpg" width="100%" />
                </div>
            </div>
        </div>
        
        
        <div class="tab-pane fade" id="snack">
            <div class="row">
                <div class="col-xs-8">
                </div>
                <div class="col-xs-4">
                    <img src="Img/snack.jpg" width="100%" />
                </div>
            </div>
        </div>
        
        
        <div class="tab-pane fade" id="estga">
            <div class="row">
                <div class="col-xs-8">
                </div>
                <div class="col-xs-4">
                    <img src="Img/estga.jpg" width="100%" />
                </div>
            </div>
        </div>
        
        
        <div class="tab-pane fade" id="esan">
            <div class="row">
                <div class="col-xs-8">
                </div>
                <div class="col-xs-4">
                    <img src="Img/esan2.jpg" width="100%" />
                </div>
            </div>
        </div>
    </div>


    <asp:XmlDataSource ID="ementasByDay" runat="server" DataFile="http://services.web.ua.pt/sas/ementas?date=week&place=all" TransformFile="~/XML/menuParse.xslt" />

</asp:Content>
