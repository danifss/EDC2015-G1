<%@ Page Title="Menus for Day" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="menuDay.aspx.cs" Inherits="EDC2015_G1_Project.menuDay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

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
<%--                    <table class="table table-striped table-condensed table-hover">
                        <thead>
                            <tr class="btn-success">
                                <th>Prato</th>
                                <th>Ementa</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Column content</td>
                            </tr>
                        </tbody>
                    </table>--%>

<%--                    <asp:DetailsView ID="DetailsViewsSantiago" runat="server" DataSourceID="ementasByDay" CssClass="table table-striped table-condensed table-hover" AutoGenerateRows="False">
                        <Fields>
                            <asp:BoundField DataField="item" HeaderText="item" SortExpression="item" />
                        </Fields>
                    </asp:DetailsView>--%>

                   <%-- <asp:FormView  CssClass="table table-striped table-hover table-condensed" ID="FormViewSantiago" runat="server">

                    </asp:FormView>--%>

<%--                    <ItemTemplate>
                            Item
                            <asp:Label ID="zone" runat="server" Text='<%# Bind("meal") %>' /><br />
                        </ItemTemplate>--%>

                </div>
                <div class="col-xs-4">
                    <img src="Img/santiago.jpg" width="100%" />
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



    <asp:XmlDataSource ID="ementasByDay" runat="server" DataFile="~/XML/ementas.day.all.xml" TransformFile="~/XML/menuParse.xslt"></asp:XmlDataSource>

</asp:Content>
