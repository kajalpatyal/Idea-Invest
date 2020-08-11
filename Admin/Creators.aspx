<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSpace.Master" AutoEventWireup="true" CodeBehind="Creators.aspx.cs" Inherits="idea1.Admin.Creators" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        
            <div class="container text-center">
                <h1>View Ideas</h1></div>
             
            <div class="container-fluid text-center">
                
                <asp:Repeater ID="RepterDetails" runat="server">
                    <HeaderTemplate>
                         <table  class="table table-bordered table-striped text-center" >
                        <tr>        <td><b>Email</b></td>
                        <td><b>First Name</b></td>
                            <td><b>Last Name</b></td>
                            <td><b>Account Number</b></td>
                            <td><b>IFSC Code</b></td>

                            </tr></table>
                    </HeaderTemplate>
                    <ItemTemplate>
                       <table  class="table table-bordered table-striped text-center" >
                        <tr >
                                        <td><%#Eval("Email")%> 
                                        </td>
                                        <td><%#Eval("Fname")%> 
                                        </td>
                                        <td><%#Eval("Lname")%> 
                                        </td>
                                        <td><%#Eval("AccNo")%> 
                                        </td>
                                        <td><%#Eval("IFSC")%> 
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
