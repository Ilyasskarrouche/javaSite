<%-- 
    Document   : facture.jsp
    Created on : Dec 5, 2022, 10:22:29 PM
    Author     : ELMEHDI KAMIS
--%>
<%@page import="Service.LigneCommandeService"%>
<%@page import="Service.CommandeService"%>
<%@page import="entities.LigneCommande"%>
<%@page import="entities.Commande"%>
<%@page import="entities.Produit"%>
<%@page import="Service.ProduitService"%>
<%@page import="entities.Facture"%>
<%@page import="Service.FactureService"%>
<%@page import="entities.Categorie"%>
<%@page import="Service.CategorieService"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>A simple, clean, and responsive HTML invoice template</title>

		<style>
			.invoice-box {
				max-width: 800px;
				margin: auto;
				padding: 30px;
				border: 1px solid #eee;
				box-shadow: 0 0 10px rgba(0, 0, 0, 0.15);
				font-size: 16px;
				line-height: 24px;
				font-family: 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
				color: #555;
			}

			.invoice-box table {
				width: 100%;
				line-height: inherit;
				text-align: left;
			}

			.invoice-box table td {
				padding: 5px;
				vertical-align: top;
			}

			.invoice-box table tr td:nth-child(2) {
				text-align: right;
			}

			.invoice-box table tr.top table td {
				padding-bottom: 20px;
			}

			.invoice-box table tr.top table td.title {
				font-size: 45px;
				line-height: 45px;
				color: #333;
			}

			.invoice-box table tr.information table td {
				padding-bottom: 40px;
			}

			.invoice-box table tr.heading td {
				background: #eee;
				border-bottom: 1px solid #ddd;
				font-weight: bold;
			}

			.invoice-box table tr.details td {
				padding-bottom: 20px;
			}

			.invoice-box table tr.item td {
				border-bottom: 1px solid #eee;
			}

			.invoice-box table tr.item.last td {
				border-bottom: none;
			}

			.invoice-box table tr.total td:nth-child(2) {
				border-top: 2px solid #eee;
				font-weight: bold;
			}

			@media only screen and (max-width: 600px) {
				.invoice-box table tr.top table td {
					width: 100%;
					display: block;
					text-align: center;
				}

				.invoice-box table tr.information table td {
					width: 100%;
					display: block;
					text-align: center;
				}
			}

			/** RTL **/
			.invoice-box.rtl {
				direction: rtl;
				font-family: Tahoma, 'Helvetica Neue', 'Helvetica', Helvetica, Arial, sans-serif;
			}

			.invoice-box.rtl table {
				text-align: right;
			}

			.invoice-box.rtl table tr td:nth-child(2) {
				text-align: left;
			}
		</style>
	</head>

	<body>
		<div class="invoice-box">
			<table cellpadding="0" cellspacing="0">
				<tr class="top">
					<td colspan="2">
						<table>
							<tr>
								<td class="title">
									<img src="images/logo.png" style="width: 200%; max-width: 200px" />
								</td>

								<td>
									Facture #: <%=  request.getParameter("id") %><br />
									Created: 12-05-2022<br />
									
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr class="information">
					<td colspan="2">
						<table>
							<tr>
								<td>
									Sidi Moussa<br />
									9dam ihssan m3a ziz<br />
									Eljadida,  20400
								</td>

								<td>
									
									El Mehdi Kamiss<br />
									test@test.com
								</td>
							</tr>
						</table>
					</td>
				</tr>

				

				<tr class="heading">
                                        
					<td>Produit</td>
                                        
					<td>Prix</td>
                                        <td>Quantite</td>
				</tr>
                        <%
                                
                           CommandeService cs= new CommandeService();
                           LigneCommandeService ls = new LigneCommandeService();
                           
                                
                           double somme =0;
                           
                           //System.out.println(Integer.parseInt(request.getParameter("id")));
                           
                           //for (LigneCommande l : ls.getByCommandeID(Integer.parseInt(request.getParameter("id")))){
                           for (LigneCommande l : ls.findAll()){
                           somme = somme+(l.getQuantité()*l.getPrixVente());
                           
                           
                        %> 
				<tr class="item">
					<td><%= l.getProduit().getNom() %></td>
                                        
					<td><%= l.getPrixVente() %>  DH</td>
                                        <td><%= l.getQuantité() %></td>
				</tr>

			<%}%>

				

				<tr class="total">
					<td></td>

					<td>Total: <%= somme %> DH</td>
				</tr>
			</table>
		</div>
	</body>
</html>