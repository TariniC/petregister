<!--form processing begins here--->
<cfapplication name="petregister" sessionmanagement="yes">
	
<cfif structKeyexists(form,'userSubmit')>
<!---create an instance of the authentication service---><cfset authenticationService=createObject("component",'petregister.components.authenticationService') />
<!---serverside data validation--->
<cfset aErrorMessages=authenticationService.validateUser("form.LoginEmail","form.Password") />
<cfif arrayIsEmpty(aErrorMessages)>
	<!-- proceed with login--->
	<cfset isUserLoggedIn=authenticationService.doLogin("form.LoginEmail","form.Password") />
</cfif>
</cfif>
</cfapplication>

   
   <!--form processing begins here-->
   <cfform id="loginpetregister" preservedata="true">
	<legend class="header" style="background-color:yellow; font-size:32px;"> Login</legend>
	<cfif structKeyExists(variables,"aErrorMessages")and not ArrayIsEmpty(aErrorMessages)>
		<cfoutput>
			<cfloop array="aErrorMessages" item="message">
				<p>#message#</p>
			</cfloop>
		</cfoutput>
		
	</cfif>

	<cfif structKeyExists (variables,"isUserLoggedIn") and isUserLoggedIn EQ false >
		<p> User not found, please try again. </p>
	</cfif>
	<cfif structKeyExists(session,"stLoggedInUser")>
	<p> <cfoutput>Welcome #session.stLoggedInUser.userFirstName# #session.stLoggedInUser.userLastName#!"</cfoutput></p>	
         <p><a href="/petregister/home.cfm">My Home Page</p>
			<cfelse>
			<dl>
         <dt><label for="LoginEmail">Login Email</label></dt>
	<dd><cfinput type="text" name="LoginEmail"  id="LoginEmail"required="true" validate="eMail" message="please enter a valid email address" validateat="onSubmit"><br></dd>
	<dt><label for="Password">Password</label></dt>
	<dd><cfinput type="text" name="Password" id="Password"validateat="onSubmit"required="true"><br></dd>
	</dl>
	<cfinput type="submit" name="userSubmit" id="userSubmit" value="submit"><br>
	</cfif>
</cfform>	
	


