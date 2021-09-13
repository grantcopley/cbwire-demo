<!---
    The outer <div></div> ensures that cbwire can bind onto your component's view. 
--->
<cfoutput>

<div class="mx-auto px-4">
    <div class="bg-gray-50 pt-12 sm:pt-16">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div class="flex justify-between max-w-4xl mx-auto text-center">
            <h2 class="text-3xl font-extrabold text-gray-900 sm:text-4xl">
              Milky Way Planets
            </h2>
            <div class="flex flex-grow justify-end">
                    <button wire:click="increaseSatellites" type="button" class="inline-flex items-center p-3 border border-transparent rounded-full shadow-sm text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                        <!-- Heroicon name: outline/plus-sm -->
                        <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" aria-hidden="true">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6v6m0 0v6m0-6h6m-6 0H6" />
                        </svg>
                    </button>
                    <button wire:click="decreaseSatellites" type="button" class="inline-flex items-center mx-1 p-3 border border-transparent rounded-full shadow-sm text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                        <!-- Heroicon name: outline/plus-sm -->
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" viewBox="0 0 20 20" fill="currentColor">
                        <path fill-rule="evenodd" d="M3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd" />
                        </svg>
                    </button>
            
                    <button wire:click="reset" type="button" class="inline-flex items-center px-4 py-2 border border-transparent text-base font-medium rounded-md shadow-sm text-white <cfif args.numberOfSatellites eq 0>bg-gray-600<cfelse>bg-indigo-600 hover:bg-indigo-700</cfif> focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                        Reset
                    </button>
            
            
            </div>
            


            </div>
        </div>
        <div class="mt-2 pb-6 bg-white">
          <div class="relative">
            <div class="absolute inset-0 h-1/2 bg-gray-50"></div>
            <div class="relative max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
              <div class="max-w-4xl mx-auto">
                <dl class="rounded-lg bg-white shadow-lg sm:grid sm:grid-cols-3">
                  <div class="flex flex-col border-b border-gray-100 p-6 text-center sm:border-0 sm:border-r">
                    <dt class="order-2 mt-2 text-lg leading-6 font-medium text-gray-500">
                      Total Planets
                    </dt>
                    <dd class="order-1 text-3xl font-extrabold text-gray-800">
                        #args.planetCount()#
                    </dd>
                  </div>
                  <div class="flex flex-col border-t border-b border-gray-100 p-6 text-center sm:border-0 sm:border-l sm:border-r">
                    <dt class="order-2 mt-2 text-lg leading-6 font-medium text-gray-500">
                        Matching Planets
                    </dt>
                    <dd class="order-1 text-3xl font-extrabold text-gray-800">
                        #arrayLen( args.planetsWithSatellites( args.numberOfSatellites ) )#
                    </dd>
                  </div>
                  <div class="flex flex-col border-t border-gray-100 p-6 text-center sm:border-0 sm:border-l">
                    <dt class="order-2 mt-2 text-lg leading-6 font-medium text-gray-500">
                      Known Satellites
                    </dt>
                    <dd class="order-1 text-3xl font-extrabold text-gray-800">
                        #args.numberOfSatellites#
                    </dd>
                  </div>
                </dl>
              </div>
            </div>
          </div>
        </div>
      </div>
    
    <div class="flex flex-wrap justify-items-stretch">
        <cfloop array="#args.planetsWithSatellites( args.numberOfSatellites )#" index="planet">
           <div class="mb-8 py-8 px-8 w-80 mx-auto bg-white rounded-xl shadow-xl space-y-2 sm:py-4 flex flex-none">
                <img class="block mx-auto h-16 rounded-full sm:mx-0 sm:flex-shrink-0" src="/includes/images/#planet.image#" alt="#planet.title#">
                <div class="text-center space-y-2 sm:text-left">
                    <div class="space-y-0.5">
                        <p class="text-lg text-black font-semibold">
                            #planet.title#
                        </p>
                        <p class="text-gray-500 font-medium">
                            #planet.satellites# satellites
                        </p>
                    </div>
                    #wire( "PlanetMiles", { "planet": planet } )#
                </div>
            </div>
        </cfloop>
    </div>
</div>
</cfoutput>
