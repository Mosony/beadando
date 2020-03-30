<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="hu">
<head>
	<title>Mosony Ákos beadandó</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">

</head>


<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.html"> <img src="img/logo.png" width="60" height="60" class="d-inline-block align-top" alt=""></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
	<ul class="navbar-nav">
	  <li class="nav-item ">
		<a class="nav-link" href="index.html">Főoldal <span class="sr-only">(current)</span></a>
	  </li>
	  <li class="nav-item active">
		<a class="nav-link" href="UgyfelekControllerServlet">Ügyfelek</a>
	  </li>
	  <li class="nav-item">
		<a class="nav-link" href="#">Járművek</a>
	  </li>
	  <li class="nav-item">
		<a class="nav-link disabled" href="#">Kölcsönzés</a>
	  </li>
	</ul>
  </div>
</nav>


<div class="jumbotron jumbotron-fluid bg-dark text-white">
	<div class="container-fluid wrapper">
		<h1 class="display-4">Ügyfél módosítása!</h1>		
	</div>
</div>

<form action="UgyfelekControllerServlet" method="GET">

	<input type="hidden" name="command" value="UPDATE" />
	
	<input type="hidden" name="ugyfelekId" value="${THE_UGYFELEK.id}" />
	
	
	<div class="kozep">
			<input class="form-control form-control-lg" type="text" name="igazolvanySzam" placeholder="Igazolvány száma" value="${THE_UGYFELEK.igazolvanySzam}" />
			<input class="form-control form-control-lg" type="text" name="vezetekNev" placeholder="Vezetéknév" value="${THE_UGYFELEK.vezetekNev}" />
			<input class="form-control form-control-lg" type="text" name="keresztNev" placeholder="Keresztnév" value="${THE_UGYFELEK.keresztNev}" />
			<input class="form-control form-control-lg" type="text" name="telefonSzam" placeholder="Telefonszám" value="${THE_UGYFELEK.telefonSzam}"/>
			<input class="form-control form-control-lg" type="text" name="email" placeholder="Email" value="${THE_UGYFELEK.email}"/>
			<input type="Submit" value="mentés" class="btn btn-warning"/>
	</div>
	
</form>


<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>