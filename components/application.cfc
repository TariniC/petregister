<cfcomponent output="false">
	<cfset this.name="petregister" />
	<cfset this.applicationTimeout=createTimeSpan(0,2,0,0) />
	<cfset this.datasource="petregister" />
	<cfset this.customTagPaths=expandPath("/petregister/customTags") />
	
</cfcomponent>