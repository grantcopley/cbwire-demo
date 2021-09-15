/**
 * I am a cbwire component.
 */
component extends="cbwire.models.Component" {

	property name="planetService" inject="PlanetService";

	// Data properties
	variables.data = { "planet" : {} };

	// Computed properties
	variables.computed = {
		"currentMiles" : function() {
			return 1;
		}
	}

	function mount() {
		variables.data[ "planet" ] = arguments.parameters.planet;
	}

	function renderIt() {
		return this.renderView( "wires/planetmiles" );
	}

}
