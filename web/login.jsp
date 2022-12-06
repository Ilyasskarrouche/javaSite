<%-- 
    Document   : login1.jsp
    Created on : Nov 25, 2022, 1:40:33 PM
    Author     : ELMEHDI KAMIS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
<title> Login </title>
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link href="files login/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <form method="post" action="/LoginController">
    <img src ="files login/avatar.svg">
     
   
     
    <div class ="input-container">
        <i class ="fa fa-envelope icon"></i>
        <input class ="input-field" type ="text" name="email" placeholder ="Email">
    </div>
     
    <div class ="input-container">
        <i class ="fa fa-key icon"></i>
        <input class ="input-field" type ="password" name="password" placeholder ="Password">
    </div> 
    <button type ="submit" class ="btn"> LogIn</button> 
    <div class="text-center p-t-90">
<a class="txt1" href="#">
Forgot Password?
</a>
</div>
    
</form>
</body>
</html>
