<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="idea1.Admin.Admin_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <body>
        <div class="modal-dialog" id="modal">
		<div class="modal-content">
             <a href="index.php" class=" ">« Back</a>
			<div class="modal-heading">
				<h2 class="text-center"><b>ADMIN LOGIN</b></h2>
			</div>
			<hr />
			<div class="modal-body">
				<form method="post" action="login.php" role="form">
					<!-- displaying error msg -->
                    
                    <form action="/action_page.php" method="post">
                    <div class="form-group"><center>
						<div class="input-group" >
							<span class="input-group-addon" style="background-color:white" ;border:"0">
							<span class="glyphicon glyphicon-user"></span>
                               
                                
                                
							</span>
                           <asp:TextBox  CssClass="form-control" runat="server" ID="email" Required="true"></asp:TextBox>
                            
                            
						</div>
                        </center>
					</div>
					     <div class="form-group"><center>
						<div class="input-group" >
							<span class="input-group-addon" style="background-color:white" ;border:"0">
							<span class="glyphicon glyphicon-lock"></span>
                               <!-- <asp:TextBox ID="e1" runat="server" ></asp:TextBox> -->
                                
                                
							</span>
                           <asp:TextBox  CssClass="form-control" runat="server" ID="password" TextMode="Password" Required="true"></asp:TextBox>
                            
                            
						</div>
                        </center>
					</div>

					<div class="form-group text-center">
						<a href="Admin_signup.aspx" class="btn btn-link">SignUp</a>
                        
                        <!--<button type="submit" class="btn btn-success btn-lg" name="login">LogIn</button>-->
                        <asp:Button Text="Login" runat="server" ID="alog1" CssClass="btn btn-success btn-lg"  OnClick="log1_Click"/>
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
