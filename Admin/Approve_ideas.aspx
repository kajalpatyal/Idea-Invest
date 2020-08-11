<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSpace.Master" AutoEventWireup="true" CodeBehind="Approve_ideas.aspx.cs" Inherits="idea1.Admin.Approve_ideas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        
            <div class="container text-center">
                <h1>To Be Approved Ideas</h1></div>
             
            <div class="container-fluid text-center">
                
                <asp:Repeater ID="RepterDetails" runat="server" OnItemCommand="RepterDetails_ItemCommand">
                    <HeaderTemplate>
                         <table  class="table table-bordered table-striped text-center" >
                        <tr>        <td><b>Topic</b></td>
                        <td><b>Decision</b></td>
                            </tr></table>
                    </HeaderTemplate>
                    <ItemTemplate>
                       <table  class="table table-bordered table-striped text-center" >
                        <tr >
                                        <td><%#Eval("Topic")%> 
                                        </td>
                                        <td> <asp:Button Text="Approve" runat="server" ID="a"  CommandName="btnaccept" CommandArgument='<%#Eval("Id")%>'/>
                                         <asp:Button Text="Reject" runat="server" ID="r"  CommandName="btnreject" CommandArgument='<%#Eval("Id")%>'/>
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
