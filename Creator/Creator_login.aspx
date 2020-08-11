<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Creator_login.aspx.cs" Inherits="idea1.Creator_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <body>
        <div class="modal-dialog" id="modal">
		<div class="modal-content">
             <a href="index.php" class=" ">« Back</a>
			<div class="modal-heading">
				<h2 class="text-center"><b>CREATOR LOGIN</b></h2>
			</div>
			<hr />
			<div class="modal-body">
				<form method="post" action="login.php" role="form">
					<!-- displaying error msg -->
                    <center>
                    <?php include('error.php'); ?>
                    </center>
                    <form action="/action_page.php" method="post">
                    <div class="form-group"><center>
						<div class="input-group">
							<span class="input-group-addon">
							<span class="glyphicon glyphicon-user"></span>
							</span>
                            <asp:TextBox  CssClass="form-control" runat="server" ID="email" Required="true"></asp:TextBox>
						</div>
                        </center>
					</div>
					<div class="form-group"><center>
						<div class="input-group">
							<span class="input-group-addon">
							<span class="glyphicon glyphicon-lock"></span>
							</span>
							 <asp:TextBox  CssClass="form-control" runat="server" ID="password" TextMode="Password" Required="true"></asp:TextBox>

						</div>
                        </center>
					</div>

					<div class="form-group text-center">
						<a href="Creator_signup.aspx" class="btn btn-link">SignUp</a>
                        
                        <asp:Button Text="Login" runat="server" ID="clog1" CssClass="btn btn-success btn-lg"  OnClick="Button1_Click"/>
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
