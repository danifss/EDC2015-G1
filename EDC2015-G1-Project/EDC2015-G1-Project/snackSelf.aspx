<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="snackSelf.aspx.cs" Inherits="EDC2015_G1_Project.snackSelf" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h1>Snack-Bar / Self-Service</h1>
            <div class="row">
                <div class="col-xs-8">
                    <h3>O que é?</h3>
                    <p>O edifício do Snack-Bar / Self-Service é constituído por uma sala de refeitório e uma cafetaria e tem por base um projeto do arquiteto aveirense José Lopo Prata.</p>
                    <p>Esta unidade que se situa junto ao Complexo Residencial Universitário, fornece refeições por componentes e tem capacidade para fornecer cerca de 1000 refeições por dia.</p>

                </div>
            
                <div class="col-xs-4">
                    <br /><br />
                    <img src="Img/refeitorioSnack.jpg" width="100%" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-4">
                        <img src="Img/snack.jpg" width="100%" />
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
