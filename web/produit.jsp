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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="table-01/css/style.css">
        
        
    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="colorlib-regform-5/css/main.css" rel="stylesheet" media="all">
</head>

<body>
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
                                    <input class="input--style-5" type="text" name="image" id="image">
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
                        <div class="form-group">
                                                <label>Catégorie :</label>
                                                <select name = "categorie" class="js-example-basic-single w-100">
                                                    <option></option>
                                                    <%
                                                        CategorieService cs = new CategorieService();
                                                        for (Categorie c : cs.findAll()) {
                                                    %>
                                                    <option value="<%= c.getId()%>"><%= c.getNom()%></option>
                                                    <%}%>

                                                </select>
                                            </div>
                                                                   
                       <div class="form-group">
                                                <label>Marque :</label>
                                                <div class="rs-select2 js-select-simple select--no-search">
                                                <select name="marque" class="js-example-basic-single w-100">
                                                    <option disabled="disabled" selected="selected"></option>
                                                    <%
                                                        MarqueService ms = new MarqueService();
                                                        for (Marque c : ms.findAll()) {
                                                    %>
                                                    <option value="<%= c.getId()%>"> <%= c.getNom()%> </option>
                                                    <%}%>
                                                </select>
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
                                                        <td><%= p.getInite() %></td>
                                                        <td><%= cs.findById(p.getCategorie().getId()).getNom() %></td>
                                                        <td><%= ms.findById(p.getMarque().getId()).getNom() %></td>
                                                        <td><button class="btn btn--radius-2 btn--red" type="submit">Delete</button>
                                                        <button class="btn btn--radius-2 btn--red" type="submit">Update</button></td>
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

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->
