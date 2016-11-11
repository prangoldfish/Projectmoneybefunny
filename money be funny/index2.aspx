<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index2.aspx.cs" Inherits="index2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
                        <li class="active"><a href="index2.aspx">HOME</a></li>
                         <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">SAVING<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="income.aspx">INCOME</a></li>
                                <li><a href="expense.aspx">EXPENSE</a></li>
                            </ul>
                        </li>
                        <li><a href="history.aspx">HISTORY</a></li>
                        <li><a href="#">LOGOUT</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <!--- Carousel --->

        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="images/product1.png" alt="...">
      <div class="carousel-caption">
         <h3>Product1</h3>
    <p>Points</p>
      </div>
    </div>
    <div class="item">
      <img src="images/product2.png" alt="...">
      <div class="carousel-caption">
         <h3>Product2</h3>
    <p>Points</p>
      </div>
    </div>
    
     <div class="item">
      <img src="images/product3.png" alt="...">
      <div class="carousel-caption">
         <h3>Product3</h3>
    <p>Points</p>
      </div>
    </div>
    
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

        <!--- Carousel --->
        </div>
        <br/>
        <br/>

        <!--- Middle Contents -->
        <div class="container center">
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/Thumb01.jpeg" alt="thumb01" width="140" height="140" />
                    <h2>SAVING</h2>
                    <p>เว็บไซต์นี้จะช่วยให้คุณสามารถบันทึกรายรับรายจ่าย เลือกหมวดหมู่วันที่บันทึกของการบันทึก ช่วยให้การบันทึกรายรับรายจ่ายได้สะดวกสบายไม่ว่าคุณจะอยู่ที่ไหน</p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/Thumb02.jpg" alt="thumb02" width="140" height="140" />
                    <h2>POINTS</h2>
                    <p>เว็บไซต์นี้มีความพิเศษกว่าเว็บไซต์บันทึกรายรับรายจ่ายทั่วไป เพราะทางทีมงานมีโปรชั่นพิเศษในการเก็บคะแนนสะสมแค่ผู้ใช้บันทึกรายรับรายจ่ายทุกวันก็ได้คะแนนง่ายแล้ว แล้วยังนำคะแนนสะสมไปแลกของรางวัลประจำเดือนนั้นได้</p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="Images/Thumb03.jpg" alt="thumb03" width="140" height="140" />
                    <h2>GRAPH</h2>
                    <p>เว็บไซต์นี้ยังมีกราฟที่ช่วยในการวัดรายรับรายจ่าย ทำให้ผู้ใช้สามารถรู้ได้ว่าในแต่ละเดือนว่าได้รายรับหรือใช้รายจ่ายไปเท่าไหร่</p>
                </div>
            </div>
        </div>
        <!--- Middle Contents -->


        </form>

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
</body>
</html>