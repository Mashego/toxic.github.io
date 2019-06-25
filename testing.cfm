<cfinclude template="path/to/libraries/testing.cfm" />

<cfset fullName = getFullName(firstName="Emily", lastName="Christiansen") />

<cfoutput>
    Hello, #fullName#!
</cfoutput>