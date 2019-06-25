
<cfquery name="contacttableResults" datasource="dbDataPractice"> 
    SELECT * FROM contacttable 
</cfquery>
<cfloop query = "contacttableResults"> 
    <cfoutput>#email# #subject# #message#</cfoutput><br>
</cfloop>

