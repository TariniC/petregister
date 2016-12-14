<!----The form processing script starts here---->


<!DOCTYPE html>
<html>
<head>

<head>


<body>

<h1> this is my pet register </h1>
<form id="from_newUser" method="post" action="actionPage.cfm">
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
 	


</body>
</html>