<%@ Page Title="Menus for Week" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="menuWeek.aspx.cs" Inherits="EDC2015_G1_Project.menuWeek" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="jumbotron">
        <ul class="nav nav-tabs">
            <li class=""><asp:LinkButton ID="Santiago" runat="server"  OnClick="Santiago_Click"> Santiago</asp:LinkButton></li>
            <li class=""><asp:LinkButton  ID="Crasto" runat="server" OnClick="Crasto_Click" >Crasto</asp:LinkButton></li>
            <li class=""><asp:LinkButton  ID="Restaurante" runat="server" OnClick ="Restaurante_Click">Restaurante</asp:LinkButton></li>
            <li class=""><asp:LinkButton ID="SnackSelf" runat="server" OnClick="Snack_Click">Snack-Bar/Self</asp:LinkButton></li>
            <li class=""><asp:LinkButton ID="ESTGA" runat="server" OnClick="ESTGA_Click">ESTGA</asp:LinkButton></li>
            <li class=""><asp:LinkButton ID="ESAN" runat="server" OnClick="ESAN_Click">ESAN</asp:LinkButton></li>
        </ul>
    </div>

    <asp:Label runat="server" ID="local" Visible="false"></asp:Label>

    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade active in" id="santiago">
            <div class="row">
                <div class ="col-xs-1"></div>
                <div class="col-xs-5">
                   <b><asp:Label ID="almoco" runat="server" Text="Almoço"></asp:Label></b>   
                    <br />             
                   <asp:DetailsView  ID="DetailsView1" runat="server" AutoGenerateRows="True" DataSourceID="ementasByDayAlmocoSantiago" Height="50px" Width="427px">

                    </asp:DetailsView>
                    <br />
                    <b><asp:Label ID="jantar" runat="server" Text="Jantar"></asp:Label></b>   
                    <br />
                    <asp:DetailsView  ID="DetailsView2" runat="server" AutoGenerateRows="True" DataSourceID="ementasByDayJantarSantiago" Height="50px" Width="427px">
                      
                    </asp:DetailsView>

                </div>
                <div class="col-xs-6">
                    <asp:Image  runat="server" id="Bar" ImageUrl="Img/santiago.jpg" Width="100%" />
                </div>
            </div>
        </div>
    </div>



    <asp:XmlDataSource ID="ementasByDayAlmocoSantiago" runat="server" DataFile="http://services.web.ua.pt/sas/ementas?date=week&place=all" TransformFile="~/Trans/almocoSantiago.xslt" />
    <asp:XmlDataSource ID="ementasByDayJantarSantiago" runat="server" DataFile="http://services.web.ua.pt/sas/ementas?date=week&place=all" TransformFile="~/Trans/jantarSantiago.xslt" />

    <asp:XmlDataSource ID="ementasByDayAlmocoCrasto" runat="server" DataFile="http://services.web.ua.pt/sas/ementas?date=week&place=all" TransformFile="~/Trans/almocoCrasto.xslt" />
    <asp:XmlDataSource ID="ementasByDayJantarCrasto" runat="server" DataFile="http://services.web.ua.pt/sas/ementas?date=week&place=all" TransformFile="~/Trans/jantarCrasto.xslt" />

    <asp:XmlDataSource ID="ementasByDayAlmocoUniversitario" runat="server" DataFile="http://services.web.ua.pt/sas/ementas?date=week&place=all" TransformFile="~/Trans/almocoUniversitario.xslt" />
    <asp:XmlDataSource ID="ementasByDayJantarUniversitario" runat="server" DataFile="http://services.web.ua.pt/sas/ementas?date=week&place=all" TransformFile="~/Trans/jantarUniversitario.xslt" />

    <asp:XmlDataSource ID="ementasByDayAlmocoSnack" runat="server" DataFile="http://services.web.ua.pt/sas/ementas?date=week&place=all" TransformFile="~/Trans/almocoSnack.xslt" />
    <asp:XmlDataSource ID="ementasByDayJantarSnack" runat="server" DataFile="http://services.web.ua.pt/sas/ementas?date=week&place=all" TransformFile="~/Trans/jantarSnack.xslt" />

    <asp:XmlDataSource ID="ementasByDayAlmocoEstga" runat="server" DataFile="http://services.web.ua.pt/sas/ementas?date=week&place=all" TransformFile="~/Trans/almocoEstga.xslt" />
    <asp:XmlDataSource ID="ementasByDayJantarEstga" runat="server" DataFile="http://services.web.ua.pt/sas/ementas?date=week&place=all" TransformFile="~/Trans/jantarEstga.xslt" />

    <asp:XmlDataSource ID="ementasByDayAlmocoEsan" runat="server" DataFile="http://services.web.ua.pt/sas/ementas?date=week&place=all" TransformFile="~/Trans/almocoEsan.xslt" />
    <asp:XmlDataSource ID="ementasByDayJantarEsan" runat="server" DataFile="http://services.web.ua.pt/sas/ementas?date=week&place=all" TransformFile="~/Trans/jantarEsan.xslt" />

</asp:Content>
