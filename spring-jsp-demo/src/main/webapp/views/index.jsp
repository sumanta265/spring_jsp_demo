<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"
  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
	<html>

<head>
<style type="text/css">

</style>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
<link rel = "stylesheet"
   type = "text/css" href="<c:url value="/resources/css/style.css" />">
<script src="<c:url value="/resources/js/script.js" />"></script>


</head>


<body>





<div class="container  text-blue ">
<form action="handler" method="Post">

	 <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">FirstName</label>
      <input type="text" class="form-control" name="fname"id="inputEmail4">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">LastName</label>
      <input type="text" class="form-control" name="lname"id="inputPassword4">
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
      <input type="email" class="form-control"name="email" id="inputEmail4">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Password</label>
      <input type="password" class="form-control" name="pass"id="inputPassword4">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" id="inputAddress" name="address"placeholder="1234 Main St">
  </div>

  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" name="city" id="inputCity">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <select id="inputState" name="state" class="form-control">
        <option selected>Choose...</option>
        <option>WestBengal</option>
        <option>Delhi</option>
        <option>Maharastra</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" name="zip" id="inputZip">
    </div>
  </div>

  <div class="form-row">
  	<div class="form-group col-md-3">
   <fieldset class="form-group">
    
      <legend class="col-form-label col-sm-2 pt-0">Gender</legend>
      <div class="col-sm-10">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios1" value="male" checked>
          <label class="form-check-label" for="gridRadios1">
            Male
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios2" value="female">
          <label class="form-check-label" for="gridRadios2">
            Female
          </label>
        </div>
        
      </div>
    
  </fieldset>
</div>
<div class="form-group col-md-3">
	
<fieldset class="form-group">
    
      <legend class="col-form-label col-sm-2 pt-0">Language</legend>
      <div class="col-sm-10">
        <div class="form-check">
          <input class="form-check-input" type="checkbox" name="language" id="gridRadios1" value="hindi" checked>
          <label class="form-check-label" for="gridRadios1">
            Hindi
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="checkbox" name="language" id="gridRadios2" value="bengali">
          <label class="form-check-label" for="gridRadios2">
            Bengali
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="checkbox" name="language" id="gridRadios2" value="english">
          <label class="form-check-label" for="gridRadios2">
            English
          </label>
        </div>
      </div>
    
  </fieldset>
</div>

    <div class="form-group col-md-3">
 
      <label for="inputZip">PhoneNo</label>
      <input type="text" class="form-control" name="phno"id="inputZip">
    </div>	


    <div class="form-group col-md-3"> <!-- Date input -->
        <label class="control-label" for="date">Date</label>
        <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>
      </div>
</div>


  <div class="align-center">
  <button type="submit" class="btn btn-danger">Register</button>
</div>

</form>
</div>

<img height="100" width="200"  src="<c:url value="/resources/image/hello.jpg" />">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<script>
    $(document).ready(function(){
      var date_input=$('input[name="date"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
</script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

</body>
</html>