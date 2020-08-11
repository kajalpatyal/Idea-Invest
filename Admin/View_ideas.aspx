<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSpace.Master" AutoEventWireup="true" CodeBehind="View_ideas.aspx.cs" Inherits="idea1.Admin.View_ideas" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <body>
        
            <div class="container text-center">
                <h1>View Ideas</h1></div>
             
            <div class="container-fluid text-center">
                
                <asp:Repeater ID="RepterDetails" runat="server">
                    <HeaderTemplate>
                         <table  class="table table-bordered table-striped text-center" >
                        <tr>        <td><b>Topic</b></td>
                        <td><b>Description</b></td>
                            </tr></table>
                    </HeaderTemplate>
                    <ItemTemplate>
                       <table  class="table table-bordered table-striped text-center" >
                        <tr >
                                        <td><%#Eval("Topic")%> 
                                        </td>
                                        <td><%#Eval("Desc")%> 
                                        </td>
                        </tr>
                        </table>   
                    </ItemTemplate>
                    <FooterTemplate>
                       
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        
    </body>
    
</asp:Content>
