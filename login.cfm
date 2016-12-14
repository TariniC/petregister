<!----The form processing script starts here---->


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/ >
	<link href="home.css" rel="stylesheet" type="text/css"/>
	<title>Welcome Petregisterees!</title>

</head>


<body>
<div class="wrapper">
<h1 style="color:green;"> Registered your pet? Sign in here! </h1>
<div class="formdiv">
<form style="background-color:orange;" id="from_newUser" method="post" action="actionPage.cfm">
	<fieldset>
	<label for="FirstName">First Name</label>
	<input type="text" name="FirstName" required="true" message="Please enter your first name"><br>
	<label for="LastName">Last Name</label>
	<input type="text" name="LastName" required="true" ><br>
	<label for="PetName">Pet's name</label>
	<input type="text" name="PetName" required="true"><br>
	<label for="PetAge">Pet's age</label>
	<input type="number" name="PetAge" required="true"><br>
	<label for="PetInfo">Pet's Description</label>
	<input type="text" name="PetInfo" required="true"><br>
   	<label for="LoginEmail">Login Email</label>
	<input type="text" name="LoginEmail" required="true" validate="eMail" message="please enter a valid email address"><br>
	<label for="Password">Password</label>
	<input type="text" name="Password" required="true"><br>
	<input type="submit" name="userSubmit" value="submit"><br>
		</fieldset>
		</form>
<p> Are you registered?<a href=""> Login here</a></p>

</div>

</body>
</html>