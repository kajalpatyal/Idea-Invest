<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Creator_signup.aspx.cs" Inherits="idea1.Creator_signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <html>
    <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <title>HOHO</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
        
        <!-- Javascript validation for user inputs -->
        <script type = "text/javascript">
        function validate() {
        var no=document.signup.mob.value;
            if(isNaN( no ) && no.length!=10)
                {alert("Please enter valid mobile no.!");
                return false;}
         var emailID = document.signup.email.value;
         atpos = emailID.indexOf("@");
         dotpos = emailID.lastIndexOf(".");
        var length = document.signup.password1.value.length;
          
        if( document.signup.account_type.value == "-1" ) {
            alert( "Please provide your account type!" );
            return false;
         } 
         else if (atpos < 1 || ( dotpos - atpos < 2 )) {
            alert("Please enter correct email ID")
            document.signup.email.focus() ;
            return false;
         }
          else if(document.signup.password1.value != document.signup.password2.value){
             alert('Passwords do not match');
             return false;
         }
         else if(length<7)
         {
             alert('Password should have atleast 8 characters');
             return false;
         }
        
         else
         return( true );
        }
      </script>
</head>
        <body>
             <div class="modal-dialog">
		<div class="modal-content"><br>
            <a href="index.php" class=" ">« Back</a>
			<div class="modal-heading">
				<h2 class="text-center">Sign Up</h2>
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
                              <asp:TextBox  CssClass="form-control" runat="server" ID="email" TextMode="Email" Required="true"></asp:TextBox>
						</div>
					</div>
					<div class="form-group">
							<asp:Label ID="d2" runat="server" Font-Bold="true">Create Password</asp:Label> 
                             <asp:TextBox  CssClass="form-control" runat="server" ID="cp" TextMode="Password" Required="true"></asp:TextBox>
                    </div>
                    <div class="form-group">
							<asp:Label ID="Label1" runat="server" Font-Bold="true">Confirm Password</asp:Label> 
                             <asp:TextBox  CssClass="form-control" runat="server" ID="cop" TextMode="Password" Required="true"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        
                        <div class="row">
                            
                            <div class="col-lg-6 col-xs-12">
                                <div class="form-group">
                                           
                                            <asp:Label ID="Label2" runat="server" Font-Bold="true">Account No.</asp:Label> 
                                         <asp:TextBox  CssClass="form-control" runat="server" ID="acc" TextMode="Number" Placeholder="xxxx-xxxx-xxxx-xxxx" MaxLength="16" Required="true"></asp:TextBox>
						                  </div>
              
                            </div>
                                <div class="col-lg-6 col-xs-12">
                                <div class="form-group">
                                            
                                            <asp:Label ID="Label3" runat="server" Font-Bold="true">IFSC No.</asp:Label> 
                                          <asp:TextBox  CssClass="form-control" runat="server" ID="ifsc" Placeholder="SBI001234567890IN" MaxLength="20" Required="true"></asp:TextBox>
						                  </div>
                                </div>
                            
                        </div>
					<div class="form-group text-center">
						<a href="login.php" class="btn btn-link" >LogIn</a>
                       
						<asp:Button Text="Sign Up" runat="server" ID="log1" CssClass="btn btn-success btn-lg"  OnClick="Btnregistration_Click"/></form>
						<a href="#" class="btn btn-link">Forgot Password?</a>
						
					</div>

	
			</div>
		</div>
	
     
        
        
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</asp:Content>
