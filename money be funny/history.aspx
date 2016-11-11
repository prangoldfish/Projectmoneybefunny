<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="history.aspx.cs" Inherits="history" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Money Be Funny | HOME</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
                    <a class="navbar-brand" href="index2.aspx"><span><img alt="Logeheader" src="images/logoheader.jpg" height="30"/></span>Money Be Funny</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="index2.aspx">HOME</a></li>
                         <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">SAVING<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="income.aspx">INCOME</a></li>
                                <li><a href="expense.aspx">EXPENSE</a></li>
                            </ul>
                        </li>
                        <li class="active"><a href="history.aspx">HISTORY</a></li>
                        <li><a href="#">LOGOUT</a></li>
                    </ul>
                </div>
            </div>
        </div> 
    </div>
    <hr/>

    <!--- HISTORY --->


    <div class="container">
        <div class="col-md-6 col-md-offset-3">
            <div class="text-center"><h1>HISTORY</h1></div>
        </div>

        <div class="col-md-8 col-md-offset-2 center">
            <div class="panel panel-default">
                <div class="panel-heading"></div>
                <div class="panel-body">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label class="col-md-3 control-label">NAME</label>
                                <div class="col-md-6">
                                    <asp:Label ID="shname" runat="server" class="form-control" Text=""></asp:Label>  
                                    <br /> 
                                </div>
                            </div>
                            </div>
                    

                            <div class="col-md-12">
                            <div class="form-group">
                                <label class="col-md-3 control-label">SURNAME</label>
                                <div class="col-md-6">
                                    <asp:Label ID="shsurname" runat="server" class="form-control" Text=""></asp:Label>
                                    <br /> 
                                </div>
                            </div>
                                </div>
                    
                            
                    <div class="col-md-12">
                            <div class="form-group">
                                <label class="col-md-3 control-label">INCOME</label>
                                <div class="col-md-6">
                                    <asp:Label ID="shincome" runat="server" class="form-control" Text=""></asp:Label>
                                    <br />
                                </div>
                                <button type="button" id="butincome" class="btn btn-success" aria-label="Left Align" runat="server">
                                    <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
                                </button>                               
                            </div>
                        </div>
                    
                            
                    <div class="col-md-12">
                            <div class="form-group">
                                <label class="col-md-3 control-label">EXPENSE</label>
                                <div class="col-md-6">
                                    <asp:Label ID="shexpense" runat="server" class="form-control" Text="" ></asp:Label>
                                    <br />
                                </div>
                                <button type="button" id="butexpense" class="btn btn-warning" aria-label="Left Align" runat="server" >
                                   <span class="glyphicon glyphicon-list" aria-hidden="true" ></span>
                                    </button>
                                
                            </div>
                        </div>

                    <div class="col-md-12">
                            <div class="form-group">
                                <label class="col-md-3 control-label">NET</label>
                                <div class="col-md-6">
                                    <asp:Label ID="shnet" runat="server" class="form-control" Text=""></asp:Label>
                                    <br />
                                </div>
                                <button type="button" class="btn btn-info" aria-label="Left Align">
                                    <span class="glyphicon glyphicon-stats" aria-hidden="true"></span>
                                </button>
                            </div>
                        </div>

                    <div class="col-md-12">
                            <div class="form-group">
                                <label class="col-md-3 control-label">POINTS</label>
                                <div class="col-md-6">
                                    <asp:Label ID="shpoint" runat="server" class="form-control" Text=""></asp:Label>
                                    <br />
                                </div>
                                <button type="button" class="btn btn-default" aria-label="Left Align">
                                    <span class="glyphicon glyphicon-gift" aria-hidden="true"></span>
                                </button>
                            </div>

                        </div>
               </div>
            </div>
        </div>
    </div>


    <!--- HISTORY --->


     
    <!--- Footer --->
        <hr/>
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy;2016 MoneyBeFunny.com &middot; <a href="index2.aspx">Home</a> &middot; <a href="income.aspx">Income</a> &middot; <a href="expense.aspx">Expensse</a> &middot; <a href="history.aspx">History</a> &middot; <a href="#">Logout</a> </p>
            </div>
        </footer>
        
        <!--- Footer --->
    
    
    
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </form>
    </body>
</html>
