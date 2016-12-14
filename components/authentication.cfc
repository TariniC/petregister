<cfcomponent output="false">
	<!--validate user method--->
	<cffunction name="validateUSer" access="public" output="false" returntype="array">
		<cfargument name="userEmail" type="string" required="true" />
		<cfargument name="userPassword" type="string" required="true" />

		<cfset var aErrorMessages=ArrayNew(1) />
		<!---Validate the eMail--->
		<cfif NOT isValid("email","arguments.userEmail")>
		<cfset arrayAppend(aErrorMessages,"Please provide a valid email address") />
		</cfif>
		<cfif arguments.userPassword EQ "">
		<cfset arrayAppend(aErrorMessages,"Please provide a valid password") />	
	    </cfif>
	    <cffunction name="doLogin" access="public" output="false" returntype="boolean">
	    <cfargument name="userEmail" type="string" required="true" />
		<cfargument name="userPassword" type="string" required="true" />

		<!--- Create isUserLoggedIn variable--->
		<cfset var isUserLoggedIn=false>
		<cfquery name="rsLoginUser">
			
		</cfquery>
	<!--- Get the user data from the database--->
	<!--- check if the query returns one and only one user--->
	<!---log the user in--->
	<!--- save user data in the session scope--->
	<!---change the isUserLoggedIn variable to true--->
		<!---Return the isUserLoggedIn vairable--->

	    </cffunction>
		<cfreturn />
		<cffunction name="doLogout" access="public" output="false" returntype="void">
		</cffunction>

</cfcomponent>