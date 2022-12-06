<%-- 
    Document   : produit
    Created on : 20 nov. 2022, 22:18:44
    Author     : PC
--%>

<%@page import="entities.Produit"%>
<%@page import="com.oracle.jrockit.jfr.Producer"%>
<%@page import="Service.ProduitService"%>
<%@page import="entities.Marque"%>
<%@page import="Service.MarqueService"%>
<%@page import="entities.Categorie"%>
<%@page import="Service.CategorieService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

    <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="../tab/css/style.css">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" type="text/css"/>
        
    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
    
    <style>
        body {
    position: relative;
    overflow-x: hidden;
    background-color: #CFD8DC;
}
body,
html { height: 100%;}
.nav .open > a, 
.nav .open > a:hover, 
.nav .open > a:focus {background-color: transparent;}


/*           Wrappers            */


#wrapper {
    padding-left: 0;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

#wrapper.toggled {
    padding-left: 220px;
}

#sidebar-wrapper {
    z-index: 1000;
    left: 220px;
    width: 0;
    height: 100%;
    margin-left: -220px;
    overflow-y: auto;
    overflow-x: hidden;
    background: #1a1a1a;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
}

#sidebar-wrapper::-webkit-scrollbar {
  display: none;
}

#wrapper.toggled #sidebar-wrapper {
    width: 220px;
}

#page-content-wrapper {
    width: 100%;
    padding-top: 70px;
}

#wrapper.toggled #page-content-wrapper {
    position: absolute;
    margin-right: -220px;
}


/*     Sidebar nav styles        */

.navbar {
  padding: 0;
}

.sidebar-nav {
    position: absolute;
    top: 0;
    width: 220px;
    margin: 0;
    padding: 0;
    list-style: none;
}

.sidebar-nav li {
    position: relative; 
    line-height: 20px;
    display: inline-block;
    width: 100%;
}

.sidebar-nav li:before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    z-index: -1;
    height: 100%;
    width: 3px;
    background-color: #1c1c1c;
    -webkit-transition: width .2s ease-in;
      -moz-transition:  width .2s ease-in;
       -ms-transition:  width .2s ease-in;
            transition: width .2s ease-in;

}
.sidebar-nav li:first-child a {
    color: #fff;
    background-color: #1a1a1a;
}
.sidebar-nav li:nth-child(5n+1):before {
    background-color: #ec1b5a;   
}
.sidebar-nav li:nth-child(5n+2):before {
    background-color: #79aefe;   
}
.sidebar-nav li:nth-child(5n+3):before {
    background-color: #314190;   
}
.sidebar-nav li:nth-child(5n+4):before {
    background-color: #279636;   
}
.sidebar-nav li:nth-child(5n+5):before {
    background-color: #7d5d81;   
}

.sidebar-nav li:hover:before,
.sidebar-nav li.open:hover:before {
    width: 100%;
    -webkit-transition: width .2s ease-in;
      -moz-transition:  width .2s ease-in;
       -ms-transition:  width .2s ease-in;
            transition: width .2s ease-in;

}

.sidebar-nav li a {
    display: block;
    color: #ddd;
    text-decoration: none;
    padding: 10px 15px 10px 30px;    
}

