<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="idea1.Creator.Success" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="modal-dialog">
		<div class="modal-content"><br>
            <a href="index.php" class=" ">« Back</a>
			<hr />
			<div class="modal-body">   
    <h2 class="text-center"> Your idea has been uploaded for approval!!!</h2>
        <asp:image id="img" runat="server" imageurl="C:\Users\shubh\source\repos\idea1\idea1\images\ok.png" />
    
    <p> You will be notified and your idea will be added once its verified. </p>
        
    
        <h2> KEEP ON CREATING!!!</h2>
        
            </div>
        </div>
    </div>
</asp:Content>
