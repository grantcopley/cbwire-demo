/**
 * I am a cbwire component.
 */
component extends="cbwire.models.Component" {

	property name="planetService" inject="PlanetService";

	// Data properties
	variables.data = { "numberOfSatellites" : 0 };

	// Data from injected services need to be placed within onDIComplete().
	function onDIComplete() {
		variables.data[ "planets" ] = planetService.getPlanets();
	}

	// Computed properties
	variables.computed = {
		"planetCount" : function() {
			return arrayLen( variables.data.planets );
		},
		"planetsWithSatellites" : function( numberOfSatellites ) {
			return variables.data.planets.filter( function( planet ) {
				return planet.satellites >= numberOfSatellites;
			} );
		}
	}

	// Listeners
	variables.listeners = { "movieYearModified" : "tellEveryone" };

	// Actions
	function increaseSatellites() {
		variables.data.numberOfSatellites += 1;
	}

	function decreaseSatellites() {
		variables.data.numberOfSatellites -= 1;
	}

	function reset() {
		variables.data.numberOfSatellites = 0;
	}

	// render the cbwire view
	function renderIt() {
		return this.renderView( "wires/planetlist" );
	}

}
