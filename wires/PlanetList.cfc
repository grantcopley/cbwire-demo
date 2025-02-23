/**
 * I am a cbwire component.
 */
component extends="cbwire.models.Component" {

	property name="planetService" inject="PlanetService";

	// Data properties
	data = {
		"satelliteCount" : 0
	};

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

	// Other methods
	function planets() {
		return planetService.getPlanets();
	}

	function planetCount() computed {
		return arrayLen( planets() );
	}

	function planetsWithSatellites() computed {
		return planets().filter( function( planet ) {
			return planet.satellites >= data.satelliteCount;
		} );
	}
}
