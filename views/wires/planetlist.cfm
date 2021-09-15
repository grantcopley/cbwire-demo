<!---
    The outer <div></div> ensures that cbwire can bind onto your component's view. 
--->
<cfoutput>
<div class="mx-auto px-4">
    <div class="pt-12 sm:pt-16">
        <div class="max-w-6xl mx-auto mb-12">
            <div class="flex justify-between mx-auto flex-wrap">
                <div>
                    <h2 class="text-3xl font-extrabold text-gray-900 sm:text-4xl flex-none">
                        Milky Way Planets
                    </h2>
                    <div class="text-sm">Powered by <a href="https://cbwire.ortusbooks.com" class="text-indigo-600 hover:text-indigo-700">cbwire</a></div>
                </div>
                <div class="flex justify-between items-center">
                    <div class="mr-5">Filter: <span class="font-bold">#args.satelliteCount#</span> or more Satellites</div>
                    <button wire:click="increaseSatellites" type="button" class="mr-1 inline-flex items-center p-3 border border-transparent rounded-full shadow-sm text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                        <!-- Heroicon name: outline/plus-sm -->
                        <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewbox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6"/>
                        </svg>
                    </button>
                    <button wire:click="decreaseSatellites" type="button" class="mr-5 inline-flex items-center mx-1 p-3 border border-transparent rounded-full shadow-sm text-white <cfif args.satelliteCount eq 0>bg-gray-600<cfelse>bg-indigo-600 hover:bg-indigo-700</cfif> focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" <cfif args.satelliteCount eq 0>disabled="disabled"</cfif>>
                        <!-- Heroicon name: outline/plus-sm -->
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" viewbox="0 0 20 20" fill="currentColor">
                            <path fill-rule="evenodd" d="M3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"/>
                        </svg>
                    </button>
                    <button wire:click="reset" type="button" class="inline-flex items-center px-4 py-2 border border-transparent text-base font-medium rounded-md shadow-sm text-white <cfif args.satelliteCount eq 0>bg-gray-600<cfelse>bg-indigo-600 hover:bg-indigo-700</cfif> focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" <cfif args.satelliteCount eq 0>disabled="disabled"</cfif>>
                        Reset
                    </button>

                </div>
            </div>
        </div>
        <div class="max-w-6xl mx-auto flex flex-wrap">
            <cfloop array="#args.planetsWithSatellites( args.satelliteCount )#" index="planet">
                <div class="mb-8 py-8 w-full sm:w-1/3 md:w-1/4 bg-white rounded-xl shadow-xl space-y-2 sm:py-4 flex" wire:key="#planet.title#">
                    <img class="block h-16 rounded-full mx-0 sm:flex-shrink-0" src="/includes/images/#planet.image#" alt="#planet.title#">
                    <div class="space-y-2 text-left">
                        <div class="space-y-0.5">
                            <p class="text-lg text-black font-semibold">
                                #planet.title#
                            </p>
                            <p class="text-gray-500 font-medium">
                                #planet.satellites# satellites
                            </p>
                        </div>
                    </div>
                </div>
            </cfloop>
        </div>
      </div>
</cfoutput>
