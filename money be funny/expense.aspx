<%@ Page Language="C#" AutoEventWireup="true" CodeFile="expense.aspx.cs" Inherits="expense" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Money Be Funny | Expense</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.1.1.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="less/bootstrap-datetimepicker.min.js"></script>
    <script src="js/bootstrap-datetimepicker.js"></script>
    <script src="js/bootstrap-datetimepicker.min.js"></script>
    <link href="css/bootstrap-datetimepicker.css" rel="stylesheet" />
    <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" />

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
                         <li class="active dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">SAVING<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="income.aspx">INCOME</a></li>
                                <li class="active"><a href="expense.aspx">EXPENSE</a></li>
                            </ul>
                        </li>
                        <li><a href="history.aspx">HISTORY</a></li>
                        <li><a href="#">LOGOUT</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <hr/>
 
<!--- INCOME --->

    <div class="container">
        <div class="col-md-4 col-md-offset-4">
            <div class="text-center"><h1>EXPENSE</h1></div>
        </div>

        <div class="col-md-6 col-md-offset-3 center">
            <div class="panel panel-default">
                <div class="panel-heading"></div>
                <div class="panel-body">
                   
                    <div class="col-md-12">
                        <div class="form-group">
                            <label class="col-md-4 control-label">Money</label>
                            <div class="col-md-6">                  
                                <asp:TextBox type="text" id="Exmoney" placeholder="กรุณาใส่จำนวนเงิน"  runat="server" class="form-control" onkeyup="if(isNaN(this.value)){ alert('กรุณาใส่จำนวนเงินเป็นตัวเลข'); this.value='';}"/>
                            </div>
                            <br /><br />
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">Category</label>
                            <div class="col-md-6">
                                 <asp:DropDownList  ID="ExDropDown" runat="server" class="form-control" OnSelectedIndexChanged="ExDropDown_SelectedIndexChanged" DataSourceID="SqlDataSource2" DataTextField="Kind" DataValueField="Kind">
                                  </asp:DropDownList>
        
                                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=prangoldfish;Initial Catalog=moneybefunny;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Kind] FROM [CATEGORY] WHERE ([InorEx] = @InorEx)">
                                      <SelectParameters>
                                          <asp:Parameter DefaultValue="2" Name="InorEx" Type="Int32" />
                                      </SelectParameters>
                                 </asp:SqlDataSource>
                            </div>
                            <br /><br />
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">Details</label>
                            <div class="col-md-6">  
                                <asp:TextBox ID="Ediscrition" runat="server"  class="form-control" rows="2" placeholder="Message"></asp:TextBox>              
                            </div>
                             <br /><br />
                        </div>

                        <div class="form-group input-append date form_datetime">
                            <label class="col-md-4 control-label">Date / Time</label>
                            <div class='col-sm-6'>
                                <div class='input-group date'>
                                    <asp:TextBox ID="Exdate" type='text' placeholder="กรุณาเลือกวันที่" class="form-control" runat="server"/>
                                    <span class="input-group-addon">
                                        <span class="add-on glyphicon glyphicon-calendar"><i class="icon-th"></i></span>
                                    </span>
                                </div>
                                <script type="text/javascript">
                                    $(".form_datetime").datetimepicker({
                                        format: "dd MM yyyy - hh:ii"
                                    });
                                </script>            
                             </div>
                            <br /><br />
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label"></label>
                            <div class="col-md-3">
                                <asp:Button id = "save" type="button" class="btn btn-success"  runat="server" Text="Save" OnClick="save_Click"/>
                            </div>
                            <div class="col-md-3">
                               <asp:Button id ="clear" type="button" class="btn btn-danger" runat="server"  Text="Clear" OnClick="clear_Click"/>
                            </div>
                        </div>      
                    </div>
           
                </div>
            </div>
        </div>
        
    </div>




<!--- INCOME END --->


<!--- Footer --->
        <hr/>
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy;2016 MoneyBeFunny.com &middot; <a href="index2.aspx">Home</a> &middot; <a href="income.aspx">Income</a> &middot; <a href="expense.aspx">Expense</a> &middot; <a href="history.aspx">History</a> &middot; <a href="#">Logout</a> </p>
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