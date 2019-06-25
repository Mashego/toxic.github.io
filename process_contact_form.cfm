
<cfoutput>
   <cfdump var="#form#">

   <cfquery name="contacttableResults" datasource="dbDataPractice">
    INSERT INTO contacttable (email, subject, message)
	VALUES (
		<cfqueryparam value="#form.email#">,
		<cfqueryparam value="#form.name#">,
		<cfqueryparam value="#form.message#">
		)
</cfquery>
</cfoutput>
<cfmail from="#form.email#" to="thabiso@vontae.co.za" subject="#form.name#" cc="thsmashego@gmail.com">
	#form.message#
</cfmail>

<cfheader statuscode="301" statustext="Moved permanently">
<cflocation url="http://localhost:8500/Unknown%20Existence/contact.cfm">