<%@ Page Title="Menus for Day" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="menuDay.aspx.cs" Inherits="EDC2015_G1_Project.menuDay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <ul class="nav nav-tabs">
            <li class=""><asp:LinkButton ID="Santiago" runat="server"  OnClick="Santiago_Click"> Santiago</asp:LinkButton></li>
            <li class=""><asp:LinkButton  ID="Crasto" runat="server" OnClick="Crasto_Click" >Crasto</asp:LinkButton></li>
            <li class=""><asp:LinkButton  ID="Restaurante" runat="server" OnClick ="Restaurante_Click">Restaurante</asp:LinkButton></li>
            <li class=""><asp:LinkButton ID="SnackSelf" runat="server" OnClick="Snack_Click">Snack-Bar/Self</asp:LinkButton></li>
            <li class=""><asp:LinkButton ID="ESTGA" runat="server" OnClick="ESTGA_Click">ESTGA</asp:LinkButton></li>
            <li class=""><asp:LinkButton ID="ESAN" runat="server" OnClick="ESAN_Click">ESAN</asp:LinkButton></li>
            <%--<li class="disabled"><a>All Places</a></li>--%>
        </ul>
    </div>
    
    <asp:Label runat="server" ID="local" Visible="false"></asp:Label>

    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade active in" id="santiago">
            <div class="row">
                <div class ="col-xs-1"></div>
                <div class="col-xs-5">
               <%-- <asp:DropDownList AutoPostBack="true" ID="DropDownList1" runat="server" CssClass="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Text="Almoço" Value="Almoço"  />
                    <asp:ListItem Text="Jantar" Value="Jantar" />
                </asp:DropDownList>--%>
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


        <%--<div class="tab-pane fade" id="crasto">
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
        </div>--%>
    </div>



    <asp:XmlDataSource ID="ementasByDayAlmocoSantiago" runat="server" DataFile="~/XML/ementas.day.all.xml" TransformFile="~/Trans/almocoSantiago.xslt" />
    <asp:XmlDataSource ID="ementasByDayJantarSantiago" runat="server" DataFile="~/XML/ementas.day.all.xml" TransformFile="~/Trans/jantarSantiago.xslt" />

    <asp:XmlDataSource ID="ementasByDayAlmocoCrasto" runat="server" DataFile="~/XML/ementas.day.all.xml" TransformFile="~/Trans/almocoCrasto.xslt" />
    <asp:XmlDataSource ID="ementasByDayJantarCrasto" runat="server" DataFile="~/XML/ementas.day.all.xml" TransformFile="~/Trans/jantarCrasto.xslt" />

    <asp:XmlDataSource ID="ementasByDayAlmocoUniversitario" runat="server" DataFile="~/XML/ementas.day.all.xml" TransformFile="~/Trans/almocoUniversitario.xslt" />
    <asp:XmlDataSource ID="ementasByDayJantarUniversitario" runat="server" DataFile="~/XML/ementas.day.all.xml" TransformFile="~/Trans/jantarUniversitario.xslt" />

    <asp:XmlDataSource ID="ementasByDayAlmocoSnack" runat="server" DataFile="~/XML/ementas.day.all.xml" TransformFile="~/Trans/almocoSnack.xslt" />
    <asp:XmlDataSource ID="ementasByDayJantarSnack" runat="server" DataFile="~/XML/ementas.day.all.xml" TransformFile="~/Trans/jantarSnack.xslt" />

    <asp:XmlDataSource ID="ementasByDayAlmocoEstga" runat="server" DataFile="~/XML/ementas.day.all.xml" TransformFile="~/Trans/almocoEstga.xslt" />
    <asp:XmlDataSource ID="ementasByDayJantarEstga" runat="server" DataFile="~/XML/ementas.day.all.xml" TransformFile="~/Trans/jantarEstga.xslt" />
    
    <asp:XmlDataSource ID="ementasByDayAlmocoEsan" runat="server" DataFile="~/XML/ementas.day.all.xml" TransformFile="~/Trans/almocoEsan.xslt" />
    <asp:XmlDataSource ID="ementasByDayJantarEsan" runat="server" DataFile="~/XML/ementas.day.all.xml" TransformFile="~/Trans/jantarEsan.xslt" />


</asp:Content>
