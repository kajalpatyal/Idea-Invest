<%@ Page Title="" Language="C#" MasterPageFile="~/Cspace.Master" AutoEventWireup="true" CodeBehind="Add_idea.aspx.cs" Inherits="idea1.Creator.Add_idea" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
             <div class="modal-dialog">
		<div class="modal-content"><br>
            <a href="index.php" class=" ">« Back</a>
			<div class="modal-heading">
				<h2 class="text-center"><b>ADD IDEA</b></h2>
			</div>
			<hr />
			<div class="modal-body">
				<form method="post" name="signup" onsubmit="return( validate());" >
                    
                    
                    
                    
					<div class="form-group">
                        
             
						<div class="form-group">
							<asp:Label ID="d3" runat="server" Font-Bold="true">Topic</asp:Label> 
                        <asp:TextBox  CssClass="form-control" runat="server" ID="Top"  Required="true"></asp:TextBox>
						</div>
					
					<div class="form-group">
							<asp:Label ID="d2" runat="server" Font-Bold="true">Patent No.</asp:Label> 
                        <asp:TextBox  CssClass="form-control" runat="server" ID="pno"  Required="true"></asp:TextBox>
                    </div>
                        <div class="form-group">
							<asp:Label ID="d4" runat="server" Font-Bold="true">Estimated Budget(in rupees)</asp:Label> 
                        <asp:TextBox  CssClass="form-control" runat="server" ID="rs" TextMode="Number" Required="true"></asp:TextBox>
                    </div>
                    <div class="form-group">
							
                        <asp:Label ID="d1" runat="server" Font-Bold="true">Description</asp:Label> 
                        <asp:TextBox  CssClass="form-control" runat="server" ID="desc" TextMode="MultiLine" Columns="20" Rows="5" Required="true"></asp:TextBox>
                        
                    </div>
                        
              
					

                    <div>  
        <table>  
            <tr>  
                <td> Select File   </td>  
                <td>  
                    <asp:FileUpload ID="file" runat="server" ToolTip="Select Only PDF File" /> </td>  
               
                 
            </tr>  
        </table>  
          </div>
        <asp:GridView ID="GridView1" runat="server" Caption="PDF Files " CaptionAlign="Top" HorizontalAlign="Justify" DataKeyNames="id"  ToolTip="Excel FIle DownLoad Tool" CellPadding="4" ForeColor="#333333" GridLines="None">  
            <RowStyle BackColor="#E3EAEB" />  
            <Columns>  
                <asp:CommandField ShowSelectButton="True" SelectText="Download" ControlStyle-ForeColor="Blue" /> </Columns>  
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />  
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />  
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />  
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />  
            <EditRowStyle BackColor="#7C6F57" />  
            <AlternatingRowStyle BackColor="White" /> </asp:GridView>  
    </div>  

                     <div class="form-group text-center">
                        
                       
                         <asp:LinkButton ID="LinkButton1" Text="Add" runat="server"  CssClass="btn btn-success btn-lg" OnClick="AddIdea_Click">Add</asp:LinkButton>
						
					</div>
				</form>
			</div>
		</div>
	</div>
     
        
        
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</asp:Content>
