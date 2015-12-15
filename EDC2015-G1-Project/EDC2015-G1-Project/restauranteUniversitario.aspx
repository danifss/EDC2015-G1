<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="restauranteUniversitario.aspx.cs" Inherits="EDC2015_G1_Project.refeitorioUniversitario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Restaurante Universitario</h1>
        <div class="row">
                <div class="col-xs-8">
                    <h3>O que é?</h3>
                    <p>O Restaurante Universitário situa-se no piso 1 do Snack-Bar / Self-Service e integra uma sala de refeições e uma esplanada. É um projeto da autoria do arquiteto aveirense José Lopo Prata e tem uma capacidade para 80 lugares sentados.</p>
                    <p>Aberto a qualquer utente, funciona diariamente com serviços de buffet e à lista sempre que se justifique.</p>
                    <p>O serviço é personalizado, aceitando-se reservas para grupos que visitem ou trabalhem na universidade.</p>
                 </div>
            
                <div class="col-xs-4">
                    <br /><br />
                    <img src="Img/restauranteUniversitario.jpg" width="100%" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-4">
                        <img src="Img/universitario.jpg" width="100%" />
                </div>
                <div class="col-xs-4">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                         <h3 class="panel-title">Preços</h3>
                        </div>

                        <div class="panel-body">
                            <p><b>As refeições são pagas em dinheiro ou por Multibanco.</b></p>
                        </div>
                    </div>
                </div>
                <div class="col-xs-2">
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                         <h3 class="panel-title">Horários</h3>
                        </div>
                        <div class="panel-body">
                           <p><b><u>De Seg a Sex:</u></b></p>
                           <p>Alm: 12h00 – 14h30</p>
                        </div>
                      </div>
                    </div>
                <div class="col-xs-2">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <h4 class="panel-title">Cordenadas</h4>
                        </div>

                        <div class="panel-body">
                            <p><b>Latitude: </b>40°37'52.38"N</p>
                            <p><b>Longitude: </b>8°39'19.92"W</p>
                        </div>
                        </div>
                </div>
               </div>
</asp:Content>
