<%@ Page Title="" Language="C#" MasterPageFile="~/Cspace.Master" AutoEventWireup="true" CodeBehind="Idea_status.aspx.cs" Inherits="idea1.Creator.Idea_status" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                        <td><%#Eval("Status")%> 
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
