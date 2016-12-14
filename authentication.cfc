<cfcomponent output="false">
	<!--validate user method--->
	<cffunction name="validateUser" access="public" output="false" returntype="array">
		<cfargument name="userEmail" type="string" required="true" />
		<cfargument name="userPassword" type="string" required="true" />

		<cfset var aErrorMessages=ArrayNew(1) />
		<!---Validate the eMail--->
		<cfif NOT isValid('email', arguments.userEmail)>
		<cfset arrayAppend(aErrorMessages, 'Please provide a valid email address') />
		</cfif> 
		<cfif arguments.userPassword EQ "">
		<cfset arrayAppend(aErrorMessages, 'Please provide a valid Password') />	
		</cfif>
        <cffunction name="doLogin" access="public" output="false" returntype="boolean">
	    <cfargument name="userEmail" type="string" required="true" />
		<cfargument name="userPassword" type="string" required="true" />

		<!--- Create isUserLoggedIn variable--->
		<cfset var isUserLoggedIn=false>
		<!--- Get the user data from the database--->
		<cfquery name="rsLoginUser" datasource="petregister">
		SELECT FirstName, LastName, idUserInfo,LoginEmail,Password
		FROM UserInfo
		WHERE LoginEmail="arguments.userEmail" and Password="arguments.userPassword"
		</cfquery>
	<!--- check if the query returns one and only one user--->
	<cfif rsLoginUser.recordcount EQ "1">
		
	
	<!---log the user in--->
	<cflogin>
		<cfloginuser name= "#rsLoginUser.FirstName# #rsLoginUser.LastName#" password= "#rsLoginUser.Password#" />

	</cflogin>
	<!--- save user data in the session scope--->
	<cfset session.stLoggedInUser{userFirstName="rsLoginUser.FirstName", userLastName="rsLoginUser.LastName", user.id="rsLoginUser.idUserInfo"};
	<!---change the isUserLoggedIn variable to true--->
	cfset var isUserLoggedIn= true>
	</cfif>
		<!---Return the isUserLoggedIn vairable--->
 		<cfreturn isUserLoggedIn />
	    </cffunction>
		
		<cffunction name="doLogout" access="public" output="false" returntype="void">
			<!---delete user data from coldfusion--->
			<cfset structDelete(session,"stLoggedInUser") />
			<!---logout the user--->
			<cflogout />
		</cffunction>

</cfcomponent>