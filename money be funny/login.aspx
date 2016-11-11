<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="FacebookLoginASPnetWebForms.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Money Be Funny | LOGIN</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index1.aspx"><span><img alt="Logeheader" src="images/logoheader.jpg" height="30"/></span>Money Be Funny</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="index1.aspx">HOME</a></li>
                        <li class="active"><a href="login.aspx">LOGIN</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

   <!--- Sign in start  -->
        <div class="container">
            <div class="form-horizontal">
                <h2>Login</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="The Username field is Required !" ControlToValidate="UserName"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger" runat="server" ErrorMessage="The Password field is Required !" ControlToValidate="Password"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                        <div class="col-md-2"></div>                    
                    <div class="col-md-6">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me ?"></asp:Label>
                    </div>
                </div>
                 <div class="form-group">
                        <div class="col-md-2"></div>     
                                   
                    <div class="col-md-6">
                        <asp:Button ID="Button2" runat="server" Text="Login" CssClass="btn btn-default" /> 
                        
                    </div>
                     <asp:HyperLink ID="HyperLink1" runat="server"></asp:HyperLink>
                     
                </div>
            </div>
        </div>
        <!--- Sign in end  -->


    </form>

        <!--- Footer --->
        <hr/>
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy;2016 MoneyBeFunny.com &middot; <a href="index1.aspx">Home</a> &middot; <a href="#">Login</a></p>
            </div>
        </footer>
        
        <!--- Footer --->
    

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
