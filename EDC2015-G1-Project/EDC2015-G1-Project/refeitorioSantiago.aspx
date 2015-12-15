<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="refeitorioSantiago.aspx.cs" Inherits="EDC2015_G1_Project.refeitorioSantiago" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Refeitório de Santiago</h1>
             <div class="row">
                <div class="col-xs-8">
                    <h3>O que é?</h3>
                    <p>O edifício onde funciona o Refeitório de Santiago compreende um projeto da autoria do arquiteto Rebello de Andrade (constituído por uma área de 1.200 metros quadrados).</p>
                    <p>O Refeitório de Santiago, constituído por duas salas de 400 lugares cada, situa-se no edifício central dos Serviços de Ação Social, onde podem ser fornecidas cerca de 4.000 refeições por dia.</p>
                    <p>As refeições são pagas através de senhas, previamente adquiridas em máquinas automáticas localizadas no átrio do refeitório, no piso 0 do edifício sede e diversos outros locais.</p>
                </div>
            
                <div class="col-xs-4">
                    <br /><br />
                    <img src="Img/refeitorioSantiago.jpg" width="100%" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-xs-4">
                        <img src="Img/santiago.jpg" width="100%" />
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
                            <p>"Prato simples” - €2</p>
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
                                    <p>Jnt: 18h30 – 20h30</p>
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
                                    <p>Jnt: 19h00 – 20h30</p>
                                </div>
                              </div>
                        </div>
                <div class="col-xs-2">
                    <div class="panel panel-danger">
                        <div class="panel-heading">
                            <h4 class="panel-title">Cordenadas</h4>
                        </div>

                        <div class="panel-body">
                            <p><b>Latitude: </b>40°37'50.87"N</p>
                            <p><b>Longitude: </b>8°39'33.05"W</p>
                        </div>
                        </div>
                </div>
                 
               </div>
</asp:Content>