.sidebar-nav li a:hover,
.sidebar-nav li a:active,
.sidebar-nav li a:focus,
.sidebar-nav li.open a:hover,
.sidebar-nav li.open a:active,
.sidebar-nav li.open a:focus{
    color: #fff;
    text-decoration: none;
    background-color: transparent;
}
.sidebar-header {
    text-align: center;
    font-size: 20px;
    position: relative;
    width: 100%;
    display: inline-block;
}
.sidebar-brand {
    height: 65px;
    position: relative;
    background:#212531;
    background: linear-gradient(to right bottom, #2f3441 50%, #212531 50%);
   padding-top: 1em;
}
.sidebar-brand a {
    color: #ddd;
}
.sidebar-brand a:hover {
    color: #fff;
    text-decoration: none;
}
.dropdown-header {
    text-align: center;
    font-size: 1em;
    color: #ddd;
    background:#212531;
    background: linear-gradient(to right bottom, #2f3441 50%, #212531 50%);
}
.sidebar-nav .dropdown-menu {
    position: relative;
    width: 100%;
    padding: 0;
    margin: 0;
    border-radius: 0;
    border: none;
    background-color: #222;
    box-shadow: none;
}
.dropdown-menu.show {
    top: 0;
}

.nav.sidebar-nav li a::before {
    font-family: fontawesome;
    content: "\f12e";
    vertical-align: baseline;
    display: inline-block;
    padding-right: 5px;
}
a[href*="#home"]::before {
  content: "\f015" !important;
}
a[href*="#about"]::before {
  content: "\f129" !important;
}
a[href*="#events"]::before {
  content: "\f073" !important;
}
a[href*="#events"]::before {
  content: "\f073" !important;
}
a[href*="#team"]::before {
  content: "\f0c0" !important;
}
a[href*="#works"]::before {
  content: "\f0b1" !important;
}
a[href*="#pictures"]::before {
  content: "\f03e" !important;
}
a[href*="#videos"]::before {
  content: "\f03d" !important;
}
a[href*="#books"]::before {
  content: "\f02d" !important;
}
a[href*="#art"]::before {
  content: "\f1fc" !important;
}
a[href*="#awards"]::before {
  content: "\f02e" !important;
}
a[href*="#services"]::before {
  content: "\f013" !important;
}
a[href*="#contact"]::before {
  content: "\f086" !important;
}
a[href*="#followme"]::before {
  content: "\f099" !important;
  color: #0084b4;
}

/*       Hamburger-Cross         */


.hamburger {
  position: fixed;
  top: 20px;  
  z-index: 999;
  display: block;
  width: 32px;
  height: 32px;
  margin-left: 15px;
  background: transparent;
  border: none;
}
.hamburger:hover,
.hamburger:focus,
.hamburger:active {
  outline: none;
}
.hamburger.is-closed:before {
  content: '';
  display: block;
  width: 100px;
  font-size: 14px;
  color: #fff;
  line-height: 32px;
  text-align: center;
  opacity: 0;
  -webkit-transform: translate3d(0,0,0);
  -webkit-transition: all .35s ease-in-out;
}
.hamburger.is-closed:hover:before {
  opacity: 1;
  display: block;
  -webkit-transform: translate3d(-100px,0,0);
  -webkit-transition: all .35s ease-in-out;
}

.hamburger.is-closed .hamb-top,
.hamburger.is-closed .hamb-middle,
.hamburger.is-closed .hamb-bottom,
.hamburger.is-open .hamb-top,
.hamburger.is-open .hamb-middle,
.hamburger.is-open .hamb-bottom {
  position: absolute;
  left: 0;
  height: 4px;
  width: 100%;
}
.hamburger.is-closed .hamb-top,
.hamburger.is-closed .hamb-middle,
.hamburger.is-closed .hamb-bottom {
  background-color: #1a1a1a;
}
.hamburger.is-closed .hamb-top { 
  top: 5px; 
  -webkit-transition: all .35s ease-in-out;
}
.hamburger.is-closed .hamb-middle {
  top: 50%;
  margin-top: -2px;
}
.hamburger.is-closed .hamb-bottom {
  bottom: 5px;  
  -webkit-transition: all .35s ease-in-out;
}

.hamburger.is-closed:hover .hamb-top {
  top: 0;
  -webkit-transition: all .35s ease-in-out;
}
.hamburger.is-closed:hover .hamb-bottom {
  bottom: 0;
  -webkit-transition: all .35s ease-in-out;
}
.hamburger.is-open .hamb-top,
.hamburger.is-open .hamb-middle,
.hamburger.is-open .hamb-bottom {
  background-color: #1a1a1a;
}
.hamburger.is-open .hamb-top,
.hamburger.is-open .hamb-bottom {
  top: 50%;
  margin-top: -2px;  
}
.hamburger.is-open .hamb-top { 
  -webkit-transform: rotate(45deg);
  -webkit-transition: -webkit-transform .2s cubic-bezier(.73,1,.28,.08);
}
.hamburger.is-open .hamb-middle { display: none; }
.hamburger.is-open .hamb-bottom {
  -webkit-transform: rotate(-45deg);
  -webkit-transition: -webkit-transform .2s cubic-bezier(.73,1,.28,.08);
}
.hamburger.is-open:before {
  content: '';
  display: block;
  width: 100px;
  font-size: 14px;
  color: #fff;
  line-height: 32px;
  text-align: center;
  opacity: 0;
  -webkit-transform: translate3d(0,0,0);
  -webkit-transition: all .35s ease-in-out;
}
.hamburger.is-open:hover:before {
  opacity: 1;
  display: block;
  -webkit-transform: translate3d(-100px,0,0);
  -webkit-transition: all .35s ease-in-out;
}


/*            Overlay            */


.overlay {
    position: fixed;
    display: none;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(250,250,250,.8);
    z-index: 1;
}
    </style>
    
</head>

<body>
    
    <body>
    
 <div id="wrapper">
   <div class="overlay"></div>
    
        <!-- Sidebar -->
    <nav class="navbar navbar-inverse fixed-top" id="sidebar-wrapper" role="navigation">
     <ul class="nav sidebar-nav">
       <div class="sidebar-header">
       <div class="sidebar-brand">
         <a href="#">Gestion</a></div></div>
       <li><a href="#">commande</a></li>
      <li><a href="#">etat des commandes </a></li>
       
      <ul class="dropdown-menu animated fadeInLeft" role="menu">
      <div class="dropdown-header">Dropdown heading</div>
      
      </ul>
      </li>
      
      <li><a href="produit.jsp">Add Product</a></li>
       <li><a href="../categorie.jsp">Add Categorie</a></li>
       <li><a href="../marque.jsp">Add Marque</a></li>
       
      </ul>
  </nav>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <button type="button" class="hamburger animated fadeInLeft is-closed" data-toggle="offcanvas">
                <span class="hamb-top"></span>
    			<span class="hamb-middle"></span>
				<span class="hamb-bottom"></span>
            </button>
            <div class="container">
                <div class="row">
                    
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->
    
    
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Gestion des produit</h2>
                </div>
                <div class="card-body">
                    <form action="/AddProduit" method="POST">
                        
                        <div class="form-row">
                            <div class="name">Nom</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="nom" id="name">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Desination</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="desination" id="desination">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Prix</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="double" name="prix" id="prix">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Image</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="file" name="image" id="image">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Unite</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="number" name="unite" id="unite">
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-row">
                            <div class="name">Categorie</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="categorie">
                                            <option disabled="disabled" selected="selected">Choose option</option>
                                            <%
                                                        CategorieService cs = new CategorieService();
                                                        for (Categorie c : cs.findAll()) {
                                                    %>
                                                    <option value="<%= c.getId()%>"><%= c.getNom()%></option>
                                                    <%}%>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="form-row">
                            <div class="name">Marque</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="marque">
                                            <option disabled="disabled" selected="selected">Choose option</option>
                                             <%
                                                        MarqueService ms = new MarqueService();
                                                        for (Marque c : ms.findAll()) {
                                                    %>
                                                    <option value="<%= c.getId()%>"> <%= c.getNom()%> </option>
                                                    <%}%>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                         
                                       
                      
                        <div style="text-align: center;">
                            <button class="btn btn--radius-2 btn--red" type="submit">Add</button>
                        
                            
                        </div>
                    </form>
                </div>
            </div>
            

                        
                    
          
        </div>
    </div>

    <section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Liste des produit</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table">
						  <thead class="thead-primary">
						    <tr>
                                                      <th>Id</th>
						      <th>Nom</th>
						      <th>Desination</th>
						      <th>Prix</th>
                                                      <th>Image</th>
						      <th>Unite</th>
                                                      <th>Categorie</th>
                                                      <th>Marque</th>
                                                      <th></th>
                                                     
						    </tr>
						  </thead>
						  <tbody>
                                                    
                                                      
                                                        <%
                                                           
                                                            ProduitService ps = new ProduitService();
                                                            for(Produit p : ps.findAll())
                                                            {
                                                        %>
                                                    <tr> 
                                                        <td><%= p.getId()%></td>
                                                        <td><%= p.getNom()%></td>
                                                        <td><%= p.getDesignation()%></td>
                                                        <td><%= p.getPrix() %></td>
                                                        <td><%= p.getImage() %></td>
                                                        <td><%= p.getUnite() %></td>
                                                        <td><%= cs.findById(p.getCategorie().getId()).getNom() %></td>
                                                        <td><%= ms.findById(p.getMarque().getId()).getNom() %></td>
                                                        <td><button class="btn btn--radius-2 btn--red btn-block" type="submit"> <a href="../DeleteProduit?id=<%= p.getId()%> "> Delete</button>
                                                        <button class="btn btn--radius-2 btn--red btn-block" type="submit">Update</button></td>
                                                    </tr>
                                                    <%}%>
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
   <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

    <script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.js" type="text/javascript"></script>
    
    <script>
        $(document).ready(function () {
  var trigger = $('.hamburger'),
      overlay = $('.overlay'),
     isClosed = false;

    trigger.click(function () {
      hamburger_cross();      
    });

    function hamburger_cross() {

      if (isClosed == true) {          
        overlay.hide();
        trigger.removeClass('is-open');
        trigger.addClass('is-closed');
        isClosed = false;
      } else {   
        overlay.show();
        trigger.removeClass('is-closed');
        trigger.addClass('is-open');
        isClosed = true;
      }
  }
  
  $('[data-toggle="offcanvas"]').click(function () {
        $('#wrapper').toggleClass('toggled');
  });  
});
    </script>
    
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>