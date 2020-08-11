<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="idea1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
</asp:Content>

<!-- <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" >
        function validate() {
            var txt = document.getElementById('<%= txtusername.ClientID %>');

            var txt2 = document.getElementById('<%= txtpass1.ClientID %>');

            if (txt.value == "") {
                txt.style.border = "1px solid Red";
                return false;
            }

            if (txt2.value == "") {
                txt2.style.border = "1px solid Red";
                return false;
            }

        }

    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top: 100px;">
    </div>
    <div class="panel panel-default">
     
        <div class="panel-body">

            <div class="row">
               
                <div class="col-xs-12 col-sm-6 col-sm-6 col-lg-5">
                    <div class="form-group">
                        <label for="email">User name:</label>
                        <asp:TextBox ID="txtusername" autocomplete="new-password" class="form-control" runat="server"></asp:TextBox>
                        <cc1:TextBoxWatermarkExtender ID="txtusername_TextBoxWatermarkExtender" WatermarkText="Enter Username"
                            runat="server" Enabled="True" TargetControlID="txtusername">
                        </cc1:TextBoxWatermarkExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic"
                            ValidationGroup="Submit" ControlToValidate="txtusername" ForeColor="Red" ErrorMessage="Enter UserName"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="pwd">Password:</label>
                        <asp:TextBox ID="txtpass" autocomplete="new-password" class="form-control" TextMode="Password" runat="server"></asp:TextBox>
                        <cc1:TextBoxWatermarkExtender ID="txtpass_TextBoxWatermarkExtender" runat="server"
                            Enabled="True" TargetControlID="txtpass" WatermarkText="**********">
                        </cc1:TextBoxWatermarkExtender>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
                            ValidationGroup="Submit" ControlToValidate="txtpass" ForeColor="Red" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                    </div>
                    <asp:Button ID="btnLogin" class="btn btn-default" runat="server" Text="Submit" />

                </div>
                <div class="col-xs-12 col-sm-6 col-sm-6 col-lg-7">
                    <asp:Image ID="imggym" ImageUrl="../Images/GYM.JPG" runat="server" />
                </div>
            </div>

        </div>
        <div style="margin-top: 100px;">
        </div>

    </div>


    <asp:ScriptManager ID="Scriptmanager1" runat="server">
    </asp:ScriptManager>


</asp:Content> -->
