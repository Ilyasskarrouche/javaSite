<%-- 
    Document   : register.jsp
    Created on : Nov 20, 2022, 3:19:51 PM
    Author     : HP
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
 href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
 crossorigin="anonymous">
<link href="files login/insc.css" rel="stylesheet" type="text/css"/>
</head>

</head>
<body>
 <div class="container">
 
 <hr>
  <div class="row col-md-10 col-md-offset-3"> 
   
   <div class="card card-body">
   
    <h2>User Register Form</h2>
    <div class="col-md-8 col-md-offset-3">

     <form action="/InscriptionController" method="post">

      <div class="form-group">
       <label for="uname">Prénom:</label> <input type="text"
        class="form-control" id="uname" placeholder="Prénom"
        name="prenom" required>
      </div>

      <div class="form-group">
       <label for="uname">Nom:</label> <input type="text"
        class="form-control" id="uname" placeholder="Nom"
        name="nom" required>
      </div>
         
          <div class="form-group">
       <label for="uname">Adresse:</label> <input type="text"
        class="form-control" id="adresse" placeholder="Adresse"
        name="adresse" required>
      </div>
         
          <div class="form-group">
       <label for="uname">Téléphone:</label> <input type="text"
        class="form-control" id="telephone" placeholder="Téléphone"
        name="telephone" required>
      </div>

      <div class="form-group">
       <label for="uname">Email:</label> <input type="email"
        class="form-control" id="email" placeholder="Email"
        name="email" required>
      </div>

      <div class="form-group">
       <label for="uname">Password:</label> <input type="password"
        class="form-control" id="password" placeholder="Password"
        name="password" required>
      </div>

      <button type="submit" class="btn btn-primary">Submit</button>

     </form>
    </div>
   </div>
  </div>
 </div>
</body>
</html>
</html>