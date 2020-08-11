<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="idea1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="6000">
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            
            <img src="images/2.jpg"  alt="ASP.NET" class="img-responsive" style=" width:100%; height: 400px !important;" />
        </div>
        <div class="item">
            <img src="images/3.jpg" alt="Visual Studio" class="img-responsive" style=" width:100%; height: 400px !important;" />
        </div>
        <div class="item">
            <img src="images/investing-strategies-styles-1068x713.jpg" alt="Microsoft Azure" class="img-responsive" style=" width:100%; height: 400px !important;"  />
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<div class="row">
    <div class="col-md-4">
        <h2>Ideas</h2>
        <ul>
            <p>
                Those ideas which can turn the world into a better place</p>
           <&nbsp> <asp:Button Text="Ideas" runat="server" ID="b1" CssClass="btn btn-success btn-lg"  OnClick="Idea_Click"/>
            <!-- <a class button="@Html.ActionLink("Ideas", "Ideas", "Home")"></a> -->
        </ul>
    </div>
    <div class="col-md-4">
        <h2>Creator</h2>
        <ul>
            <p>
                If you have a mind of a creator and you know that your ideas can change the world.
                <&nbsp><asp:Button Text="Creators" runat="server" ID="b2" CssClass="btn btn-success btn-lg"  OnClick="Creator_Click"/>
            </p>
        </ul>
    </div>
    <div class="col-md-4">
        <h2>Investor</h2>
        <ul>
            <p>If you want to put your money in the right place.</p>
            <&nbsp>
                <asp:Button Text="Investors" runat="server" ID="b3" CssClass="btn btn-success btn-lg"  OnClick="Investor_Click"/>
        </ul>
    </div>
</div>

</asp:Content>
