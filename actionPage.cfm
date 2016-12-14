<cfif structKeyexists(form,'userSubmit')>
	<!--Server side data validation-->
	<!---generate missing data--->
	
		
	<cfquery datasource="petregister">
		INSERT INTO UserInfo
		(FirstName,LastName,LoginEmail,PetName,PetAge,PetInfo)
		VALUES
		("#form.FirstName#","#form.LastName#","#form.LoginEmail#","#form.PetName#",#form.PetAge#,"#form.PetInfo#")
	</cfquery>
</cfif>
