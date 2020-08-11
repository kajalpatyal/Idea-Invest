<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Investor_signup.aspx.cs" Inherits="idea1.Investor_signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
            <body>
             <div class="modal-dialog">
		<div class="modal-content"><br>
            <a href="index.php" class=" ">« Back</a>
			<div class="modal-heading">
				<h2 class="text-center"><b>INVESTOR SIGN UP</b></h2>
			</div>
			<hr />
			<div class="modal-body">
				<form method="post" name="signup" onsubmit="return( validate());" >
                    
                    
                    
                    
					<div class="form-group">
                        
                        <div class="row">
                            
                            <div class="col-lg-6 col-xs-12">
                                <div class="form-group">
                                           <asp:Label ID="l1" runat="server" Font-Bold="true">First Name</asp:Label> 
                                            <asp:TextBox  CssClass="form-control" runat="server" ID="fname"  Required="true"></asp:TextBox>
						                  </div>
              
                            </div>
                                <div class="col-lg-6 col-xs-12">
                                <div class="form-group">
                                            <asp:Label ID="l2" runat="server" Font-Bold="true">Last Name</asp:Label> 
                                             <asp:TextBox  CssClass="form-control" runat="server" ID="lname"  Required="true"></asp:TextBox>
						                  </div>
                                </div>
                            
                        </div>
						<div class="form-group">
							<asp:Label ID="l3" runat="server" Font-Bold="true">Email</asp:Label> 
                              <asp:TextBox  CssClass="form-control" runat="server" ID="pno" TextMode="Email" Required="true"></asp:TextBox>
						</div>
					</div>
					<div class="form-group">
							<asp:Label ID="d2" runat="server" Font-Bold="true">Create Password</asp:Label> 
                             <asp:TextBox  CssClass="form-control" runat="server" ID="TextBox1" TextMode="Password" Required="true"></asp:TextBox>
                    </div>
                    <div class="form-group">
							<asp:Label ID="Label1" runat="server" Font-Bold="true">Confirm Password</asp:Label> 
                             <asp:TextBox  CssClass="form-control" runat="server" ID="TextBox2" TextMode="Password" Required="true"></asp:TextBox>
                    </div>
               
					<div class="form-group text-center">
						<a href="" class="btn btn-link" >LogIn</a>
                        <form action="index.php">
						<asp:Button Text="Sign Up" runat="server" ID="log1" CssClass="btn btn-success btn-lg" /></form>
						<a href="#" class="btn btn-link">Forgot Password?</a>
						
					</div>

				</form>
			</div>
		</div>
	</div>
     
        
        
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</asp:Content>
