<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="refeitorioCrasto.aspx.cs" Inherits="EDC2015_G1_Project.refeitorioCrasto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h1>Refeitório do Crasto</h1>
            <div class="row">
                <div class="col-xs-8">
                    <h3>O que é?</h3>
                    <p>Inaugurado a 08 de junho de 2002, este edifício possui uma área bruta de 4.785m2 e localiza-se na Zona da Agra do Crasto.</p>
                    <p>A elaboração do projeto do Complexo do Crasto, esteve a cargo do arquiteto Aires Mateus & Associados, Lda.</p>
                    <p>O edifício subdivide-se em diferentes grupos funcionais: complexo de refeitórios e seus apoios, cafetaria, restaurante e padaria. A cantina / complexo de refeitórios, tem um total de 970 lugares sentados distribuídos por: salas de refeitório (660 lugares sentados), sala do Grill (174 lugares sentados), restaurante (72 lugares sentados) e cafetaria (64 lugares sentados) e poderá fornecer cerca de 1200 refeições por hora.</p>
                    <p>As refeições são pagas com senhas previamente adquiridas em máquinas automáticas.</p>
                </div>
            
                <div class="col-xs-4">
                    <br /><br />
                    <img src="Img/refeitorioCrasto.jpg" width="100%" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-4">
                        <img src="Img/crasto.jpg" width="100%" />
                </div>
                <div class="col-xs-4">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                         <h3 class="panel-title">Preços</h3>
                        </div>

                        <div class="panel-body">
                            <p><b>Estudantes (Licenciatura, Mestrado ou Doutoramento): </b></p>
                            <p>Ementa “Normal”, Dieta ou Vegetariana - € 2,50</p>
                            <p>Ementa “Opção” - €3</p>
                            <%-- <p><b>Trabalhadores Docentes, Não Docentes ou Investigadores</b></p>
                            <p>Ementa “Normal”, Dieta ou Vegetariana - € 4,10</p>
                            <p>Ementa “Opção” - € 5,10</p>
                            <p><b> Visitantes devidamente autorizados</b></p>
                            <p>Ementa “Normal”, Dieta ou Vegetariana - € 5,00</p>
                            <p>Ementa “Opção” - € 6,00</p>--%>
                        </div>
                    </div>
                </div>
                <div class="col-xs-2">
                    <div class="panel panel-warning">
                        <div class="panel-heading">
                         <h3 class="panel-title">Horários</h3>
                        </div>
                        <div class="panel-body">
                           <%-- <div class="panel panel-danger">
                                <div class="panel-heading">
                                    <h4 class="panel-title">De Seg a Sex: </h4>
                                </div>

                                <div class="panel-body">--%>
                                    <p><b><u>De Seg a Sex:</u></b></p>
                                    <p>Alm: 12h00 – 14h30</p>
                                <%--</div>
                              </div>
                            <br />
                            <div class="panel panel-danger">
                                <div class="panel-heading">
                                    <h4 class="panel-title">Sáb e Dom: </h4>
                                </div>

                                <div class="panel-body">--%>
                                    <p><b><u>Sáb e Dom:</u></b></p>
                                    <p>Alm: 13h00 – 14h30</p>
                                </div>
                              </div>
                        </div>
                <div class="col-xs-2">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <h4 class="panel-title">Cordenadas</h4>
                        </div>

                        <div class="panel-body">
                            <p><b>Latitude: </b>40°37'29.47"N</p>
                            <p><b>Longitude: </b>8°39'25.68"W</p>
                        </div>
                        </div>
                </div>
                 
               </div>
</asp:Content>
