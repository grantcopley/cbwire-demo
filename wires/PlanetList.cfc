/**
 * I am a cbwire component.
 */
component extends="cbwire.models.Component" {

	property name="planetService" inject="PlanetService";

	// Data properties
	data = {
		"satelliteCount" : 0,
		"planets"        : function() {
			return planetService.getPlanets();
		}
	};

	// Computed properties
	variables.computed = {
		"planetCount" : function() {
			return arrayLen( data.planets );
		},
		"planetsWithSatellites" : function( data ) {
			return data.planets.filter( function( planet ) {
				return planet.satellites >= data.satelliteCount;
			} );
		}
	}

	// Actions
	function increaseSatellites() {
		data.satelliteCount += 1;
	}

	function decreaseSatellites() {
		data.satelliteCount -= 1;
	}

	function reset() {
		data.satelliteCount = 0;
	}
}
