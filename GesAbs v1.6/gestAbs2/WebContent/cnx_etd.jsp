<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>   
          <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
     <link rel="stylesheet" href="StyleIndex.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
  
<title>Etudiant Login Page </title>
</head>

<body>

<c:choose>
<c:when test="${not empty sessionScope.admin}"><c:redirect url="Admin/espaceEtd.jsp"/></c:when>
</c:choose>
<!-- <form action="cnxAdmin" method="POST">
	<input type="text" placeholder="login" name="login"><br>
	<input type="password" placeholder="password" name="psw"><br>
	<input type="submit" value="connexion">
</form> -->     

<nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" style="color:#fff;">Connexion Etudiant</a>

</nav>


 <div class="imgEtd">
   <img alt="" src="imgs/student.png">
   
   </div>
	
	<div class="rightform">
	<div class="imgform">
	<img alt="" src="imgs/etd.png">
	</div>
	<form class="mesForm" action="cnxEtd" method="POST">
            <!-- Email input -->
            <div class="form-outline mb-4">

              <input type="text" id="login" class="form-control" placeholder="login" required name="login" />
              
            </div>
          
            <!-- Password input -->
            <div class="form-outline mb-4">
              <input type="password" id="pw" class="form-control" placeholder="password"   required name="psw"/>
              
            </div>
             <div class="form-outline mb-4">
           <b style="color:red">${requestScope.msg}</b>           
            </div>
            
            <button type="submit" class="btn btn-primary btn-block"  >Sign in</button>
          </form>
	
	</div>

   



</body>
</html>