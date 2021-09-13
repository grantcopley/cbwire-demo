<cfoutput>
<div>
    <div wire:poll.5000ms>
        <cfif structKeyExists( args.planet, "milesFromEarth" )>
            #args.planet.milesFromEarth# mil mi
            #now()#
        </cfif>

    </div>
</div>
</cfoutput>