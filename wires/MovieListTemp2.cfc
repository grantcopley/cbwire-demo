/**
 * I am a MovieList cbwire component.
 */
component extends="cbwire.models.Component" {

	// WireBox Injection
	property name="movieService" inject="MovieService";

	// Data properties
	variables.data = {
		"movies" : function() {
			return movieService.getMovies();
		}
	};

	// Rendering
	function renderIt() {
		return arrayLen( variables.data.movies ) & " Space Movies!";
	}

}
